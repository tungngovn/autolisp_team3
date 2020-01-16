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
;;;
(defun tinhtoan	()


  
  
  ;; THONG SO BANH RANG NGHIENG

  (setq beta (/ (* beta pi) 180))
  (setq Bbr bbrn)


  (setq Dchia (fix (/ (* m z1) (cos beta))))
  (setq Ddinh (+ Dchia (* 2 m)))
  (setq Dchan (- Dchia (* 2.5 m)))

  (setq Dtrong dbrn)


)
;;;;

(defun truc ()
   



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


;(setq tsobi '( ;  d1  D     b   r   r1  
	     ;nth     0   1     2   3   4
;		      (20 52 15 2 1)
;			  (25 62 17 2 1)
;			  (30 72 19 2 1)
;			  (35 80 21 2.5 1.2)
;			  (40 90 23 2.5 1.2)
;			  (45 100 25 2.5 1.2)
;			  (50 110 27 3 1.5)
;			  (60 130 31 3 1.5)
;			  (65 140 33 3.5 2.0)
;			  (70 150 35 3.5 2)
;			  (90 190 43 4 2)
;			  (100 215 47 4 2)
;			  (150 320 65 5 2.5)
;		   )
;
 ;     )
	;(setq item (assoc dobi tsobi))   
  ;  (setq tobi (nth 2 item))   

  
  (setq 
	tr1 (polar tr0 g270 (+ 4 (* tobi 2.0)))
	tr2 (polar tr1 g270 (/ bbrn 4.0))
	tr3 (polar tr2 g270 (- bbrn 1.0))
	tr4 (polar tr3 g270 (+ (* tobi 2.0) 5.0))
	tr5 (polar tr4 g270 (* bbd 2.0))
	tr6 (polar tr5 g270 (* bbd 1.0))
	tr7 (polar tr6 g90 1.0)
	tr8 (polar tr0 g270 1.0)
	tr9 (polar tr0 g0 (- (* 0.5 dobi) 1.0))
	tr10 (polar tr8 g0 (* 0.5 dobi))
	tr11 (polar tr1 g0 (* 0.5 dobi))
	tr12 (polar tr1 g0 (* (+ 5.0 dbrn) 0.5))
	tr13 (polar tr2 g0 (* (+ 5.0 dbrn) 0.5))
	tr14 (polar tr2 g0 (* 0.5 dbrn))
	tr15 (polar tr3 g0 (* 0.5 dbrn))
	tr16 (polar tr3 g0 (* 0.5 dobi))
	tr17 (polar tr4 g0 (* 0.5 dobi))
	tr18 (polar tr4 g0 (* 0.5 dbd))
	tr19 (polar tr7 g0 (* 0.5 dbd))
	tr20 (polar tr6 g0 (- (* 0.5 dbd) 1.0))
	
	;th1 (polar tr2 g270 (* 0.1 (- bbrt 1)))
	;th2 (polar th1 g270 (/ bth1 2))
	;th3 (polar th2 g180 (/ bth1 2))
	;th4 (polar th2 g0 (/ bth1 2))
	;th5 (polar tr2 g90 (* 0.1 (- bbrt 1)))
	;th6 (polar th5 g90 (/ bth1 2))
	;th7 (polar th6 g180 (/ bth1 2))
	;th8 (polar th6 g0 (/ bth1 2))
     ;   th20 (polar th3 g270 (/ bbrt 5.0))
      ;  th21 (polar th4 g270 (/ bbrt 5.0))
       ; th22 (polar th7 g90 (/ bbrt 5.0))
        ;th23 (polar th8 g90 (/ bbrt 5.0))

	th10 (polar tr2 g270 (* 0.1 (- bbrn 2.0)))
	th11 (polar th10 g270 (/ bth2 2.0))
	th12 (polar th11 g180 (/ bth2 2.0))
	th13 (polar th11 g0 (/ bth2 2.0))
	th14 (polar tr3 g90 (* 0.1 (- bbrn 2.0)))
	th15 (polar th14 g90 (/ bth2 2.0))
	th16 (polar th15 g180 (/ bth2 2.0))
	th17 (polar th15 g0 (/ bth2 2.0))
	;pc1 (polar tr0 g270 (/ (distance tr0 tr5) 2.0))
	;pc2 (polar pc1 g0 88)
  	
        px1 (polar tr0 g90 35)
	px2 (polar tr6 g270 35)
)
    
	
			  			  
 ;noi diem
(command "-layer" "m""_mss.bao" "" "")
(setq cv (ssadd))

(command ".pline" tr0 tr9 tr10 tr11 tr12 tr13 tr14 tr15 tr16 tr17 tr18 tr19 tr20 tr6 "")
(ssadd (entlast) cv)
(command ".line" tr8 tr10 "")
(ssadd (entlast) cv)
(command ".line" tr1 tr11 "")
(ssadd (entlast) cv)
(command ".line" tr2 tr13 "")
(ssadd (entlast) cv)
(command ".line" tr3 tr16 "")
(ssadd (entlast) cv)
(command ".line" tr4 tr18 "")
(ssadd (entlast) cv)
(command ".line" tr7 tr19 "")
(ssadd (entlast) cv)



;(command "line" th4 th21 "")
;(ssadd (entlast) cv)
(command "line" th12 th16 "")
(ssadd (entlast) cv)
(command "line" th13 th17 "")
(ssadd (entlast) cv)
;(command "arc" th8 th5 th7 "")
;(command "arc" th3 th1 th4 "")
(command "arc" th13 th10 th12 "")
(command "arc" th17 th14 th16 "")

(setq cv1 (ss-mirror cv tr0 tr6 1))
(command "-layer" "m"	"_mss.tam" "" "")
(command ".line" px1 px2 "")
(command "-layer" "m"	"_mss.bao" "" "")
)

;;HET ve truc
(defun brn()
  (setq
    
    ra1	 tr2
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
  ; ra23 (polar ra21 (- g90 (/ (* beta 180) pi)) (* Bbr 0.3))
  ;  ra24 (polar ra22 (- g90 (/ (* beta 180) pi)) (* Bbr 0.1))
   
    ra23 (polar ra21 (- g90  beta ) (* Bbr 0.5))
    ra24 (polar ra22 (- g90  beta ) (* Bbr 0.4))
   
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

;;;; ve banh rang trong



(defun c:aa ()
;(setq dbd  (getreal "duong kinh banh dai"))
 ;  (setq bbd (getreal "be rong banh dai"))
  ; (setq dbrn (getreal "duong kinh banh rang nghieng"))
  ; (setq bbrn (getreal "be rong banh rang nghieng"))
   ;  (setq beta (getreal "goc nghieng"))
   ; (setq m (getreal "modun ban rang"))
  ; (setq z1 (getreal "so rang"))
;
	;(setq tobi (getreal "be rong"))
	;(setq dobi  (getreal "duong kinh o bi"))
	
	(setq dbd 20)
	(setq bbd  25)
	(setq dbrn 30)
	(setq bbrn 90)
	(setq beta 20)
	(setq m  2)
	(setq z1 50)
	(setq tobi 20)
	(setq dobi 27)
	
 (setq tr0 (getpoint"cho tam"))
  (khoitao)
  (tinhtoan)
  (truc)
  (brn)

)