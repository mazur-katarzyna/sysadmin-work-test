cd terraform \
&& terraform init \
&& cd ../packer \
&& ./export.sh \
&& packer build -force ./ubuntu18.04.json \
&& cd ../terraform \
&& yes yes | terraform destroy \
&& yes yes | terraform apply
