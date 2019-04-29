
CXN_PARAMS=''
[ ! -z "$DB_CXN" ] && CXN_PARAMS="$CXN_PARAMS -dbconnection $DB_CXN"
[ ! -z "$DB_USR" ] && CXN_PARAMS="$CXN_PARAMS -dbuser $DB_USR"
[ ! -z "$DB_PASS" ] && CXN_PARAMS="$CXN_PARAMS -dbpassword $DB_PASS"
[ ! -z "$DB_SCHEMA" ] && CXN_PARAMS="$CXN_PARAMS -dbschema $DB_SCHEMA"
[ ! -z "$SF_USR" ] && CXN_PARAMS="$CXN_PARAMS -sfuser $SF_USR"
[ ! -z "$SF_TOKEN" ] && CXN_PARAMS="$CXN_PARAMS -sftoken $SF_TOKEN"
[ ! -z "$SF_PASS" ] && CXN_PARAMS="$CXN_PARAMS -sfpassword $SF_PASS"
[ ! -z "$SF_TYPE" ] && CXN_PARAMS="$CXN_PARAMS -sftype $SF_TYPE"

sh CopyStorm/CopyStorm.sh $CXN_PARAMS -run /config.copyStorm
