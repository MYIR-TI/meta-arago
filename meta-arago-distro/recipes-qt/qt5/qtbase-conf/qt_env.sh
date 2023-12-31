#!/bin/sh

### QT Environment Variables ###
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
export QT_QPA_EGLFS_KMS_CONFIG=/etc/qt5/eglfs_kms_cfg.json
export QT_QPA_EGLFS_INTEGRATION=eglfs_kms
export QT_QPA_EGLFS_ALWAYS_SET_MODE=1
export QT_WAYLAND_SHELL_INTEGRATION=xdg-shell

# SECCOMP-BPF Sandbox does not work due to unexpected FUTEX_UNLOCK_PI call
# from the pthread implementation. Disable this feature temporarily until
# those issues are resolved.
export QTWEBENGINE_CHROMIUM_FLAGS="--disable-seccomp-filter-sandbox"

export QTWEBENGINE_DISABLE_SANDBOX=1
#export QT_QPA_PLATFORM=eglfs
