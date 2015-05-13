Enable OTP authentication:

# ucr set privacyidea/pam/enable=1

Disable OTP authentication:

# ucr unset privacyidea/pam/enable

Note: At this point, authenticating with pam_unix and krb is still possible.
