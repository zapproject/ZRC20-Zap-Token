shopt -s nullglob
for f in cairo-project/*.cairo; do
    echo "compile $f"
    starknet-compile $f --output $f.output.json --abi $f.abi.json
    hash=$(/bin/starkli class-hash $f.output.json)
    filename=$hash.starknet.output.json
    echo $filename
    mv $f.output.json cairo-project/$filename
done