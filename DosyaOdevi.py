#! Şirket çalışanları verilerini tutan dosya oluşturulacak
#! Kullanıcıdan çalışan sayısı alınacak 
#! Çalışan sayısı kadar isim,soyisim,maaş bilgisi alınacak
#! Dosyadaki her satıra "Ad Soyad - Maaş" kalıbında çalışan bilgileri eklenecek.
#! Programın sonunda bu dosyadan bilgileri satır satır okuyup listeleyecek kod yazılacak. 
#! Eklenen çalışanlar mevcut çalışanları silmeyecek, üzerine yazılacak

employees = open("sample.txt", "a")

try:
   employeesCount = int(input("çalışan sayısı giriniz: "))

   for i in range(employeesCount):
        employeesInfo = input("çalışan adı-soyadı giriniz:")
        employeesSalary = float(input("çalışan maaş bilgisini giriniz:"))
except ValueError:
    print("Ad-Soyad bilgisinde rakam olamaz")
    print("Maaş bilgisinde string ifade olamaz")
finally:
    employees.write(f"{employeesInfo}, {employeesSalary}")
    print("işlem başarılı")
    print(f"{employeesInfo}  {employeesSalary}")
employees.close()