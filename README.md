# Senotify

This script fetches a list of the new questions from a Stack Exchange website,
prints them out to terminal and sends desktop system notification to user.

Rewrite of the old [SENotify.pl][1] script by Jean-Edouard Babin - jeb in jeb.com.fr

[1]:http://stackapps.com/questions/817/senotify-stack-exchange-new-question-notification-perl-growl

## Installation

install as gem:

    $ gem install senotify

## Usage

```
Usage: senotify [options]

Searches Stack Exchange site for the new questions and sends system notifications

v0.1.0

Options:
    -h, --help                       Show command line help
    -s, --sites SITE,SITE,SITE       Sites to monitor, one of serverfault | stackoverflow | superuser
    -r, --refresh SECONDS            Refresh rate in seconds, default to 300 seconds
    -i, --include TAGS               Only include question that contains these tags
    -e, --exclude TAGS               Exclude question that contains these tags 
    -n, --notify                     Enable system notifications
        --version                    Show help/version info
        --log-level LEVEL            Set the logging level
                                     (debug|info|warn|error|fatal)
                                     (Default: info)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AlexeyDemidov/senotify.

