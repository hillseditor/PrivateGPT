
# PrivateGPT on WSL with GPU support

PrivateGPT is a production-ready AI project that allows you to ask questions about your documents using the power of Large Language Models (LLMs), even in scenarios without an Internet connection. 100% private, no data leaves your execution environment at any point.


## Acknowledgements

 - [Build from this tutorial - Emilien Lancelot](https://dev.to/docteurrs/installing-privategpt-on-wsl-with-gpu-support-1m2a)



## Backup WSL first

Backup your WSL, for rollback purposes 

```cmd
  # export WSL
wsl --shutdown
set WSLdistro=<DRISTRO>_%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.tar
echo %WSLdistro%
wsl --export <DRISTRO> C:\wsl\backup\ubuntu\%WSLdistro%
```

## restore WSL from backup
wsl --shutdown
wsl --uninstall UbuntuHES
wsl --unregister UbuntuHES
wsl --import UbuntuHES C:\wsl\install "C:\wsl\backup\ubuntu\%WSLdistro%"
wsl --update

## Replacement requests
<DRISTRO> = your distro name
<'C:\wsl\backup\ubuntu\'> = The location of your choice

## Chnage Directory to you build directory in your WSL
## and Clone this repository then run 
./.script/.setup
