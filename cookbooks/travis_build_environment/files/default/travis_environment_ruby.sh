export MERB_ENV='test'
export RACK_ENV='test'
export RAILS_ENV='test'

JRUBY_OPTS=''

# Enable older OpenJDK C1 compiler, with faster startup
JRUBY_OPTS="$JRUBY_OPTS --client"

# Enable the equivalent of the C1 compiler on newer versions of OpenJDK
JRUBY_OPTS="$JRUBY_OPTS -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1"

# Disable C extensions, as running them in production on JRuby is a bad idea but
# developers often do not realize they depend on C extensions
JRUBY_OPTS="$JRUBY_OPTS -Xcext.enabled=false"

# Bump stack size to 2 MB
JRUBY_OPTS="$JRUBY_OPTS -J-Xss2m"

# Disable invokedynamic as it is still somewhat experimental
JRUBY_OPTS="$JRUBY_OPTS -Xcompile.invokedynamic=false"

export JRUBY_OPTS
