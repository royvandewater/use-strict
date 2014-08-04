for file in **/*.js; do
  head -n 1 $file | grep 'use strict'
  if [ $? == 1 ]; then
    echo "'use strict';" | cat - $file > /tmp/out.file && mv /tmp/out.file $file
  fi
done
