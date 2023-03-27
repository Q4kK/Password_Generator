import random

alphabet_lowercase = "abcdefghijkmnopqrstuvwxyz"
alphabet_uppercase = "ABCDEFGHJKLMNPQRSTUVWXYZ"
numeric_values = "0123456789"
special_characters = "!@#%^&*()~/-|"

full_alphabet = []
generated_password = ""

if input("Do you want uppercase letters? [Y][N]: ").lower() == "y":
    full_alphabet.extend(alphabet_uppercase)
if input("Do you want lowercase letters? [Y][N]: ").lower() == "y":
    full_alphabet.extend(alphabet_lowercase)
if input("Do you want numbers? [Y][N]: ").lower() == "y":
    full_alphabet.extend(numeric_values)
if input("Do you want special characters? [Y][N]: ").lower() == "y":
    full_alphabet.extend(special_characters)

pw_num = int(input("Enter the amount of passwords you want to generate:"))
try:
    pass_chars = int(input("Enter the amount of characters you want for each password (Default 11):"))
except:
    pass_chars = 11

for c in range(pw_num):
    for i in range(pass_chars):
        generated_password += random.choice(full_alphabet)
    print(generated_password)
    generated_password = ""