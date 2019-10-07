;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ham khoi tao <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;


(defun khoitao ()

(setq   g0 0.0
		g30  (/ pi 6)
        g45 (* 0.25 pi)
        g90 (* 2.0 g45)
	g135 (* 3.0 g45)
	g180 (* 4.0 g45)
	g220 (* 5.0 g45)
	g225 (* pi 1.25)
	g270 (* 6.0 g45)
	g315 (* 7.0 g45)
	g150 (- g180 g30)
)

  
  ;; LUU BIEN HE THONG
  (setq	os    (getvar "osmode")
	ortho (getvar "orthomode")
	lts   (getvar "ltscale")
  )
  

  ;; DAT LAI CAC BIEN HE THONG
  (setvar "osmode" 0)
  (setvar "orthomode" 0)
  (command "ltscale" 10.0)
  

  ;; TAO CAC LAYER
  (setq clay (getvar "clayer"))
  (command "-layer" "m"	"_mss.bao" "c" 7 "" "lt" "continuous" "" "")
  (command "-layer" "m"	"_mss.dut" "c" 6 "" "lt" "hidden" "" "")
  (command "-layer" "m"	"_mss.tam" "c" 1 "" "lt" "center" "" "")
  (command "-layer" "m"	"_mss.ren" "c" 4 "" "lt" "continuous" "" "")
  (command "-layer" "m"	"_mss.cat" "c" 3 "" "lt" "continuous" "" "")
  (command "-layer" "m"	"_mss.phantom" "c" 9 ""	"lt" "phantom" "" "")
  (command "-layer" "m"	"_mss.text" "c"	2 "" "lt" "continuous" "" "")
  (command "-layer" "m"	"_mss.cat1" "c"	3 "" "lt" "continuous" "" "")
  (setvar "clayer" clay)
)


;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> HAM LAY DOI XUNG <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;

(defun ss-mirror (ss p1 p2 flag / ent ss1 num ind)
  (if (null ss)
    (setq ss1 NIL)
    (progn
      (if (= flag 0)
	(progn
	  (command "._mirror" ss "" p1 p2 "y")
	  (setq ss1 ss)
	)
	(progn
	  (setq ss1 (ssadd))
	  (setq num (sslength ss))
	  (setq ind 0)
	  (while (< ind num)
	    (setq ent (ssname ss ind))
	    (command "._mirror" ent "" p1 p2 "n")
	    (ssadd (entlast) ss1)
	    (setq ind (1+ ind))
	  )				;while
	)				;progn
      )					;if flag..
    )					;progn
  )					;if ss not null
  ss1					;ket qua tra ve
)					;defun

;;>>>>>>>>>>> HAM LAY PHAN TU DAU CUA LIST<<<<<<<<<<<<<

(defun header# (biglst / lst)
  (setq lst (mapcar 'car biglst))
  lst
)



;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Hop Thoai <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;
   

(defun tshopthoai ()
  (setq dcl_id (load_dialog "hopthoaiphantruc.dcl"))
  (if (not (new_dialog "Nhom3" dcl_id))
    (progn
      (alert
	"Kh\U+00F4ng Load \U+0110\U+01B0\U+1EE3c H\U+1ED9p Tho\U+1EA1i"
      )
      (exit)
    )
  )              ;; Nap du lieu vao de nguoi dung chon lua


(setq listdobi  '("20.0"    "25.0"    "30.0"    "35.0"      
		  "40.0"    "45.0"    "50.0"    "60.0"
		  "65.0"    "70.0"    "90.0"    "100.0"    "150.0"
	         )
)



(setq listdbrn  '("20.0"    "25.0"    "30.0"    "35.0"      
		  "40.0"    "45.0"    "50.0"    "60.0"
		  "65.0"    "70.0"    "90.0"    "100.0"    "150.0"
	         )
)

(setq listbbrn  '(    "20.0"    "30.0"	"40.0"	  "50.0"
		  "60.0"    "70.0"    "80.0"	"90.0"	  "100.0"
		  "110.0" "120"
		 )
)

(setq listdbrt  '("20.0"    "25.0"    "30.0"    "35.0"      
		  "40.0"    "45.0"    "50.0"    "60.0"
		  "65.0"    "70.0"    "90.0"    "100.0"    "150.0"
	         )
)

(setq listbbrt  '(   "30.0"	"40.0"	  "50.0"
		  "60.0"    "70.0"    "80.0"	"90.0"	  "100.0"
		  "110.0"  "120" "125"
		 )
)

(setq	listzbr	'("17.0"    "20.0"    "25.0"	"30.0"	  "35.0"
		  "40.0"    "45.0"    "50.0"	"55.0"	  "60.0"
		 )
  )
  (setq	listmbr	'("1.25" "1.5" "2.0" "2.5" "3.0" "4.0" "5.0" "6.0" "8.0"
		  "10.0" "12.0")
  )
  (setq	listbetar '("8.0"     "9.0"	"10.0"	  "11.0"    "12.0"
		    "14.0"    "15.0"	"16.0"	  "17.0"    "18.0"
		    "19.0"    "20.0"
		   )
  )
   (setq	listzbrt '("60.0" "65.0" "70.0" "80" "90" "100" "110" "120"
		  )
  )
  (setq	listmbrt '("1.25"   "1.5"    "2.0"    "2.5"    "3.0"
		   "4.0"    "5.0"    "6.0"    "8.0"    "10.0"
		   "12.0"
		  )
  )
   
   (upDateImage "anh.sld" "anh")
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> NHAP DU LIEU CHO DCL <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;


