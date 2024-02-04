# Define the directory containing your media library
$LIBRARY_PATH = "D:\media\movies "

# Get all MKV files in the library
$files = Get-ChildItem -Path $LIBRARY_PATH -Filter *.mkv -Recurse -File

# Loop through each file
foreach ($file in $files) {
    # Remove track names
    & mkvpropedit $file.FullName `
    --edit track:v1 --delete name `
    --edit track:a1 --delete name `
    --edit track:s1 --delete name

    Write-Output "Removed track names from $($file.FullName)"
}
