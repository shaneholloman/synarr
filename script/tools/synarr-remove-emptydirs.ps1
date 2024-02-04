function Get-DirectorySize {
    param ([string]$Path)
    (Get-ChildItem -Path $Path -Recurse -File | Measure-Object -Property Length -Sum).Sum
}

function Remove-SmallDirectories {
    [CmdletBinding(SupportsShouldProcess)]
    param (
        [int]$SizeLimit = 2MB,
        [bool]$DryRun = $false
    )
    $StartingPath = Read-Host -Prompt "Enter the path of the directory to start the recursive search for dirs 2mb and smaller"
    Get-ChildItem -Path $StartingPath -Directory -Recurse | ForEach-Object {
        $dirSize = Get-DirectorySize -Path $_.FullName
        if ($dirSize -lt $SizeLimit) {
            if ($DryRun) {
                Write-Output "Dry-run: Would delete directory: $($_.FullName)"
            } else {
                if ($PSCmdlet.ShouldProcess($_.FullName, "Remove directory")) {
                    Remove-Item $_.FullName -Recurse -Force
                    Write-Output "Deleted directory: $($_.FullName)"
                }
            }
        }
    }
}

# Usage
# For dry-run, set DryRun parameter to $true
Remove-SmallDirectories -DryRun $false
