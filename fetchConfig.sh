#!/bin/bash
rm ./bluezone/configtweaks/config.ini.php
cf files piwikmixer /app/htdocs/piwik/config/config.ini.php | sed '/Plugins\[\] = "ExampleAPI"/d' | sed '/Plugins\[\] = "ExamplePlugin"/d' | sed '/Plugins\[\] = "ExampleRssWidget"/d' | sed '/Plugins\[\] = "Feedback"/d' > ./bluezone/configtweaks/config.ini.php
sed -i -e '1,3d' ./bluezone/configtweaks/config.ini.php

