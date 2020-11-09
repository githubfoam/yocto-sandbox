IMAGE := alpine/fio
APP:="app/deploy-openesb.sh"

deploy-yocto-xenial:
	bash deploy-yocto-xenial.sh

building-using-yocto:
	bash building-using-yocto.sh

building-out-of-yocto:
	bash building-out-of-yocto.sh

deploy-yocto-latest-toolchain:
	bash deploy-yocto-latest-toolchain.sh

deploy-yocto-latest-sdk:
	bash deploy-yocto-latest-sdk.sh

deploy-yocto-toolchain:
	bash deploy-yocto-toolchain.sh

deploy-yocto-sdk:
	bash deploy-yocto-sdk.sh
	
push-image:
	docker push $(IMAGE)
.PHONY: deploy-openesb deploy-dashboard push-image
