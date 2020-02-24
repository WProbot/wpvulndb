#Simple script to look for Vulnerabilities in Wordpress plugins

for plugin in `cat plugins_list`;do #List of plugins used in your Wordpress
	echo "Plugin Name:" $plugin
  curl -H "Authorization: Token token=wpvulndb_token_goes_here" https://wpvulndb.com/api/v3/plugins/$plugin #Refer https://wpvulndb.com/api
done
