lua << EOF
-- Exclude some filetypes from highlighting by using `!`
require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
}
EOF
