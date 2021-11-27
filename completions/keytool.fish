###############################
# toplevel commands           #
###############################
set -l keytool_commands "\
   -certreq \
   -changealias \
   -delete \
   -exportcert \
   -gencert \
   -genkeypair \
   -genseckey \
   -importcert \
   -importkeystore \
   -importpass \
   -keypasswd \
   -list \
   -printcert \
   -printcertreq \
   -printcrl \
   -storepasswd"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -certreq \
   -d "Generates a certificate request"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -changealias \
   -d "Changes an entry's alias"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -delete \
   -d "Deletes an entry"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -exportcert \
   -d "Exports certificate"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -genkeypair \
   -d "Generates a key pair"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -genseckey \
   -d "Generates a secret key"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -gencert \
   -d "Generates certificate from a certificate request"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -importcert \
   -d "Imports a certificate or a certificate chain"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -importpass \
   -d "Imports a password"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -importkeystore \
   -d "Imports one or all entries from another keystore"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -keypasswd \
   -d "Changes the key password of an entry"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -list \
   -d "Lists entries in a keystore"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -printcert \
   -d "Prints the content of a certificate"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -printcertreq \
   -d "Prints the content of a certificate request"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -printcrl \
   -d "Prints the content of a CRL file"

complete -f -c keytool \
   -n "not __fish_seen_subcommand_from $keytool_commands" \
   -a -storepasswd \
   -d "Changes the store password of a keystore"

###############################
# shared subcommand functions #
###############################
function  __fish_keytool_subcommand_addprovider
   echo -addprovider\t"add security provider by name (e.g. SunPKCS11)"
end

function __fish_keytool_subcommand_alias
   echo -alias\t"name of the entry to process"
end

#keytool error: java.lang.IllegalArgumentException:
#The -keystore or -storetype option cannot be used with the -cacerts option
function __fish_keytool_subcommand_cacerts
   echo -cacerts\t"access the cacerts keystore"
end

function __fish_keytool_subcommand_dname
   echo -dname\t"distinguished name"
end

function __fish_keytool_subcommand_ext
   echo -ext\t"X.509 extension"
end

function __fish_keytool_subcommand_file
   echo -file\t"output file name"
end

function __fish_keytool_subcommand_keypass
   echo -keypass\t"key password"
end

# NOTE can't be used with -cacerts
function __fish_keytool_subcommand_keystore
   echo -keystore\t"keystore name"
end

# TODO can this be used with protected
function __fish_keytool_subcommand_protected
   echo -protected\t"password through protected mechanism"
end

# TODO add in -providerarg another layer down
function  __fish_keytool_subcommand_providerclass
   echo -providerclass\t"add security provider by fully-qualified class name"
end

function __fish_keytool_subcommand_providername
   echo -providername\t"provider name"
end

function __fish_keytool_subcommand_providerpath
   echo -providerpath\t"provider classpath"
end

# TODO are there a limited alg types that we could query for?
function __fish_keytool_subcommand_sigalg
   echo -sigalg\t"signature algorithm name"
end

function __fish_keytool_subcommand_storepass
   echo -storepass\t"keystore password"
end

#keytool error: java.lang.IllegalArgumentException:
#The -keystore or -storetype option cannot be used with the -cacerts option
function __fish_keytool_subcommand_storetype
   echo -storetype\t"keystore type"
end

function  __fish_keytool_subcommand_v
   echo -v\t"verbose output"
end

function __fish_keytool_subcommand_destalias
   echo -v\t"destination alias"
end


###############################
# -certreq subcommands        #
###############################
set -l keytool_certreq_subcommands "\
   -addprovider \
   -alias \
   -dname \
   -ext \
   -file \
   -keypass \
   -keystore \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -sigalg \
   -storepass \
   -storetype \
   -v" 

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_addprovider)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_alias)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_dname)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_ext)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_file)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_keypass)"

complete -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_keystore)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_protected)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_providerclass)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_providername)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_providerpath)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_sigalg)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_storepass)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq; and not __fish_seen_subcommand_from -cacerts" \
   -a "(__fish_keytool_subcommand_storetype)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -certreq" \
   -a "(__fish_keytool_subcommand_v)"


