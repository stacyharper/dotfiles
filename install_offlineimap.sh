#/bin/bash

accounts="contact_personal contact_stacyharper contact_misterbanal ubitransport"
for account in $accounts
do
	systemctl --user start "offlineimap@$account.service"
	systemctl --user enable "offlineimap@$account.service"
done

