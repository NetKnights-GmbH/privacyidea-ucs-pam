Enable OTP authentication:

    # ucr set privacyidea/pam/enable=1

Disable OTP authentication:

    # ucr unset privacyidea/pam/enable

Note: At this point, authenticating with pam_unix and krb is still possible.

To add 2FA to the Univention Management Console, see this German(!) blog entry:
https://netknights.it/zwei-faktor-authentisierung-an-der-univention-management-console/
