| $${\color{red}WP-CLI}$$ | |
|-----------|-----------|
| | |
| COMMAND                                                                                                                                         | ACTION                 |
| | |
| wp core download                                                                                                                                    | download WordPress           |
| wp core config --dbname=<dbname> --dbuser=<dbuser> --dbpass=<dbpass> --dbprefix=<dbprefix>                                                          | generate wp-config.php       |
| wp core install --url="your_domain_name" --title="Your Blog Title" --admin_user="admin" --admin_password="your_password" --admin_email="your_email" | install WordPress            |
| wp plugin search yoast                                                                                                                              | search plugin                |
| wp plugin install pluginname                                                                                                                        | install plugin               |
| wp plugin list                                                                                                                                      | list plugins                 |
| wp theme list                                                                                                                                       | list installed themes        |
| wp theme search keyword                                                                                                                             | search themes                |
| wp theme install twentytwentyfive                                                                                                                   | install theme                |
| wp theme activate twentytwentyfive                                                                                                                  | activate theme               |
| wp post list                                                                                                                                        | list posts                   |
| wp post edit 1                                                                                                                                      | edit post                    |
| wp post update 1 --post_title="Your New title..."                                                                                                   | update post                  |
| wp post create --post_status=publish --post_title="Second Post" --edit                                                                              | create post                  |
| wp db cli                                                                                                                                           | login to WordPress database  |
| wp db query "SELECT user_login, ID FROM wp_users;"                                                                                                  | list WordPress users         |
| wp post update 6 --post_author=1                                                                                                                    | change WordPress post author |
| wp db optimize                                                                                                                                      | optimize database            |
| wp core update                                                                                                                                      | update WordPress core        |
| wp core update-db                                                                                                                                   | update WordPress database    |
| wp plugin update --all                                                                                                                              | update all plugins           |
