"grep php/css/js
map ,fp :tabnew<CR>:Ack --php  -G 
map ,fc :tabnew<CR>:Ack --css  -G 
map ,fj :tabnew<CR>:Ack --js  -G 
"map ,fa :tabnew<CR>:Ack -G  
map ,fa :Ack! -G  

"todo by ack
command Todo Ack! 'TODO\|FIXME'
