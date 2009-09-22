NB. zip addon test - Select all. Press Ctrl+E

load '~addons/arc/zip/zfiles.ijs'
DIR=. jpath '~addons/arc/zip'

fexist DIR,'/test.zip'
zdir DIR,'/test.zip'
zdir '*.txt';DIR,'/test.zip'

zsize 'test2.txt';DIR,'/test.zip'
zexist 'other/test3.txt';DIR,'/test.zip'
zinfo 'other/';DIR,'/test.zip'
ztype 'other/';DIR,'/test.zip'

zread 'test2.txt';DIR,'/test.zip'
#zread 'test2.txt';DIR,'/test.zip'

'one' zwrite 'test1.txt';DIR,'/test1.zip'
'two123' zwrite 'test2.txt';DIR,'/test1.zip'
zdir DIR,'/test1.zip'

32{. F=. fread DIR,'/zfiles.ijs'
F zwrite 'test1.ijs';DIR,'/test1.zip'

'' zwrite 'folder/';DIR,'/test1.zip'
'three' zwrite 'folder/test3.txt';DIR,'/test1.zip'
zdir DIR,'/test1.zip'
32{.zread 'test1.ijs';DIR,'/test1.zip'

zgetcomment DIR,'/test1.zip'
'test123'zsetcomment DIR,'/test1.zip'
zgetcomment DIR,'/test1.zip'
ferase DIR,'/test1.zip'

zread 'test1.ijs';DIR,'/test.zip'
zscript 'test1.ijs';DIR,'/test.zip'
names''
TEST

zinfo 'other';DIR,'/test.zip'     NB. empty result
0=#zinfo 'other';DIR,'/test.zip'
ZERR_zfiles_
zsize 'bogus';DIR,'/test.zip'
zread 'bogus';DIR,'/test.zip'
NB. zscript 'bogus';DIR,'/bogus.zip'
