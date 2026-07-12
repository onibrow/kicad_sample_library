#!/bin/bash

name="pie_demo_kicad_library"
output_dir="current_release"
lib_files="resources/ library/footprints library/3dmodels library/symbols"


echo "Current Version is: $(jq '.versions[0].version' ${output_dir}/metadata.json)"
echo -n "Name the new version: " 
read VERSION

# make output dir
mkdir -p ${output_dir}/footprints ${output_dir}/3dmodels ${output_dir}/resources

# delete old release
rm -rf ${output_dir}/*

# Copy metadata
sed -e "s/CURRENT_VERSION/${VERSION}/" metadata_template.json > ${output_dir}/metadata.json

# Copy lib files
cp -r ${lib_files} ${output_dir}

# Pack
cd ${output_dir}
zip -qr ./${name}.zip ./footprints ./3dmodels ./resources ./metadata.json

# Return to root
cd ..
