#### To show or hide line numbers
: set number
: set nonumber

#### Go to line number
:LINE_NUMBER

#### Open multiple files
vi file1 file2

#### see the list of open files
:args
:ls


#### move between multiple files
:n
:prev
:buffer <numberOfFile>
:b <numberOfFile>  

#### To see list of current buffers
:ls

#### Delete empty lines
:g/^$/d

#### moving cursor
Ctrl-u Moves cursor & screen up ½ page
Ctrl-d Moves cursor & screen down ½ page
Ctrl-b Moves screen up one page, cursor to last line
Ctrl-f Moves screen down one page, cursor to first line
