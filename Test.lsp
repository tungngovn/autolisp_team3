;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ham khoi tao <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<;;


(defun khoitao ()

(setq   g0 0.0

	g30  (/ pi 6)
	g15 (/ g30 2)
        g45 (* 0.25 pi)
        g90 (* 2.0 g45)
	g135 (* 3.0 g45)
	g180 (* 4.0 g45)
	g220 (* 5.0 g45)
	g225 (* pi 1.25)
	g270 (* 6.0 g45)
	g315 (* 7.0 g45)
	g150 (- g180 g30)
	g330 (* 11.0 g30)
	g345 (* 23.0 g15)
	
	g40 (/ pi 4.5)
	g320 (* 8.0 g40)
	
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Ve vong bi tren;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; vong chan dau tren;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;;
 (setq cdt1 vb2
       cdt2  (polar cdt1  g270 (+ b 4))
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
  (command ".pline" cdt4 cdt3 cdt7 cdt8  "")
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
  (setq vb1 (polar tr4 g90 (- tobi 1))
	vb2 ( polar vb1  g270 b)
	vb31( polar vb1  g0 (/ dt 2.0))
	vb3 ( polar vb2  g0 (/ dt 2.0))
	
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
  (command ".pline" vb3 vb31  "")
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


(setq tsnap '( ;  d   d1  d2    D   a   b  S0  
	     ;nth     0   1     2   3   4
		      (10 11 9 23 5 4.3 9)
			  (15 16 14 28 5 4.3 9)
			  (20 21 19 33 6 4.3 9)
			  (25 26 24 38 6 4.3 9)
		   )

      )
	  
	  (setq item2 (assoc dphot tsnap))


(defun napo( / d3)

(setq  d3 (/ dn 2.0) )
(setq item2 (assoc dphot tsnap))
(setq nd (nth 0 item2)
      nnd1 (nth 1 item2)
	  nnd2 (nth 2 item2)
	  nnd (nth 3 item2)
	  na (nth 4 item2)
	  nb (nth 5 item2)
	  nS0 (nth 6 item2)
        )

(setq  dvm (+ 6 (* d2 3)))		
		
(setq	
	 n1  (polar tr0 g90 20)
	 n2 (polar n1 g0 d3)
	 n02 (polar n1 g0 (- d3 3.0))
	 
	 n3 (polar n2 g90 1)
	 n03 (polar n02 g90 1)
	 
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
		   
		   n24 (polar n16 g180 3)
		   n25 (polar n16 g180 9)
		   n26 (polar n24 g90 6)
		   n27 (polar n25 g90 6)
		  
	 )
	 ;;vomay
	 (setq vm1 (polar n6 g0 1) 
	 vm2 (polar vm1 g0 15)
	 vm3 (polar vm2 g270 1)
	 vm4 (polar vm3 g180 15)
	 vm37 (polar vm4 g270 (+ dvm 5))
	 
	 vm5 (polar vm3 g270 5)
	 vm6 (polar vm5 g0 5)
	 
	 vm7 (polar vm5 g0 (+ (- dvm 15.0) (- (+ (/ (* m z1) 2.0) (* 6 5)) (/ dn 2.0))))
	 vm8 (polar vm4 g270 (+ 16 tobi))
	 vm9 (polar vm37 g0 (- (+ (/ (* m z1) 2.0) (* 6 5)) (/ dn 2.0)))
	 
	 vm10 (polar vm5 g270 (* 6.0 3.0))
	 vm11 (polar vm9 g0 (- dvm (* 6.0 3.0)))
	 vm12 (polar vm10 g0 7)
	 vm13 (polar vm10 g90 7)
	 vm14 (polar vm10 g180 7)
	 vm15 (polar vm10 g270 7)
	 
	 vm16 (polar vm11 g0 7)
	 vm17 (polar vm11 g90 7)
	 vm18 (polar vm11 g180 7)
	 vm19 (polar vm11 g270 7)
	 
	 
	 pc1 (polar tr0 g270 (/ (distance tr0 vb2) 2.0))
	 pc2 (polar pc1 g0 88)
	 pc3 (polar pc1 g0 (+ dvm (+ (/ (* m z1) 2.0) (* 6 5))))
	 pc4 (polar pc1 g0 (+ (/ (* m z1) 2.0) (* 6 5)))
	 
	  vm20 (polar vm11 g270 (- (* (distance vm9 pc4) 2.0) (* d2 2)))
	 vm21 (polar vm20 g0 5)
	 vm22 (polar vm20 g90 5)
	 vm23 (polar vm20 g180 5)
	 vm24 (polar vm20 g270 5)
	 
	 
	 )

  
;; Ve truc
  (command "-layer" "m" "_mss.bao" "")
  (setq nt (ssadd))
  (command "pline" n1 n02 n03 n4 n5 n6 n7 n9 n10 n11 n12 "")
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
  
  (command "line" n24 n26 "")
  (ssadd (entlast) ss1)
  (command "line" n25 n27 "")
  (ssadd (entlast) ss1)
  
  (command "line" n15 n3 "")
  (ssadd (entlast) ss1)
  (command "line" n7 n8 "")
  (ssadd (entlast) ss1)
  
 
  
   (setq
  	 n23 (polar n1 g90 1)
	  n16 (polar n23 g0 6)
	   n17 (polar n16 g90 6)
	    n18 (polar n17 g180 6)
		 n19 (polar n18 g180 6)
		  n20 (polar n19 g270 6)
		   n24 (polar n16 g180 3)
		   n25 (polar n16 g180 9)
		   n26 (polar n24 g90 6)
		   n27 (polar n25 g90 6)
		   )
	
  (command "line" n16 n17 "")
  (command "line" n17 n18 "")
  (command "line" n18 n19 "")
  (command "line" n19 n20 "")
  (command "line" n24 n26 "")
  (command "line" n25 n27 "")
  
 
  (setq ss3 (ss-mirror ss1 n1 n14 1))
  (ssadd (entlast) ss1)
  (command "-layer" "m" "_mss.tam" "")
  (setq ss2 (ssadd))
  (command "line" n2 n21 "")
  (ssadd (entlast) ss2)
  (command "line" n15 pstart "")
  (ssadd (entlast) ss2)
  (setq ss4 (ss-mirror ss2 n1 n14 1))
  
  
  ;;;;;;;;
  
  ;;vevomay;;;;;;;;;;;;;;

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
  ;(command "line" vm7 vm6 "")
  (ssadd (entlast) mb3)
  (command "line" vm4 vm37 "")
  (ssadd (entlast) mb3)
  (command "circle" vm10 6.4 "")
  (ssadd (entlast) mb3)
  (command "circle" vm11 6.4 "")
  (ssadd (entlast) mb3)
  
  ;(setq mb13 (ssadd))
  (command "pline" vm37 vm9 pc4 "")
  (command "fillet" "r" "10" "")
  (command "fillet" "p" "l" "")
  (ssadd (entlast) mb3)
  
  (command "pline" vm6 vm7 pc3 "")
  (command "fillet" "r" "10" "")
  (command "fillet" "p" "l" "")
  (ssadd (entlast) mb3)
  
  
  (setq vm25 (polar vm37 g180 dn) ;cdt12
	 vm26 (polar vm25 g180 57)
	 
	 vm27 (polar vm3 g180 (+ dn 30)) ;vm3
	 vm28 (polar vm27 g270 5) ;vm5
	 vm29 (polar vm28 g180 5)  ;vm6
	 
	 vm30 (polar vm28 g180 42) ;vm7
	 vm31 (polar vm27 g0 15) ;vm4
	 vm32 (polar vm28 g270 10) ;vm10
	 
	 
	 vm33 (polar vm32 g0 7) ;vm12
	 vm34 (polar vm32 g90 7) ;vm13
	 vm35 (polar vm32 g180 7) ;vm14
	 vm36 (polar vm32 g270 7)) ;vm15
	 
	 
	 (setq mb15 (ssadd))
  (command "pline" vm27 vm28 vm29 "")
  (command "fillet" "r" "5" "")
  (command "fillet" "p" "l" "")
  (ssadd (entlast) mb15)
  (command "line" vm29 vm30 "")
  (ssadd (entlast) mb15)
  (command "line" vm31 vm25 "")
  (ssadd (entlast) mb15)
  (command "line" vm25 vm26 "")
  (ssadd (entlast) mb15)
  (command "circle" vm32 6.4 "")
  (ssadd (entlast) mb15)
  
  
  (setq mb16 (ssadd))
  (command "circle" vm32 (/ d2 2.0) "")
  (ssadd (entlast) mb16)
  
  (setq mb2 (ssadd))
  (command "circle" vm10 (/ d2 2.0) "")
  (ssadd (entlast) mb2)
  
  (command "circle" vm11 (/ d2 2.0) "")
  (ssadd (entlast) mb2)
  (command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" mb1 "" "p" "ansi31" 0.5 90 "")
  (command "-hatch" "s" mb2 "" "p" "ansi31" 0.5 90 "")
  (command "-hatch" "s" mb16 "" "p" "ansi31" 0.5 90 "")
  
  (setq mb13 (ssadd))
  (command "circle" vm20 4 "")
  (ssadd (entlast) mb13)
  (command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" mb13 "" "p" "ansi31" 0.5 90 "")
  
  
  (setq mb4 (ss-mirror mb1 n1 n14 1))
  
  (setq mb9 (ss-mirror mb4 pc1 pc2 1))
  (setq mb10 (ss-mirror mb3 pc1 pc2 1))
  (setq mb11 (ss-mirror mb2 pc1 pc2 1))
  (setq mb12 (ss-mirror mb1 pc1 pc2 1))
 
  (setq mb17 (ss-mirror mb15 pc1 pc2 1))
  (setq mb18 (ss-mirror mb16 pc1 pc2 1))
  
  
  (command "-hatch" "s" mb18 "" "p" "ansi31" 0.5 90 "")
  (command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" mb1 mb4 mb12 mb9"" "p" "ansi31" 0.005 90 "")
  (command "-hatch" "s" mb2 mb11"" "p" "ansi31" 0.5 90 "")
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
  
  (setq gt5 (ssadd))
  (command "line" vm21 vm23 "")
  (ssadd (entlast) gt5)
  (command "line" vm22 vm24 "")
  (ssadd (entlast) gt5)
  
  
  (setq gt7 (ssadd))
  (command "line" vm33 vm35 "")
  (ssadd (entlast) gt7)
  (command "line" vm34 vm36 "")
  (ssadd (entlast) gt7)
  
  (setq gt2 (ss-mirror gt pc1 pc2 1))
  (setq gt8 (ss-mirror gt7 pc1 pc2 1))
  
  (setq gt4 (ss-mirror gt3 pc1 pc2 1))
 
  
 
  
  
  
  ; ve nap duoi
(setq	
	 n1  (polar vb2 g270 20)
	 n2 (polar n1 g0 d3)
	 n02 (polar n1 g0 (- d3 3.0))
	 
	 n3 (polar n2 g270 1)
	 n03 (polar n02 g270 1)
	 
	 n4 (polar n3 g0 15)
	 n5 (polar n4 g90 6)
	 n6 (polar n5 g180 16)
	 n7 (polar n6 g90 1)
	 n8 (polar n7 g0 1)
	 n9 (polar n7 g90 1)
	 n10 (polar n9 g0 1)
	 n11 (polar n10 g90 13)
	 n12 (polar n11 g180 6)
	 n13 (polar n12 g270 15)
	 n14 (polar n13 g180 (- d3 6))
	 n15 (polar n14 g270 6)
	  n16 (polar n3 g0 6)
	   n17 (polar n16 g270 6)
	    n18 (polar n17 g180 6)
		 n19 (polar n18 g180 6)
		  n20 (polar n19 g90 6)
		   n21 (polar n18 g270 3)
		   n22 (polar n1 g225 3)
		   
		   n24 (polar n16 g180 3)
		   n25 (polar n16 g180 9)
		   n26 (polar n24 g270 6)
		   n27 (polar n25 g270 6)
		  
	 )
	 
;; Ve truc
  (command "-layer" "m" "_mss.bao" "")
  
  (setq r (* (- nnd nnd1) 0.5))
  (setq	
	 nd1  (polar n1 g0 (/ nnd1 2.0)) 
	 ;nd14 (polar n14 g0 10)
	 ;nd20 (polar nd14 g90 nS0)
	 nd14 (polar nd1 g90 nS0)
	 nd13 (polar n12 g270 11)
	 
	 nd15 (polar n15 g0 (/ nd 2.0))
	 
	 nd20 (polar nd14 g270 (/ (distance nd1 nd14) 2))
	 
	 nd16(polar nd20 g90 (/ na 2.0))
  nd17(polar nd20 g270 (/ na 2.0))
  
  ;nd18(polar nd16 g320 r)
  ;nd19(polar nd17 g40 r)
  
  nd21 (polar nd16 g270 (/ (- na nb) 2))
  nd22 (polar nd17 g90 (/ (- na nb) 2))
  nd18(polar nd21 g0 r)
  nd19(polar nd22 g0 r)
  
  nd23  (polar nd16 g180 (/ (- nnd1 dphot) 2.0))
  nd24  (polar nd17 g180 (/ (- nnd1 dphot) 2.0))
  
  nd25  (polar nd1 g180 (/ (- nnd1 dphot) 2.0))
  nd26  (polar nd14 g180 (/ (- nnd1 dphot) 2.0))
 
  
  ) 
  (setq nt (ssadd))
  (command "pline" nd1 n02 n03 n4 n5 n6 n7 n9 n10 n11 n12 "")
  (ssadd (entlast) nt)
  (command "pline" n12 nd13 nd14 "")
  (command "fillet" "r" "10" "")
  (command "fillet" "p" "l" "")
  (ssadd (entlast) nt)
  (command "pline" nd14 nd16 nd18 nd19 nd17 nd1 "")
  (ssadd (entlast) nt)
  (command "line" nd1 nd25 "")
  (ssadd (entlast) nt)
  (command "line" nd14 nd26 "")
  (ssadd (entlast) nt)
  
  (setq nt2 (ssadd))
  (command "pline" nd23 nd16 nd18 nd19 nd17 nd24 nd23 "")
  (ssadd (entlast) nt2)
  
  (setq nt1 (ss-mirror nt n1 n14 1))	; nhom chon 1
  (setq nt3 (ss-mirror nt2 n1 n14 1))


  (command "-layer" "m" "_mss.cat1" "")
  (command "-hatch" "s" nt1 "" "p" "ansi31" 2 90 "")
  (command "-hatch" "s" nt "" "p" "ansi31" 2 90 "")
  
  (command "-hatch" "s" nt2 "" "p" "ansi37" 0.2 90 "")
  (command "-hatch" "s" nt3 "" "p" "ansi37" 0.2 90 "")



  (command "-layer" "m" "_mss.bao" "")
  (setq ss1 (ssadd))
  
  
  (command "line" n16 n17 "")
  (ssadd (entlast) ss1)
  (command "line" n17 n18 "")
  (ssadd (entlast) ss1)
  (command "line" n18 n19 "")
  (ssadd (entlast) ss1)
  
  (command "line" n24 n26 "")
  (ssadd (entlast) ss1)
  (command "line" n25 n27 "")
  (ssadd (entlast) ss1)

  (command "line" n19 n20 "")
  (ssadd (entlast) ss1)
  (command "line" nd15 n3 "")
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
  
  ;pc1 (polar tr0 g270 (/ (distance tr0 tr5) 2.0))
   

)





(defun banhdaithang()

(setq q1 (polar tr6 g270 2.5)
      q1d (polar q1 g270 3.5); set diem cang ngang duoi
      q2b (polar q1d g90 b); q nay so voi q1d co chieu rong B
      q2 (polar q1 g0 (/ dbd 2))
      q3 (polar q2 g0 (- (/ dmo 2) (/ dbd 2)))
      q4 (polar q3 g90 3.5)
      q5 (polar q4 g0 6)
      ; set q tam lo tron
      q5t (polar q5 g0 15)
      q5tt(polar q5t g270 3.5)
      q6 (polar q5 g0 30)
      q7 (polar q6 g0 8)
      q8 (polar q7 (/ (* 280 pi) 180) 7)
      q9 (polar q8 g0 5)
      q10 (polar q9 g90 2)
      q11 (polar q10 (/ (* 162 pi) 180) 3)
      q12 (polar q11 g90 3)
      q13 (polar q12 (/ (* 18 pi) 180) 3)
      q14 (polar q13 g90 2)
      q15 (polar q14 (/ (* 162 pi) 180) 3)
      ; set diem ve duong tam
      
 
 )
  
  (command "-layer" "m" "_mss.bao" "")
  ; Line banhthangdai
  (setq net (ssadd))
  (command ".pline" q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11  "")
   (ssadd (entlast) net)
  (command ".pline"  q11 q12 q13 q14 q15 "")
  (ssadd (entlast) net)
  (setq dx1 (ss-mirror net tr0 tr6 1))
  
  

  ; Repeat theo so dai

(repeat (- z 2) ; so lan lap
  
(setq q11 (polar q15 g0 0)
        q12 (polar q11 g90 3)
	q13 (polar q12 (/ (* 18 pi) 180) 3)
        q14 (polar q13 g90 2)
        q15 (polar q14 (/ (* 162 pi) 180) 3)    
	)
(setq net1 (ssadd)) 
(command ".pline"   q11 q12 q13 q14 q15 "")
 (ssadd (entlast) net1)
(setq dx2 (ss-mirror net1 tr0 tr6 1))
  
)

  
  ; ve doan rang con lai sau khi Repeat
(setq q16 (polar q15 g90 3)
	q17 (polar q16 (/ (* 18 pi) 180) 3)
	q18 (polar q17 g90 2)
	q19 (polar q18 g180 5)
	q20 (polar q19 (/ (* 260 pi) 180) 7)
        q21 (polar q20 g180 8)
      ; set q21t de ve truc duong tron
      q21t (polar q21 g180 15)
      q21tt(polar q21t g90 3.5)
      q22 (polar q21 g180 30)
      q23 (polar q22 g180 6)
      q24 (polar q23 g90 5.5)
      q25 (polar q24 g180 (- (/ dmo 2) (/ dbd 2)))
      ; set q26 de noi duong cang ngang tren
      q26 (polar q2b g0 (/ dmo 2))
      
	)
  
  (setq net2 (ssadd))
(command ".pline"  q15 q16 q17 q18 q19 q20 q21 q22 q23 q24 q25 q2 "")
  (ssadd (entlast) net2)
(command ".line"  q1d q8 "") ; Ve duong cang ngang duoi
  (ssadd (entlast) net2)
  (command ".line"  q26 q18 ""); ve duong cang ngang tren
  (ssadd (entlast) net2)
  ; ve 2 duong vong tam
  (command ".line"  q6 q21 "")
  (ssadd (entlast) net2)
  (command ".line"  q5 q22 "")
  (ssadd (entlast) net2)
  (command "-layer" "m"	"_mss.tam" "c" 1 "" "lt" "center" "" "")
  ; Ve duong truc tron
  (command ".line"  q5tt q21tt "")
  (ssadd (entlast) net2)
 

  ; LAy doi xung toan bo phan ben phai
  
  (setq dx3 (ss-mirror net2 tr0 tr6 1))
   ;(ss-mirror net1 tr0 tr6 1)

  
  

  
  ) ; dau ngoac het chuong trinh lon






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
	(setq bbd  20)
	(setq dbrn 30)
	(setq bbrn 90)
	(setq beta 20)
	(setq m  2)
	(setq z1 50)
	;(setq tobi 20)
	(setq dobi 30)
	(setq dphot 25)
	(setq d2 12)
  	(setq dmo 35)
  	(setq z 3)
  	(setq b 23)
  
  
  
  
	
 (setq tr0 (getpoint"cho tam"))
  (khoitao)
  (tinhtoan)
  (truc)
  (brn)
  (vongbi)
  (napo)
  (banhdaithang)
)