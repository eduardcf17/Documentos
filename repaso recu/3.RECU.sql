select nom,(QTAT_LLITS/(select count(*) from PLANTILLA where HOSPITAL_COD=HOSPITAL.HOSPITAL_COD)) from HOSPITAL;