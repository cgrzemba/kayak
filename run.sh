# dont forget to run usr/src/pkg; dmake install

zfs destroy -r rpool/kayak_image/r151046
zfs destroy -r rpool/kayak_image/miniroot
rm -r /kayak_image/*
cd ~admin/github/kayak/
gmake PKGURL=/lhome/admin/github/illumos-omnios/packages/i386/nightly/repo.redist PREBUILT_ILLUMOS=/lhome/admin/github/illumos-omnios BUILDSEND=rpool/kayak_image  install-iso
