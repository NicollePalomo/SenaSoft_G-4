from PIL import Image
import pytesseract as tess
import cv2

path = 'C:/Users/SENA/Desktop/historiapp/formato.jpg'
pdf = Image.open(path)
pdf.save('C:/Users/SENA/Desktop/historiapp/historias_clinicas/paciente/Ronaldo_Stive_Guette_Ospino-21-10-2021.pdf')
pdf.save('C:/Users/SENA/Desktop/historiapp/historias_clinicas/fecha/21-10-2021-Ronaldo_Stive_Guette_Ospino.pdf')



tess.pytesseract.tesseract_cmd = r'C:/Program Files/Tesseract-OCR/tesseract.exe'


my_image = cv2.imread('C:/Users/SENA/Desktop/historiapp/formato.jpg')
txt = tess.image_to_string(my_image)
print(txt)

cv2.imshow('Image', my_image)
cv2.waitKey(0)
cv2.destroyAllWindows()

my_file = open('formato.txt', 'w')
my_file.write(txt + '\n')
my_file.close()