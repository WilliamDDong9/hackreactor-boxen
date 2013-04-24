# This file will be loaded by config/basic early in a Boxen run. Use
# it to provide any custom code or behavior your Boxen setup requires.

# Change the prefix boxen is installed to.
# ENV['BOXEN_HOME'] = '/opt/boxen'

# Change the repo boxen will use.
ENV['BOXEN_REPO_NAME'] = 'hackreactor/hackreactor-boxen'

# Boxen binary packaging
# ENV["BOXEN_S3_ACCESS_KEY"] = ''
# ENV["BOXEN_S3_SECRET_KEY"] = ''
# ENV["BOXEN_S3_BUCKET"] = ''

# Auto-report issues on failed runs
ENV["BOXEN_ISSUES_ENABLED"] = 'yes'

# Submit audit data to an arbitrary HTTP endpoint
# ENV["BOXEN_WEB_HOOK_URL"] = 'https://some-uri.com/boxen'

# Change default source directory
ENV["BOXEN_SRC_DIR"] = "/Users/#{user}/.src"

# Set ports back to defaults
# TODO: Verify this works
ENV["BOXEN_MYSQL_PORT"] = "3306"
ENV["BOXEN_POSTGRESQL_PORT"] = "5432"
ENV["BOXEN_MONGODB_PORT"] = "2707"
