USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
TITLE=jmp_13_license
REVERSE_DOMAIN=com.example
PAYLOAD=\
	pack-JMP_13_per\
	pack-script-postinstall

l_JMP_13: l_Library_Application_Support
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/JMP
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/JMP/13

pack-JMP_13_per: l_JMP_13
	@sudo ${CP} ./JMP.per ${WORK_D}/Library/Application\ Support/JMP/13/JMP.per
	@sudo chmod 755 ${WORK_D}/Library/Application\ Support/JMP/13/JMP.per
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support/JMP/13/JMP.per

munkiimport: dmg
		munkiimport \
--nointeractive \
--subdirectory apps \
--name "${TITLE}" \
--displayname "JMP Pro 13 license" \
--description "License file for JMP Pro 13." \
--category "Productivity" \
--developer "SAS Institute Inc." \
--icon_name "JMP Pro 13.png" \
--minimum_os_version "10.8.0" \
--update_for="JMP Pro 13" \
--unattended_install \
--unattended_uninstall \
"${DMG_NAME}"