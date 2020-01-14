Nhom3 :dialog {
	label = " BANG NHAP THONG SO  ";
	  	:image_button {
       		width=10;
       		aspect_ratio=2.0;
       		height=20;
       		color= 0;
       		key="anh";
       		allow_accept=true;
    	                      }
		aspect_ratio=0;
    	:row {
    	        :boxed_column{
    	                 label="THONG SO TRUC";
    	                 :popup_list {
				label="Duong kinh ngong truc";
				key="dobi";
				edit_width=8;
				value = "";   
			             }

    	              	                     }
		:boxed_column{
			label="THONG SO BANH DAI THANG";
			:popup_list {
				label="Duong kinh banh dai";
				key="dbd";
				edit_width=8;
				value = "";           // o day k dat thi hop thoai mac dinh gia tri dau tien
			            }
			:popup_list {
			label="Be rong banh dai";
			key="bbd";
			edit_width=8;
			value = ""; 
			}
			
                             }
		:boxed_column{
			label="THONG SO BANH RANG NGHIENG";
			:popup_list {
				label="Duong kinh trong";
				key="dbrn";        // duong kinh banh rang nghieng
				edit_width=8;
				value = "";           // o day k dat thi hop thoai mac dinh gia tri dau tien
			            }
			:popup_list {
			label="Module";
			key="m";             // module banh rang
			edit_width=8;
			value = ""; 
			}
			
			:popup_list {
			label="Goc nghieng";   
			key="beta";                //goc nghieng banh rang
			edit_width=8;
			value = "";
			}
			:popup_list {
			label="So rang ";
			key="z1";           // so rang
			edit_width=8;
			value = ""; 
			}


                       :popup_list {
            			label="Be rong banh rang nghieng";
            			key="bbrn";                // be rong banh rang nghieng
            			edit_width=8;
            			value = "" ;
			            }
                             }

		
	     }
	

	:row{
		//mesys11;
		ok1;
		cancel1;
		//help1;
	     }//row2
		//ok_cancel; 
}
ok1	:button {		
		label=">> DRAW";
		key="accept";
		width=21;
		fixed_width=true;
		is_default=true;
		alignment=centered;
	        }

cancel1 :button {
		label="OUT";
		key="cancel";
		is_cancel=true;
		width=21;
		fixed_width=true;
		alignment=centered;
	        } 
 