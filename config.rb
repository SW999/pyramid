# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "css"
sass_dir = "sass"
images_dir = "img"
javascripts_dir = "js"

# To disable debugging comments that display the original location of your selectors. Uncomment:
#line_comments = false
line_comments = true

# Change this to :production when ready to deploy the CSS to the live server.
environment = :development
#environment = :production

# In development, we can turn on the debug_info to use with FireSass or Chrome Web Inspector.
#debug = false
debug = true

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (environment == :development) ? :expanded : :compressed
Sass::Plugin.options[:debug_info] = true

# Pass options to sass. For development, we turn on the FireSass-compatible
# debug_info if the debug config variable above is true.
sass_options = (environment == :development && debug == true) ? {:debug_info => true} : {}

# Add support for repeating gradients
Compass::BrowserSupport.add_support("repeating-linear-gradient", "webkit", "moz", "ms")
