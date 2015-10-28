info:
	@echo "make clean        - remove all automatically created files"
	@echo "make builddeb     - build .deb file locally"
	
#VERSION=1.3~dev5
VERSION=2.7
SRCDIRS=deploy debian conffiles
SRCFILES=Makefile

clean:
	rm -fr DEBUILD
	rm -f meta/*~


builddeb:
	make clean
	mkdir -p DEBUILD/privacyidea-ucs-pam.org
	cp ../privacyidea/authmodules/pam_python/privacyidea_pam.py deploy/ || true
	cp -r ${SRCDIRS} ${SRCFILES} DEBUILD/privacyidea-ucs-pam.org || true
	# We need to touch this, so that our config files 
	# are written to /etc
	cp LICENSE DEBUILD/privacyidea-ucs-pam.org/debian/copyright
	(cd DEBUILD; tar -zcf privacyidea-ucs-pam_${VERSION}.orig.tar.gz --exclude=privacyidea.org/debian privacyidea-ucs-pam.org)
	################# Build
	(cd DEBUILD/privacyidea-ucs-pam.org; debuild --no-lintian)

