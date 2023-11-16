(deffacts startup
   (start))

(defrule p1
   ?p <- (start)
   =>
   (printout t "Welcome! Let's assess your stress level. Please answer the following questions." crlf)
   (printout t "Is the student's study hours less than 5? ")
   (assert (studyhours (read)))
   (retract ?p))

(defrule p2
   (studyhours yes)
   =>
   (printout t "Is the student's age less than 20? ")
   (assert (age (read))))

(defrule p3
   (studyhours yes)
   (age yes)
   =>
   (printout t "Does the student feel overwhelmed by coursework? ")
   (assert (overwhelmed (read))))

(defrule rule1
   (studyhours yes)
   (age yes)
   (overwhelmed yes)
   =>
   (printout t "Based on your answers, your stress level is High(Insufficient study hours, young age, and feeling overwhelmed)" crlf))

(defrule rule2
   (studyhours yes)
   (age yes)
   (overwhelmed no)
   =>
   (printout t "Based on your answers, your stress level is Moderate(Insufficient study hours and young age, but not feeling overwhelmed)" crlf))

(defrule p4
   (studyhours yes)
   (age no)
   =>
   (printout t "Does the student have effective time management strategies? ")
   (assert (timemanagement (read))))

(defrule rule3
   (studyhours yes)
   (age no)
   (timemanagement yes)
   =>
   (printout t "Based on your answers, your stress level is Moderate(Insufficient study hours but good time management, and not young)" crlf))

(defrule rule4
   (studyhours yes)
   (age no)
   (timemanagement no)
   =>
   (printout t "Based on your answers, your stress level is Moderate(Insufficient study hours and not young, with poor time management)" crlf))

(defrule p5
   (studyhours no)
   =>
   (printout t "Are the student's sleep hours less than 6? ")
   (assert (sleephours (read))))

(defrule p6
   (studyhours no)
   (sleephours yes)
   =>
   (printout t "Does the student experience difficulty concentrating due to lack of sleep? ")
   (assert (lackofconcentration (read))))

(defrule rule5
   (studyhours no)
   (sleephours yes)
   (lackofconcentration yes)
   =>
   (printout t "Based on your answers, your stress level is High(Insufficient sleep and difficulty concentrating)" crlf))

(defrule rule6
   (studyhours no)
   (sleephours yes)
   (lackofconcentration no)
   =>
   (printout t "Based on your answers, your stress level is Moderate(Insufficient sleep but no difficulty concentrating)" crlf))

(defrule p7
   (studyhours no)
   (sleephours no)
   =>
   (printout t "Does the student report low social support? ")
   (assert (lowsocialsupport (read))))

(defrule p8
   (studyhours no)
   (lowsocialsupport yes)
   =>
   (printout t "Is the student actively seeking social support? ")
   (assert (seekingsocialsupport (read))))

(defrule rule7
   (studyhours no)
   (lowsocialsupport yes)
   (seekingsocialsupport yes)
   =>
   (printout t "Based on your answers, your stress level is Moderate(Insufficient social support, but seeking help)" crlf))

(defrule rule8
   (studyhours no)
   (lowsocialsupport yes)
   (seekingsocialsupport no)
   =>
   (printout t "Based on your answers, your stress level is High(Insufficient social support and not seeking help)" crlf))

(defrule p9
   (studyhours no)
   (lowsocialsupport no)
   =>
   (printout t "Are the student's study hours between 5 and 7? ")
   (assert (studyhoursbetween5and7 (read))))

(defrule p10
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 yes)
   =>
   (printout t "Does the student engage in stress-relief activities? ")
   (assert (stress-reliefactivities (read))))

(defrule rule9
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 yes)
   (stress-reliefactivities yes)
   =>
   (printout t "Based on your answers, your stress level is Low(Moderate study hours with stress-relief activities)" crlf))

(defrule rule10
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 yes)
   (stress-reliefactivities no)
   =>
   (printout t "Based on your answers, your stress level is Moderate(Moderate study hours but no stress-relief activities)" crlf))

(defrule p11
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   =>
   (printout t "Is the student's age greater than or equal to 20? ")
   (assert (agelessorequal20 (read))))

(defrule p12
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 yes)
   =>
   (printout t "Are the student's sleep hours less than 6? ")
   (assert (sleephourslessthan6 (read))))

(defrule rule11
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 yes)
   (sleephourslessthan6 yes)
   =>
   (printout t "Based on your answers, your stress level is High(Older student with insufficient sleep)" crlf))

(defrule rule12
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 yes)
   (sleephourslessthan6 no)
   =>
   (printout t "Based on your answers, your stress level is Low(Older student with adequate sleep)" crlf))

(defrule p13
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 no)
   =>
   (printout t "Is the student actively engaged in physical exercise for at least 30 minutes a day? ")
   (assert (physicalexercise (read))))

(defrule p14
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 no)
   (physicalexercise yes)
   =>
   (printout t "Is the student's sleep hours less than 7? ")
   (assert (sleephourslessthan7 (read))))

(defrule rule13
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 no)
   (physicalexercise yes)
   (sleephourslessthan7 yes)
   =>
   (printout t "Based on your answers, your stress level is Moderate(Regular exercise but insufficient sleep)" crlf))

(defrule rule14
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 no)
   (physicalexercise yes)
   (sleephourslessthan7 no)
   =>
   (printout t "Based on your answers, your stress level is Low(Regular exercise and adequate sleep)" crlf))

(defrule p15
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 no)
   (physicalexercise no)
   =>
   (printout t "Is the student experiencing a significant life event or personal challenge (e.g., family issues, financial difficulties)? ")
   (assert (challenges (read))))

(defrule rule15
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 no)
   (physicalexercise no)
   (challenges yes)
   =>
   (printout t "Based on your answers, your stress level is High Stress Level (Facing significant life challenges)" crlf))

(defrule rule16
   (studyhours no)
   (lowsocialsupport no)
   (studyhoursbetween5and7 no)
   (agelessorequal20 no)
   (physicalexercise no)
   (challenges no)
   =>
   (printout t "Based on your answers, your stress level is Low Stress Level (No significant life challenges identified)" crlf))
