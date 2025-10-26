TMG-DevCore Bundle
Includes:
- tmg-devcore (core framework)
- tmg-multichar (multi-character)
- tmg-spawn (spawning)

Install:
1. Place folders in your server resources directory.
2. Ensure oxmysql is installed and server.cfg has correct mysql_connection_string.
3. Ensure resources in server.cfg in the following order:
   ensure oxmysql
   ensure tmg-devcore
   ensure tmg-multichar
   ensure tmg-spawn
4. Import SQL from sql/devcore_full.sql into your MySQL database.
