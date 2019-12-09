# Welcome to my Tyla Devon's Enigma Project

# Here you can encrypt and decrypt simple text using your Command Line Interface, or CFI.

# To begin, clone down this repo and open in a text editor.

# Open the message.txt file at the bottom of the project.

# The message should read, "Tylas encryptor is great"

# You can replace this message with any message you would like.

# After you have the message you would like to encrypt...

# Run the following command in your terminal, ensuring first that you are within the Root folder of Enigma:
    ruby ./command/encrypt.rb message.txt encrypted.txt

# You should receive a response in the terminal like this one:
    Created encrypted.txt with the key 19883 and date 081219
    Please Note: the key and date that you get back will differ from mine here.

# Go to the encrypted.txt file to view the encrypted message. It should look something like this:
    ohovnjhhyaajoyuudbcamodn
# That's great! It encrypted your message.
# Now to decrypt it.

#Using the same key and date that your terminal responded with in the encrypt response, run the following command:
    ruby ./command/decrypt.rb encrypted.txt decrypted.txt 19883 081219

# You should receive a response like this:
    Created decrypted.txt with the key 98247 and date 081219

# Now go to your decrypted.txt file to see the decrypted text:
    tylas encryptor is great

# Notice that their are no spaces in the encrypted message, as well as all lowercase in the decrypted message. 
