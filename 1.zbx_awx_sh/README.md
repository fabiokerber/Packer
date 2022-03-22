# Packer no Azure

Checar versão
```
C:\packer\packer.exe -version
```
........

Criar resource group para armazenar as imagens
```
az group create -l brazilsouth -n rg-img-br-sh
```

Listar imagens disponíveis no Azure
```
az vm image list --location brazilsouth --publisher Canonical --offer UbuntuServer --all --output table
az vm image list --location brazilsouth --publisher RedHat --offer RHEL --all --output table
```

Provisionar
```
packer build awx.json
```

<kbd>
    <img src="https://github.com/fabiokerber/GitLab-CI/blob/main/img/100220221108.jpg">
</kbd>
<br />
<br />