(start_list "dobi")
  (mapcar 'add_list listdobi)
  (end_list)
  (set_tile "dobi" "2")


(start_list "dbrn")
  (mapcar 'add_list listdbrn)
  (end_list)
  (set_tile "dbrn" "3")

(start_list "dbrt")
  (mapcar 'add_list listdbrt)
  (end_list)
  (set_tile "dbrt" "4")

(start_list "bbrn")
  (mapcar 'add_list listbbrn)
  (end_list)
  (set_tile "bbrn" "4")

(start_list "bbrt")
  (mapcar 'add_list listbbrt)
  (end_list)
  (set_tile "bbrt" "5")
(start_list "zbrt")
  (mapcar 'add_list listzbrt)
  (end_list)
  (set_tile "zbrt" "5")

  (start_list "mbrt")
  (mapcar 'add_list listmbrt)
  (end_list)
  (set_tile "mbrt" "4")

  (start_list "zbr")
  (mapcar 'add_list listzbr)
  (end_list)
  (set_tile "zbr" "4")

  (start_list "mbr")
  (mapcar 'add_list listmbr)
  (end_list)
  (set_tile "mbr" "4")

  (start_list "betar")
  (mapcar 'add_list listbetar)
  (end_list)
  (set_tile "betar" "5")

;;;nut bam ok va cancel
(action_tile "accept" "(setq ddig 2) (laykq) (done_dialog)")
(action_tile "cancel" "(setq ddiag 1) (exit) (done_dialog)")
(start_dialog)
(if (or (>= dobi dbrn) (>= dobi dbrt))
	(progn
		(alert "Khong lap duoc banh rang")
		(exit)
		)
	)
;|(if (or (< bbrt dbrt) (< bbrn dbrn))
(if (< bbrt dbrt)
		(progn
			(alert "Thong so banh rang chua hop li")
			(exit)
			)
			)|;
;|(if (or (> (- dbrt dobi) 10) (> (- dbrn dobi) 10))
	(progn
		(alert "Tiet dien truc thay doi dot ngot ")
		(exit)
		)
	)|;
)
;;Chen anh vao DCL

  
(defun upDateImage(sldName anh) 
	;;;--- Get the width of the slide (L?y ð?r?ngc?ah?nh ?nh) 
	(setq width (dimx_tile anh))
	;;;--- Get the height of the slide (L?y ð? cao c?ah?nh ?nh)
	(setq height (dimy_tile anh)) 
	;;;--- Start the slide definition (B?t ð?u ð?nh ngh?a ?nh slide)
	(start_image anh)
	;;;--- Wipe out the background (Xóas?ch n?n)
	;; (fill_image 0 0 width height -16)
	;;;--- Put the slide in the image area  (Ð?t ?nh Slidevào vùng ?nh)
	(slide_image 0 0 width height sldName)
	;;;--- Finish the slide definition (K?t thúc ð?nh ngh?a ?nh slide)
	(end_image)
)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> LAY KET QUA TU HOP THOAI <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;

(defun laykq ()

;; KET QUA DUONG KINH OBI
  (setq dobi (get_tile "dobi"))               
        (if (= dobi "")
            (setq gan10 nil)
            (setq gan10 (nth (atoi dobi) listdobi))
        )
  
  (setq dobi1 (atof gan10))
 


;; KET QUA BANH RANG NGHIENG
  (setq dbrn (get_tile "dbrn"))               
        (if (= dbrn "")
            (setq gan11 nil)
            (setq gan11 (nth (atoi dbrn) listdbrn))
        )


  (setq bbrn (get_tile "bbrn"))            
        (if (= bbrn "")
	    (setq gan21 nil)
	    (setq gan21 (nth (atoi bbrn) listbbrn))
	)
 (setq zbr (get_tile "zbr"))               
        (if (= zbr "")
            (setq gan111 nil)
            (setq gan111 (nth (atoi zbr) listzbr))
        )
  
  
   (setq mbr (get_tile "mbr"))            
        (if (= mbr "")
	    (setq gan211 nil)
	    (setq gan211 (nth (atoi mbr) listmbr))
	)


   (setq betar (get_tile "betar"))         
        (if (= betar "")
	    (setq gan311 nil)
	    (setq gan311 (nth (atoi betar) listbetar))
	)

   
  (setq zbr1 (atof gan111))             
  (setq mbr1 (atof gan211))
  (setq betar1 (angtof gan311))
  
  (setq dbrn1 (atof gan11))
  (setq bbrn1 (atof gan21))

 
;; KET QUA BANH RANG THANG
  
   (setq dbrt (get_tile "dbrt"))           
        (if (= dbrt "")
	    (setq gan12 nil)
	    (setq gan12 (nth (atoi dbrt) listdbrt))
	)


   (setq bbrt (get_tile "bbrt"))            
        (if (= bbrt "")
	    (setq gan22 nil)
	    (setq gan22 (nth (atoi bbrt) listbbrt))
	)
  (setq zbrt (get_tile "zbrt"))              
        (if (= zbrt "")
            (setq gan122 nil)
            (setq gan122 (nth (atoi zbrt) listzbrt))
        )
  
  
   (setq mbrt (get_tile "mbrt"))           
        (if (= mbrt "")
	    (setq gan222 nil)
	    (setq gan222 (nth (atoi mbrt) listmbrt))
	)

  
  (setq zbrt1 (atof gan122))             
  (setq mbrt1 (atof gan222))
  
  (setq dbrt1 (atof gan12))             
  (setq bbrt1 (atof gan22))
)
 


;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TINH TOAN CAC THONG SO CAN THIET <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;
(defun tinhtoan	()

  (setq bbrt bbrt1)
  (setq bbrn bbrn1)
  (setq dbrt dbrt1)
  (setq dbrn dbrn1)
  (setq dobi dobi1)
  
  
  ;; THONG SO BANH RANG NGHIENG
  (setq z1 zbr1)
  (setq m mbr1)
  (setq beta betar1)
  (setq Bbr bbrn)
  (setq beta (/ (* beta pi) 180))


;;;Tinh cac thong so khac

  (setq Dchia (fix (/ (* m z1) (cos beta))))
  (setq Ddinh (+ Dchia (* 2 m)))
  (setq Dchan (- Dchia (* 2.5 m)))

  (setq Dtrong dbrn)

  ;; THONG SO BANH RANG THANG
  (setq zt1 zbrt1)
  (setq mt mbrt1)
 (setq Bbrt bbrt)
;;;Tinh cac thong so khac

  (setq Dchiat (fix (* mt zt1)))
  (setq Ddinht (+ Dchiat (* 2 mt)))

  (setq Dchant (- Dchiat (* 2.5 mt)))

  (setq Dtrongt dbrt)
)

;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> HAM VE TRUC <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;


(defun truc ()
  


  (if (and (> dbrt 10) (<= dbrt 17))
    (setq bth1 5
    )
  )
  (if (and (> dbrt 17) (<= dbrt 22))
    (setq bth1 6
    )
  )
  (if (and (> dbrt 22) (<= dbrt 30))
    (setq bth1 8
    )
  )
  (if (and (> dbrt 30) (<= dbrt 38))
    (setq bth1 10
    )
  )
  (if (and (> dbrt 38) (<= dbrt 44))
    (setq bth1 12
    )
  )
  (if (and (> dbrt 44) (<= dbrt 50))
    (setq bth1 14
    )
  )
  (if (and (> dbrt 50) (<= dbrt 58))
    (setq bth1 16
    )
  )
  (if (and (> dbrt 58) (<= dbrt 65))
    (setq bth1 18
    )
  )
  (if (and (> dbrt 65) (<= dbrt 75))
    (setq bth1 20
    )
  )
  (if (and (> dbrt 75) (<= dbrt 85))
    (setq bth1 22
    )
  )
  (if (> dbrt 85)
    (setq bth1 24
    )
  )


  (if (and (> dbrn 12) (<= dbrn 17))
    (setq bth2 5
    )
  )
  (if (and (> dbrn 17) (<= dbrn 22))
    (setq bth2 6
    )
  )
  (if (and (> dbrn 22) (<= dbrn 30))
    (setq bth2 8
    )
  )
  (if (and (> dbrn 30) (<= dbrn 38))
    (setq bth2 10
    )
  )
  (if (and (> dbrn 38) (<= dbrn 44))
    (setq bth2 12
    )
  )
  (if (and (> dbrn 44) (<= dbrn 50))
    (setq bth2 14
    )
  )
  (if (and (> dbrn 50) (<= dbrn 58))
    (setq bth2 16
    )
  )
  (if (and (> dbrn 58) (<= dbrn 65))
    (setq bth2 18
    )
  )
  (if (and (> dbrn 65) (<= dbrn 75))
    (setq bth2 20
    )
  )
  (if (and (> dbrn 75) (<= dbrn 85))
    (setq bth2 22
    )
  )
  (if (> dbrn 85)
    (setq bth2 24
    )
  )


(setq tsobi '( ;  d1  D     b   r   r1  
	     ;nth     0   1     2   3   4
		      (20 52 15 2 1)
			  (25 62 17 2 1)
			  (30 72 19 2 1)
			  (35 80 21 2.5 1.2)
			  (40 90 23 2.5 1.2)
			  (45 100 25 2.5 1.2)
			  (50 110 27 3 1.5)
			  (60 130 31 3 1.5)
			  (65 140 33 3.5 2.0)
			  (70 150 35 3.5 2)
			  (90 190 43 4 2)
			  (100 215 47 4 2)
			  (150 320 65 5 2.5)
		   )

      )
	(setq item (assoc dobi tsobi))   
    (setq tobi (nth 2 item))   

  (setq tr0  (getpoint "Nh\U+1EADp \U+0111i\U+1EC3m \U+0111\U+1EC3 b\U+1EAFt \U+0111\U+1EA7u v\U+1EBD tr\U+1EE5c:")
	
		tr1 (polar tr0 g270 (+ 4 (* tobi 2.0)))
	tr2 (polar tr1 g270 (- bbrt 1.0))
	tr3 (polar tr2 g270 (/ bbrt 4.0))
	tr4 (polar tr3 g270 (- bbrn 2.0))
	tr5 (polar tr4 g270 (+ (* tobi 2.0) 5.0))
	tr6 (polar tr5 g90 1.0)
	tr7 (polar tr0 g270 1.0)
	tr8 (polar tr0 g0 (- (* 0.5 dobi) 1.0))
	tr9 (polar tr7 g0 (* 0.5 dobi))
	tr10 (polar tr1 g0 (* 0.5 dobi))
	tr11 (polar tr1 g0 (* 0.5 dbrt))
	tr12 (polar tr2 g0 (* 0.5 dbrt))
	tr13 (polar tr2 g0 (* (+ 5.0 dbrt) 0.5))
	tr14 (polar tr3 g0 (* (+ 5.0 dbrt) 0.5))
	tr15 (polar tr3 g0 (* 0.5 dbrn))
	tr16 (polar tr4 g0 (* 0.5 dbrn))
	tr17 (polar tr4 g0 (* 0.5 dobi))
	tr18 (polar tr6 g0 (* 0.5 dobi))
	tr19 (polar tr5 g0 (- (* 0.5 dobi) 1.0))
	
	th1 (polar tr1 g270 (* 0.1 (- bbrt 1)))
	th2 (polar th1 g270 (/ bth1 2))
	th3 (polar th2 g180 (/ bth1 2))
	th4 (polar th2 g0 (/ bth1 2))
	th5 (polar tr2 g90 (* 0.1 (- bbrt 1)))
	th6 (polar th5 g90 (/ bth1 2))
	th7 (polar th6 g180 (/ bth1 2))
	th8 (polar th6 g0 (/ bth1 2))
        th20 (polar th3 g270 (/ bbrt 5.0))
        th21 (polar th4 g270 (/ bbrt 5.0))
        th22 (polar th7 g90 (/ bbrt 5.0))
        th23 (polar th8 g90 (/ bbrt 5.0))

	th10 (polar tr3 g270 (* 0.1 (- bbrn 2.0)))
	th11 (polar th10 g270 (/ bth2 2.0))
	th12 (polar th11 g180 (/ bth2 2.0))
	th13 (polar th11 g0 (/ bth2 2.0))
	th14 (polar tr4 g90 (* 0.1 (- bbrn 2.0)))
	th15 (polar th14 g90 (/ bth2 2.0))
	th16 (polar th15 g180 (/ bth2 2.0))
	th17 (polar th15 g0 (/ bth2 2.0))
	pc1 (polar tr0 g270 (/ (distance tr0 tr5) 2.0))
	pc2 (polar pc1 g0 88)
  	
        px1 (polar tr0 g90 35)
	px2 (polar tr5 g270 35)
)
    
	
			  			  
 ;noi diem
(command "-layer" "m""_mss.bao" "" "")
(setq cv (ssadd))

(command ".pline" tr0 tr8 tr9 tr10 tr11 tr12 tr13 tr14 tr15 tr16 tr17 tr18 tr19 tr5 "")
(ssadd (entlast) cv)
(command ".line" tr7 tr9 "")
(ssadd (entlast) cv)
(command ".line" tr1 tr10 "")
(ssadd (entlast) cv)
(command ".line" tr2 tr12 "")
(ssadd (entlast) cv)
(command ".line" tr3 tr15 "")
(ssadd (entlast) cv)
(command ".line" tr4 tr17 "")
(ssadd (entlast) cv)
(command ".line" tr6 tr18 "")
(ssadd (entlast) cv)



(command "line" th4 th21 "")
(ssadd (entlast) cv)
(command "line" th8 th23 "")
(ssadd (entlast) cv)
(command "line" th13 th17 "")
(ssadd (entlast) cv)
(command "arc" th8 th5 th7 "")
(command "arc" th3 th1 th4 "")
(command "arc" th13 th10 th12 "")
(command "arc" th17 th14 th16 "")

(setq cv1 (ss-mirror cv tr0 tr5 1))
(command "-layer" "m"	"_mss.tam" "" "")
(command ".line" px1 px2 "")
(command "-layer" "m"	"_mss.bao" "" "")
)
;het ham ve truc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;VE banh rang
(defun brn()
  (setq
    
    ra1	 tr3
    ra2	 (polar ra1 g270 Bbr)
    ra3	 (polar ra2 g0 (/ Dtrong 2.0))
    ra4	 (polar ra2 g0 (/ Dchan 2.0))
    ra5	 (polar ra2 g0 (/ Dchia 2.0))
    ra6	 (polar ra2 g0 (/ Ddinh 2.0))
    ra6	 (polar ra6 g90 (/ (- Ddinh Dchia) 2))

    ra10 (polar ra1 g0 (/ Dtrong 2.0))
    ra9	 (polar ra1 g0 (/ Dchan 2.0))
    ra8	 (polar ra1 g0 (/ Dchia 2.0))
    ra7	 (polar ra1 g0 (/ Ddinh 2.0))
    ra7	 (polar ra7 g270 (/ (- Ddinh Dchia) 2))
    ra11 (polar ra5 g270 (* 0.1 Bbr))
    ra12 (polar ra8 g90 (* 0.1 Bbr))

    ra13 (polar ra2 g180 (/ Dtrong 2.0))
    ra15 (polar ra2 g180 (/ Dchia 2.0))
    ra16 (polar ra2 g180 (/ Ddinh 2.0))
    ra16 (polar ra16 g90 (/ (- Ddinh Dchia) 2))

    ra20 (polar ra1 g180 (/ Dtrong 2.0))
    ra18 (polar ra1 g180 (/ Dchia 2.0))
    ra17 (polar ra1 g180 (/ Ddinh 2.0))
    ra17 (polar ra17 g270 (/ (- Ddinh Dchia) 2))
    ra19 (polar ra20 g180 (/ (distance ra18 ra20) 1.2))
    ra14 (polar ra13 g180 (/ (distance ra18 ra20) 2.0))

    ra21 (polar ra15 g90 (/ (- Ddinh Dchia) 2))
    ra22 (polar ra21 g0 1.0)
    ra23 (polar ra21 (- g90 (/ (* beta 180) pi)) (* Bbr 0.5))
    ra24 (polar ra22 (- g90 (/ (* beta 180) pi)) (* Bbr 0.4))
    ra25 (polar ra17 g0 (* (distance ra18 ra19) 1.3))
    ra26 (polar ra16 g0 (distance ra14 ra15))

  )
  (setq hh (ssadd))
  (setq hh1 (ssadd))
  (setq hh2 (ssadd))
  (setq hh3 (ssadd))
  (setq hh4 (ssadd))
  
  (setvar "osmode" 0)
  (setvar "orthomode" 0)
  (command "ltscale" 20.0)

  (command "-layer" "m" "_mss.bao" "")

  (command ".pline" ra3 ra4 ra9 ra10 ra3 "")
  (ssadd (entlast) hh)
  (command ".pline" ra4 ra5 ra6 ra7 ra8 ra9 "" )
  (ssadd (entlast) hh1)
  (command "-layer" "m" "_mss.cat" "")
  (command "-hatch" "s" hh "" "p" "ansi31" 3 0 "")

  (command "-layer" "m" "_mss.bao" "")

  (command "spline" ra19 ra25 ra23 ra24 ra26 ra14 "" "" "")
  (ssadd (entlast) hh2)
  (command ".pline" ra19 ra20 ra13 ra14 "")
  (ssadd (entlast) hh2)


  (command ".pline" ra19 ra18 ra17 ra16 ra15 ra14 "")
  (command ".pline" ra17 ra25 "")
  (command ".pline" ra16 ra26 "")
  (command ".pline" ra21 ra23 "")
  (command ".pline" ra22 ra24 "")

  (command "-layer" "m" "_mss.tam" "" "")
  (command ".pline" ra11 ra12 "")
  (ssadd (entlast) hh3)
  (command "mirror" hh3 "" ra1 ra2 "")
  (command "-layer" "m" "_mss.cat" "")
  (command "-hatch" "s" hh2 "" "p" "ansi31" 3 0 "")
)


(defun brt ()
  (setq
    rt1	 (polar tr1 g90 1)
    rt2	 (polar rt1 g270 Bbrt)
    rt3	 (polar rt2 g0 (/ Dtrongt 2.0))
    rt4	 (polar rt2 g0 (/ Dchant 2.0))
    rt5	 (polar rt2 g0 (/ Dchiat 2.0))
    rt6	 (polar rt2 g0 (/ Ddinht 2.0))
    rt6	 (polar rt6 g90 (/ (- Ddinht Dchiat) 2))

    rt10 (polar rt1 g0 (/ Dtrongt 2.0))
    rt9	 (polar rt1 g0 (/ Dchant 2.0))
    rt8	 (polar rt1 g0 (/ Dchiat 2.0))
    rt7	 (polar rt1 g0 (/ Ddinht 2.0))
    rt7	 (polar rt7 g270 (/ (- Ddinht Dchiat) 2))
    rt11 (polar rt5 g270 (* 0.1 Bbrt))
    rt12 (polar rt8 g90 (* 0.1 Bbrt))
    rt21 (polar rt9 g180 (* mt 3.0))

    rt13 (polar rt10 g0 (/ Dtrongt 2.0))
    rt14 (polar rt13 g270 (* Bbrt 0.35))
    rt15 (polar rt14 g0 (* (* 0.35 Bbrt) 0.123))
    rt16 (polar rt14 g0 (/ (distance rt13 rt21) 2.0))
    rt17 (polar rt16 g0 (* Bbrt 0.2))
    rt18 (polar rt16 g180 (* Bbrt 0.2))

    rt20 (polar rt21 g270 (* Bbrt 0.35))
    rt19 (polar rt20 g180 (/ (* (* 0.35 Bbrt) 0.123)))


    rt22 (polar rt3 g0 (/ Dtrongt 2.0))
    rt23 (polar rt22 g90 (* Bbrt 0.35))
    rt24 (polar rt23 g0 (* (* 0.35 Bbrt) 0.123))
    rt25 (polar rt23 g0 (/ (distance rt13 rt21) 2.0))
    rt26 (polar rt25 g0 (* Bbrt 0.2))
    rt27 (polar rt25 g180 (* Bbrt 0.2))
    rt30 (polar rt4 g180 (* mt 3.0))
    rt29 (polar rt30 g90 (* Bbrt 0.35))
    rt28 (polar rt29 g180 (/ (* (* 0.35 Bbrt) 0.123)))
    rt31 (polar rt25 g270 (* 0.1 Bbrt))
    rt32 (polar rt16 g90 (* 0.1 Bbrt))
  )


  (setq hht (ssadd))
  (setq hht2 (ssadd))
  (setq hht1 (ssadd))
  (setq hht3 (ssadd))
  (setq hht4 (ssadd))

  (setvar "osmode" 0)
  (setvar "orthomode" 0)
  (command "ltscale" 20.0)


  (command "-layer" "m" "_mss.tam" "" "")
  (command ".pline" rt11 rt12 "")
  (ssadd (entlast) hht3)
  (command ".pline" rt31 rt32 "")
  (ssadd (entlast) hht3)
  (command "mirror" hht3 "" rt1 rt2 "")
  (ssadd (entlast) hht3)



  (command "-layer" "m" "_mss.bao" "")
  (command ".pline" rt13 rt21 "")
  (ssadd (entlast) hht1)
  (command ".pline" rt22 rt30 "")
  (ssadd (entlast) hht1)
  (command ".pline" rt18 rt17 "")
  (ssadd (entlast) hht1)
  (command ".pline" rt27 rt26 "")
  (ssadd (entlast) hht1)

  (command "mirror" hht1 "" rt1 rt2 "")
  (ssadd (entlast) hht1)

  (command ".pline" rt4 rt5 rt6 rt7 rt8 rt9 "")
  (ssadd (entlast) hht4)
  (command "mirror" hht4 "" rt1 rt2 "")


  (command ".pline" rt13 rt15 rt18 "")
  (command ".fillet" "r" 3)
  (command ".fillet" "p" "l")
  (ssadd (entlast) hht)
  (command ".pline" rt22 rt24 rt27 "")
  (command ".fillet" "r" 3)
  (command ".fillet" "p" "l")
  (ssadd (entlast) hht)
  (command ".pline" rt13 rt10 rt3 rt22 "")
  (ssadd (entlast) hht)
  (command ".pline" rt27 rt18 "")
  (ssadd (entlast) hht)

  (command ".pline" rt21 rt19 rt17 "")
  (command ".fillet" "r" 3)
  (command ".fillet" "p" "l")
  (ssadd (entlast) hht)
  (command ".pline" rt30 rt28 rt26 "")
  (command ".fillet" "r" 3)
  (command ".fillet" "p" "l")
  (ssadd (entlast) hht)
  (command ".pline" rt21 rt9 rt4 rt30 "")
  (ssadd (entlast) hht)
  (command ".pline" rt26 rt17 "")
  (ssadd (entlast) hht)


  (setq hht2 (ss-mirror hht rt1 rt2 1))

  (command "-layer" "m" "_mss.cat" "")

  (command "-hatch" "s" hht hht2 "" "p" "ansi31" 3 0 "")

)

;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Ve vong bi tren;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;
(defun vongbi (/ dt b r r1)

(setq item (assoc dobi tsobi)) 

(setq dt (nth 0 item)
      dn (nth 1 item)
      b  (nth 2 item)
      r  (nth 3 item)
      r1 (nth 4 item)  )
  ;(setq dt 65 dn 140 b 33 r 3.5 r1 2.0 h 37.5)
  (setq h (/ (- dn dt) 2.0))
  (setq vb1 tr0
	vb2 ( polar vb1  g270 b)
	vb3 ( polar vb2  g0   (/ dt 2.0))
	vb4 ( polar vb3  g0   h)
	vb5 ( polar vb4  g90  b)
	vb6 ( polar vb5  g180 h)
	vb7 ( polar vb6  g0 r)
	vb8 ( polar vb3  g0 r)
	vb9 ( polar vb6  g270 (/ b 2.0))
	vb10( polar vb5  g270 (/ b 2.0))
	vb11( polar vb9  g0 (/ h 2.0))
	vb12( polar vb6  g0 (* 0.3 h))
	vb13( polar vb3  g0 (* 0.3 h))
	vb14( polar vb12 g270 (/ b 2))
	vb15( polar vb5  g180 (* 0.3 h))
	vb16( polar vb10 g180 (* 0.3 h))
	vb17( polar vb11 g0 (/ (* 0.64 h) 2.0))
	vb18( polar vb17 g270 (/ b 2.0))
	vb19( polar vb11 g90 (+ (* h 0.32) 1))
	vb20( polar vb11 g270 (+ (* h 0.32) 1))
	vb21( polar vb11 g0 (+ (* h 0.32) 1))
	vb22( polar vb11 g180 (+ (* h 0.32) 1))
	vb23( polar vb22 g90 1)
	vb24( polar vb21 g90 1)
	
	)
  ;(command ".zoom" "c" vb1 1000 "")
  (setq vb (ssadd))
  (command "-layer" "m" "_mss.bao" "" "")
  (command "pline" vb1 vb6 vb7"");;;;;;;;;;;;Xoa VB1
  (ssadd (entlast) vb)
  (command "pline" vb9 vb3 vb8 "")
  (command ".chamfer" "d" r r "")
  (command "chamfer" "p" "l")
  (ssadd (entlast) vb)
  (command "pline" vb9 vb6 vb7 "")
  (command ".chamfer" "d" r r "")
  (command "chamfer" "p" "l")
  (ssadd (entlast) vb)
  (command "pline" vb3 vb8 "");;;;;;;;;;;;;;; Xóa VB2
  (ssadd (entlast) vb)
  (command "pline" vb8 vb4 vb10 "")
  (command ".chamfer" "d" r1 r "")
  (command "chamfer" "p" "l")
  (ssadd (entlast) vb)
  (command "pline" vb7 vb5 vb10 "")
  (command ".chamfer" "d" r r "")
  (command ".chamfer" "p" "l")
  (ssadd (entlast) vb)
;;;;;;;;;;
  (command ".zoom" "e")
  (setq vbb (ssadd))
  (command ".circle" vb11  (/ ( * 0.64 h) 2.0) "")
  (ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb13 vb14 "")
  (ssadd (entlast) vbb)
  (command "._trim" vbb "" vb14 "")
  (ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb12 vb14 "")
  (ssadd (entlast) vbb)
  (command "._trim" vbb "" vb14 "")
  (ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb16 vb15 "") 
  (ssadd (entlast) vbb)
  (command "._trim" vbb "" vb16 "")
  ;(ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb17 vb18 "")
  ;(ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
;;;;;;;;;;
  (setq vbbb (ssadd))
  (command "-layer" "m" "_mss.tam" "" "")
  (command ".pline" vb19 vb20 "")
  (ssadd (entlast) vbbb)
  (command ".pline" vb21 vb22 "")
  (ssadd (entlast) vbbb)
;;;;;;;;;;
  (command "-layer" "m" "_may.cat" "" "") 
  (command "bhatch" "p" "ansi31"  0.75 90 vb23 "")
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command "bhatch" "p" "ansi31"  0.75 0 vb24 "")
  (command "_.mirror" "last" "" vb1 vb2 "")
;;;;;;;;;;
  (ss-mirror vb vb1 vb2 1)
  ;(ss-mirror vbb vh1 vb2 1)
  (ss-mirror vbbb vb1 vb2 1)
  ;(command ".zoom" "e")
;;;  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; vong chan dau tren;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;;
 (setq cdt1 vb2
       cdt2  (polar cdt1  g270 22)
       cdt3  (polar cdt2  g0   (/ dt 2.0))
       cdt4  (polar cdt3  g0   8)
       cdt5  (polar cdt4  g90  9)
       cdt6  (polar cdt5  g0   (/ (- dn (+ dt 16.0)) 2.0))
       cdt7  (polar cdt1  g0   (/ dt 2.0))
       cdt8  (polar cdt7  g0   8)
       cdt9  (polar cdt8  g270 4)
       cdt10 (polar cdt9  g0   (/ (- dn (+ dt 16.0)) 2.0))
       cdt11 (polar cdt6  g150 3)
       cdt12 (polar cdt11 g30  3)
       cdt13 (polar cdt12 g150 3)
       cdt14 (polar cdt13 g30  3)
       cdt15 (polar cdt14 g150 3)
       cdt16 (polar cdt1  g90  b)
       cdt17 (polar cdt7  g90  b)
       )
  
;;;;;;;;;;;
  (setq cdt (ssadd))
  (setq cdtt (ssadd))
  (command "-layer" "m" "_mss.bao" "" "")
  (command ".pline" cdt4 cdt3 cdt7 cdt8 "")
  (ssadd (entlast) cdt)
  (command ".pline" cdt4 cdt5 cdt6 "")
  (command ".fillet" "r" 2 "")
  (command ".fillet" "p" "l")
  (ssadd (entlast) cdt)
  (command ".pline" cdt6 cdt11 cdt12 cdt13 cdt14 cdt15 cdt10 "")
  (ssadd (entlast) cdt)
  (command ".pline" cdt8 cdt9 cdt10 "")
  (command ".fillet" "r" 2 "")
  (command ".fillet" "p" "l")
  (ssadd (entlast) cdt)
  (command ".pline" cdt16 cdt17 "")
  (ssadd (entlast) cdtt)
;;;;;;;;;;
  (command "-layer" "m" "_mss.cat1" "" "") 
  (command "-hatch" "s" cdt "" "p" "ansi31" 1.5 0 "")
  (command "_.mirror" "last" "" cdt1 cdt2 "")
;;;;;;;;;;
  (ss-mirror cdt cdt1 cdt2 1)
  (ss-mirror cdtt cdt1 cdt2 1)


;/////////////;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/VE Vong bi phia duoi;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;////////////

  ;(setq dt 65 dn 140 b 33 r 3.5 r1 2.0 h 37.5)
  (setq h (/ (- dn dt) 2.0))
  (setq vb1 (polar tr5 g90 tobi)
	vb2 ( polar vb1  g270 b)
	vb3 ( polar vb2  g0   (/ dt 2.0))
	vb4 ( polar vb3  g0   h)
	vb5 ( polar vb4  g90  b)
	vb6 ( polar vb5  g180 h)
	vb7 ( polar vb6  g0 r)
	vb8 ( polar vb3  g0 r)
	vb9 ( polar vb6  g270 (/ b 2.0))
	vb10( polar vb5  g270 (/ b 2.0))
	vb11( polar vb9  g0 (/ h 2.0))
	vb12( polar vb6  g0 (* 0.3 h))
	vb13( polar vb3  g0 (* 0.3 h))
	vb14( polar vb12 g270 (/ b 2))
	vb15( polar vb4  g180 (* 0.3 h))
	vb16( polar vb10 g180 (* 0.3 h))
	vb17( polar vb11 g0 (/ (* 0.64 h) 2.0))
	vb18( polar vb17 g90 (/ b 2.0))
	vb19( polar vb11 g90 (+ (* h 0.32) 1))
	vb20( polar vb11 g270 (+ (* h 0.32) 1))
	vb21( polar vb11 g0 (+ (* h 0.32) 1))
	vb22( polar vb11 g180 (+ (* h 0.32) 1))
	vb23( polar vb22 g90 1)
	vb24( polar vb21 g90 1)
	
	)
  ;(command ".zoom" "c" vb1 1000 "")
  (setq vb (ssadd))
  (command "-layer" "m" "_mss.bao" "" "")
  (command "pline"  vb6 vb7"");;;;;;;;;;;;Xoa VB1
  (ssadd (entlast) vb)
  (command "pline" vb9 vb3 vb8 "")
  (command ".chamfer" "d" r r "")
  (command "chamfer" "p" "l")
  (ssadd (entlast) vb)
  (command "pline" vb9 vb6 vb7 "")
  (command ".chamfer" "d" r r "")
  (command "chamfer" "p" "l")
  (ssadd (entlast) vb)
  (command "pline" vb3 vb8 "");;;;;;;;;;;;;;; Xóa VB2
  (ssadd (entlast) vb)
  (command "pline" vb8 vb4 vb10 "")
  (command ".chamfer" "d" r r "")
  (command "chamfer" "p" "l")
  (ssadd (entlast) vb)
  (command "pline" vb7 vb5 vb10 "")
  (command ".chamfer" "d" r1 r "")
  (command ".chamfer" "p" "l")
  (ssadd (entlast) vb)
;;;;;;;;;;
  (command ".zoom" "e")
  (setq vbb (ssadd))
  (command ".circle" vb11  (/ ( * 0.64 h) 2.0) "")
  (ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb13 vb14 "")
  (ssadd (entlast) vbb)
  (command "._trim" vbb "" vb14 "")
  (ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb12 vb14 "")
  (ssadd (entlast) vbb)
  (command "._trim" vbb "" vb14 "")
  (ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb16 vb15 "")
  (ssadd (entlast) vbb)
  (command "._trim" vbb "" vb16 "")
  ;(ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command ".pline" vb17 vb18 "")
  ;(ssadd (entlast) vbb)
  (command "_.mirror" "last" "" vb1 vb2 "")
;;;;;;;;;;
  (setq vbbb (ssadd))
  (command "-layer" "m" "_mss.tam" "" "")
  (command ".pline" vb19 vb20 "")
  (ssadd (entlast) vbbb)
  (command ".pline" vb21 vb22 "")
  (ssadd (entlast) vbbb)
;;;;;;;;;;
  (command "-layer" "m" "_may.cat" "" "") 
  (command "bhatch" "p" "ansi31"  0.75 90 vb23 "")
  (command "_.mirror" "last" "" vb1 vb2 "")
  (command "bhatch" "p" "ansi31"  0.75 0 vb24 "")
  (command "_.mirror" "last" "" vb1 vb2 "")
;;;;;;;;;;
  (ss-mirror vb vb1 vb2 1)
  ;(ss-mirror vbb vh1 vb2 1)
  (ss-mirror vbbb vb1 vb2 1)
  ;(command ".zoom" "e")
  
;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Chan dau phia duoi;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;
 (setq cdd1 vb1
       cdd2  (polar cdd1  g90 22)
       cdd3  (polar cdd2  g0   (/ dt 2.0))
       cdd4  (polar cdd3  g0   8)
       cdd5  (polar cdd4  g270  9)
       cdd6  (polar cdd5  g0   (/ (- dn (+ dt 16.0)) 2.0))
       cdd7  (polar cdd1  g0   (/ dt 2.0))
       cdd8  (polar cdd7  g0   8)
       cdd9  (polar cdd8  g90 4)
       cdd10 (polar cdd9  g0   (/ (- dn (+ dt 16.0)) 2.0))
       cdd11 (polar cdd10 g150 3)
       cdd12 (polar cdd11 g30  3)
       cdd13 (polar cdd12 g150 3)
       cdd14 (polar cdd13 g30  3)
       cdd15 (polar cdd14 g150 3)
       cdd16 (polar cdd1  g270 b)
       cdd17 (polar cdd7  g270 b)
       )
;;;;;;;;;;;
  (setq cdd (ssadd))
  (setq cddd (ssadd))
  (command "-layer" "m" "_mss.bao" "" "")
  (command ".pline" cdd4 cdd3 cdd7 cdd8 "")
  (ssadd (entlast) cdd)
  (command ".pline" cdd4 cdd5 cdd6 "")
  (command ".fillet" "r" 2 "")
  (command ".fillet" "p" "l")
  (ssadd (entlast) cdd)
  (command ".pline" cdd10 cdd11 cdd12 cdd13 cdd14 cdd15 cdd6 "")
  (ssadd (entlast) cdd)
  (command ".pline" cdd8 cdd9 cdd10 "")
  (command ".fillet" "r" 2 "")
  (command ".fillet" "p" "l")
  (ssadd (entlast) cdd)
  (command ".pline" cdd16 cdd17 "")
  (ssadd (entlast) cddd)
;;;;;;;;;;
  (command "-layer" "m" "_may.cat" "" "") 
  (command "-hatch" "s" cdd "" "p" "ansi31" 1.5 0 "")
  (command "_.mirror" "last" "" cdd1 cdd2 "")
;;;;;;;;;;
  (ss-mirror cdd cdd1 cdd2 1)
  (ss-mirror cddd cdd1 cdd2 1)
)

;;;;;;;;
;;;;;;;;;;;;;;;___NAP O
;;;;;;;;;;;
(defun napo( / d3)

(setq  d3 (/ dn 2.0) )

(setq	
	 n1  (polar tr0 g90 20)
	 n2 (polar n1 g0 d3)
	 n3 (polar n2 g90 1)
	 n4 (polar n3 g0 15)
	 n5 (polar n4 g270 6)
	 n6 (polar n5 g180 16)
	 n7 (polar n6 g270 1)
	 n8 (polar n7 g0 1)
	 n9 (polar n7 g270 1)
	 n10 (polar n9 g0 1)
	 n11 (polar n10 g270 13)
	 n12 (polar n11 g180 6)
	 n13 (polar n12 g90 15)
	 n14 (polar n13 g180 (- d3 6))
	 n15 (polar n14 g90 6)
	  n16 (polar n3 g0 6)
	   n17 (polar n16 g90 6)
	    n18 (polar n17 g180 6)
		 n19 (polar n18 g180 6)
		  n20 (polar n19 g270 6)
		   n21 (polar n18 g90 3)
		   n22 (polar n1 g225 3)
		  
	 )
	 ;;vomay
	 (setq vm1 (polar n6 g0 1) 
	 vm2 (polar vm1 g0 15)
	 vm3 (polar vm2 g270 1)
	 vm4 (polar vm3 g180 15)
	 vm5 (polar vm3 g270 5)
	 vm6 (polar vm5 g0 5)
	 vm7 (polar vm6 g0 180)
	 vm8 (polar vm4 g270 (+ 16 tobi))
	 vm9 (polar cdt12 g0 200)
	 vm10 (polar vm5 g270 10)
	 vm11 (polar vm10 g0 150)
	 vm12 (polar vm10 g0 7)
	 vm13 (polar vm10 g90 7)
	 vm14 (polar vm10 g180 7)
	 vm15 (polar vm10 g270 7)
	 vm16 (polar vm11 g0 7)
	 vm17 (polar vm11 g90 7)
	 vm18 (polar vm11 g180 7)
	 vm19 (polar vm11 g270 7)
	 )

  
;; Ve truc
  (command "-layer" "m" "_mss.bao" "")
  (setq nt (ssadd))
  (command "pline" n1 n2 n3 n4 n5 n6 n7 n9 n10 n11 n12 "")
  (ssadd (entlast) nt)
  (command "pline" n12 n13 n14 "")
  (command "fillet" "r" "10" "")
  (command "fillet" "p" "l" "")
  (ssadd (entlast) nt)
  (command "pline" n14 n1 "")
  (ssadd (entlast) nt)

  (setq nt1 (ss-mirror nt n1 n14 1))	; nhom chon 1


  (command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" nt1 "" "p" "ansi31" 2 90 "")
  (command "-hatch" "s" nt "" "p" "ansi31" 2 90 "")



  (command "-layer" "m" "_mss.bao" "")
  (setq ss1 (ssadd))
  (command "line" n16 n17 "")
  (ssadd (entlast) ss1)
  (command "line" n17 n18 "")
  (ssadd (entlast) ss1)
  (command "line" n18 n19 "")
  (ssadd (entlast) ss1)

  (command "line" n19 n20 "")
  (ssadd (entlast) ss1)
  (command "line" n15 n3 "")
  (ssadd (entlast) ss1)
  (command "line" n7 n8 "")
  (ssadd (entlast) ss1)
  (setq ss3 (ss-mirror ss1 n1 n14 1))
  (ssadd (entlast) ss1)
  (command "-layer" "m" "_mss.tam" "")
  (setq ss2 (ssadd))
  (command "line" n2 n21 "")
  (ssadd (entlast) ss2)
  (command "line" n15 pstart "")
  (ssadd (entlast) ss2)
  (setq ss4 (ss-mirror ss2 n1 n14 1))
  
(setq nt2 (ss-mirror nt pc1 pc2 1))                           ;;;;;;;;thay 2 ddieerm pc1 24 ? day nhé
(setq nt3 (ss-mirror nt1 pc1 pc2 1))                            ;;;;;;;;; dây n?a
(ss-mirror ss1 pc1 pc2 1)
(ss-mirror ss2 pc1 pc2 1)
(ss-mirror ss3 pc1 pc2 1)
(ss-mirror ss4 pc1 pc2 1)
(command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" nt2 "" "p" "ansi31" 2 90 "")
  (command "-hatch" "s" nt3 "" "p" "ansi31" 2 90 "")
  ;;vevomay
  (command "-layer" "m" "_mss.bao" "")
  (setq mb1 (ssadd))
  (command "pline" vm1 vm2 vm3 vm4 vm1 "")
  (ssadd (entlast) mb1)
  
  (command "-layer" "m" "_mss.bao" "")
  (setq mb3 (ssadd))
  (command "pline" vm3 vm5 vm6 "")
  (command "fillet" "r" "5" "")
  (command "fillet" "p" "l" "")
  (ssadd (entlast) mb3)
  (command "line" vm7 vm6 "")
  (ssadd (entlast) mb3)
  (command "pline" vm4 cdt12 vm9 "")
  (ssadd (entlast) mb3)
  (command "circle" vm10 6.4 "")
  (ssadd (entlast) mb3)
   (command "circle" vm11 6.4 "")
  (ssadd (entlast) mb3)
  (setq mb2 (ssadd))
  (command "circle" vm10 6 "")
  (ssadd (entlast) mb2)
  
  (command "circle" vm11 6 "")
  (ssadd (entlast) mb2)
  (command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" mb1 "" "p" "ansi31" 0.5 90 "")
  (command "-hatch" "s" mb2 "" "p" "ansi31" 0.5 90 "")
  (setq mb4 (ss-mirror mb1 n1 n14 1))
  (setq mb5 (ss-mirror mb2 n1 n14 1))
  (setq mb6 (ss-mirror mb3 n1 n14 1))
  ;;nhan doi sang phía bên kia. l?y 2 di?m pc1 pc2 trên truc
    (setq mb7 (ss-mirror mb6 pc1 pc2 1))                            ;;;;;;;;thay 2 ddieerm pc1 24 ? dây nhé
  (setq mb8 (ss-mirror mb5 pc1 pc2 1))
  (setq mb9 (ss-mirror mb4 pc1 pc2 1))
  (setq mb10 (ss-mirror mb3 pc1 pc2 1))
  (setq mb11 (ss-mirror mb2 pc1 pc2 1))
  (setq mb12 (ss-mirror mb1 pc1 pc2 1))
  (command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" mb1 mb4 mb12 mb9"" "p" "ansi31" 0.005 90 "")
  (command "-hatch" "s" mb2 mb5 mb11 mb8"" "p" "ansi31" 0.5 90 "")
  (command "-layer" "m" "_mss.tam" "")
  (setq gt (ssadd))
  (command "line" vm12 vm14 "")
  (ssadd (entlast) gt)
  (command "line" vm13 vm15 "")
  (ssadd (entlast) gt)
  (command "line" vm16 vm18 "")
  (ssadd (entlast) gt)
  (command "line" vm17 vm19 "")
  (ssadd (entlast) gt)
  (setq gt2 (ss-mirror gt pc1 pc2 1))
  (setq gt3 (ss-mirror gt n1 n14 1))
  (setq gt4 (ss-mirror gt3 pc1 pc2 1))
)

;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> HAM KICH THUOC <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;

(defun kthuoc ()
; diem tren truc banh rang thang

  (setq kt0 (polar tr1 g270 (/ (- bbrt 1) 2))        
	kt1 (polar kt0 g180 (/ dbrt 2))
        kt2 (polar kt1 g0 dbrt)
	kt3 (polar kt0 g90 2)
  )
 
  (command "-layer" "m"	"_mss.text" "")
  (setvar "dimscale" 1.5)
  (setvar "dimtad" 2)
  (setvar "dimdec" 0)
  
  (setvar "dimpost" " D7/k6")
  (command "dimlinear" kt1 kt2 "t" "%%c <>" kt3 "")
    
)

;;;;;
(defun c:aa ()
  (khoitao)
  (tshopthoai)
  (tinhtoan)
  (truc)
  (brn)
  (brt)
  (vongbi)
  (napo)
  (kthuoc)
  (princ)
  (unload_dialog dcl)
)

