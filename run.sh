# dont forget to run usr/src/pkg; dmake install

zfs destroy -r rpool/kayak_image/r151044
zfs destroy -r rpool/kayak_image/miniroot
rm -r /kayak_image/*
cd ~admin/github/kayak/
gmake PKGURL=/home/admin/github/illumos-omnios/packages/i386/nightly/repo.redist PREBUILT_ILLUMOS=/home/admin/github/illumos-omnios BUILDSEND=rpool/kayak_image  install-iso