###############################
# -changealias subcommands    #
###############################
set -l keytool_changealias_subcommands "\
   -addprovider \
   -alias \
   -cacerts \
   -destalias \
   -keypass \
   -keystore \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -storepass \
   -storetype \
   -v"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_addprovider)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_alias)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias; and not __fish_seen_subcommand_from -storetype -keytstore" \
   -a "(__fish_keytool_subcommand_cacerts)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_destalias)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_keypass)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias; and not __fish_seen_subcommand_from -cacerts" \
   -a "(__fish_keytool_subcommand_keystore)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_protected)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_providerclass)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_providername)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_providerpath)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_storepass)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias; and not __fish_seen_subcommand_from -cacerts" \
   -a "(__fish_keytool_subcommand_storetype)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -changealias" \
   -a "(__fish_keytool_subcommand_v)"

set -l keytool_delete_subcommands "\
   -addprovider \
   -alias \
   -cacerts \
   -keystore \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -storepass \
   -storetype \
   -v" 

set -l keytool_exportcert_subcommands "\
   -addprovider \
   -alias \
   -cacerts \
   -keystore \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -rfc \
   -storepass \
   -storetype \
   -v"

set -l keytool_genkeypair_subcommands "\
   -addprovider \
   -alias \
   -destalias \
   -dname \
   -ext \
   -groupname \
   -keyalg \
   -keypass \
   -keysize \
   -keystore \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -sigalg \
   -startdate \
   -storepass \
   -storetype \
   -v \
   -validity"

set -l keytool_genseckey_subcommands "\
   -addprovider \
   -alias \
   -keyalg \
   -keypass \
   -keysize \
   -keystore \
   -protected \
   -providername \
   -providerpath \
   -storepass \
   -storetype \
   -v"

set -l keytool_gencert_subcommands "\
   -addprovider \
   -alias \
   -dname \
   -ext \
   -infile \
   -keypass \
   -keystore \
   -outfile \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -rfc \
   -sigalg \
   -startdate \
   -storepass \
   -storetype \
   -v \
   -validity"

set -l keytool_importcert_subcommands "\
   -addprovider \
   -alias \
   -cacerts \
   -file \
   -keypass \
   -keystore \
   -noprompt \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -storepass \
   -storetype \
   -trustcacerts \
   -v"

set -l keytool_importpass_subcommands "\
   -addprovider \
   -alias \
   -keyalg \
   -keypass \
   -keysize \
   -keystore \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -storepass \
   -storetype \
   -v"

set -l keytool_importkeystore_subcommands "\
   -addprovider \
   -destalias \
   -destkeypass \
   -destkeystore \
   -destprotected \
   -destprovidername \
   -deststorepass \
   -deststoretype \
   -noprompt \
   -providerclass \
   -providerpath \
   -srcalias \
   -srckeypass \
   -srckeystore \
   -srcprotected \
   -srcprovidername \
   -srcstorepass \
   -srcstoretype \
   -v"

set -l keytool_keypasswd_subcommands "\
   -addprovider \
   -alias \
   -keypass \
   -keystore \
   -new \
   -providerclass \
   -providername \
   -providerpath \
   -storepass \
   -storetype \
   -v"

set -l keytool_list_subcommands "\
   -addprovider \
   -alias \
   -cacerts \
   -keystore \
   -protected \
   -providerclass \
   -providername \
   -providerpath \
   -rfc \
   -storepass \
   -storetype \
   -v"

set -l keytool_printcert_subcommands "\
   -file \
   -jarfile \
   -rfc \
   -sslserver \
   -v"

set -l keytool_printcertreq_subcommands "\
   -file \
   -v"

set -l keytool_printcrl_subcommands "\
   -file \
   -v"

set -l keytool_storepasswd_subcommands "\
   -addprovider \
   -cacerts \
   -keystore \
   -new \
   -providerclass \
   -providername \
   -providerpath \
   -storepass \
   -storetype \
   -v" 


#######################
# subcommands for -list
#######################
complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a -rfc \
   -d "output in RFC styel"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_alias)"

complete -c keytool \
   -n "__fish_seen_subcommand_from -list; and not __fish_seen_subcommand_from -cacerts" \
   -a "(__fish_keytool_subcommand_keystore)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a -cacerts \
   -d "access the cacerts keystore"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_storepass)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list; and not __fish_seen_subcommand_from -cacerts" \
   -a "(__fish_keytool_subcommand_storetype)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_providername)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_addprovider)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_providerclass)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_providerpath)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_v)"

complete -f -c keytool \
   -n "__fish_seen_subcommand_from -list" \
   -a "(__fish_keytool_subcommand_protected)"
