# Append the base 2014.07 u-boot mainline recipe to AUTOREV for now so that
# we can test the latest mainline

PR_append = "-arago4"

UBOOT_LOCALVERSION = "-g${@d.getVar('SRCPV', True).partition('+')[2][0:7]}"

SRCREV = "${AUTOREV}"

# AM57x EVM is currently on a seperate git tree/branch.
# Once the software has been integrated to the u-boot-ti-staging
# repository these lines can be removed.

OLD_BRANCH := "${BRANCH}"
SRC_URI_am57xx-evm := "${@oe_filter_out('git://git.ti.com/ti-u-boot/ti-u-boot.git;protocol=git;branch=${OLD_BRANCH}','${SRC_URI}', d)}"

BRANCH_am57xx-evm = "beaglex15"

SRC_URI_am57xx-evm += "git://github.com/felipebalbi/u-boot.git;protocol=git;branch=${BRANCH}"
