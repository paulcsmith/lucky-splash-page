# Load Lucky and the app (actions, models, etc.)
require "./src/app"
# You can add your own tasks here in the ./tasks folder
require "./tasks/**"

# Load Lucky tasks (dev, webpack.watch, etc.)
require "lucky_web/tasks/**"

LuckyCli::Runner.run