lessoncount=int(input("Kaç adet ders notu gireceksiniz?"))
passedExams=0   
failedexams=0

KalanDersler=[]
GecilenDersler=[]

for i in range(lessoncount):
    lessonExam1=float(input(f"{i+1}.ders için vize notunu giriniz"))
    lessonExam2=float(input(f"{i+1}.ders için final  notunu giriniz"))

    totalExamNote=(lessonExam1 * 0.4)+(lessonExam2 * 0.6)

    if totalExamNote >= 50:
        passedExams+=1
        GecilenDersler.append(totalExamNote)
    else:
        failedexams+=1
        KalanDersler.append(totalExamNote)


    print(f"Başarılı ders sayısı: {GecilenDersler} ")
    print(f"Kalınan ders sayısı: {lessoncount-GecilenDersler} ")
    print(f"Kalınan derslerin notu :{KalanDersler} geçilen derslerin notu: {GecilenDersler}")
    
