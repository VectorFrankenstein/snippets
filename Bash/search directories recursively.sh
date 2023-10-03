# replace example with your pattern
# not sure why it is needed like that

find . -type f -regextype egrep -regex '.*example.*'

# this searchs for file extensions specifically

find /path/to/start/directory -type f -regex '.*\.txt$'