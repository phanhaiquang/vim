"grep php/css/js
map ,fp :tabnew<CR>:Ack --php  -G 
map ,fc :tabnew<CR>:Ack --css  -G 
map ,fj :tabnew<CR>:Ack --js  -G 
"map ,fa :ProjectRootCD<CR>:Ack! 
map ,fw "zyiw:Ack! <c-r>z<CR>
map ,fa :Ack! 

"todo by ack
command Todo Ack! 'TODO\|FIXME'
