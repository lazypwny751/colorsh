# colorsh 1.0.0
a simple color library written in bash

## installation:

### step 1
```bash
git clone https://github.com/lazypwny751/colorsh.git && cd colorsh && sudo make install
```

### step 2
install the [themis](https://github.com/ByCh4n-Group/themis) projact then just add the [standart themis library repository](https://github.com/ByCh4n-Group/regular-modules) and just type **sudo themis install colorsh**

### step 3
also you can use the [binary packages](https://github.com/lazypwny751/colorsh/releases)

## usage:

### color variables and values you can use in this library

${reset}      # Reset Colors
<br>
${black}      # Black
<br>
${red}        # Red
<br>
${green}      # Green
<br>
${yellow}     # Yellow
<br>
${blue}       # Blue
<br>
${purple}     # Purple
<br>
${cyan}       # Cyan
<br>
${white}      # White
<br>
${Bblack}     # Bold Black
<br>
${Bred}       # Bold Red
<br>
${Bgreen}     # Bold Green
<br>
${Byellow}    # Bold Yellow
<br>
${Bblue}      # Bold Blue
<br>
${Bpurple}    # Bold Purple
<br>
${Bcyan}      # Bold Cyan
<br>
${Bwhite}     # Bold  White
<br>
${Ublack}     # UnderLined Black
<br>
${Ured}       # UnderLined Red
<br>
${Ugreen}     # UnderLined Green
<br>
${Uyellow}    # UnderLined Yellow
<br>
${Ublue}      # UnderLined Blue
<br>
${Upurple}    # UnderLined Purpe
<br>
${Ucyan}      # UnderLined Cyan
<br>
${Uwhite}     # UnderLined White
<br>
${BGblack}    # BackGround Black
<br>
${BGred}      # BackGround Red
<br>
${BGgreen}    # BackGround Green
<br>
${BGyellow}   # BackGround Yellow
<br>
${BGblue}     # BackGround Blue
<br>
${BGpurple}   # BackGround Purple
<br>
${BGcyan}     # BackGround Cyan
<br>
${BGwhite}    # BackGround White
<br>
${Iblack}     # Intensified Black
<br>
${Ired}       # Intensified Red
<br>
${Igreen}     # Intensified Green
<br>
${Iyellow}    # Intensified Yellow
<br>
${Iblue}      # Intensified Blue
<br>
${Ipurple}    # Intensified Purple
<br>
${Icyan}      # Intensified Cyan
<br>
${Iwhite}     # Intensified White
<br>
${BIblack}    # BoldIntensified Black
<br>
${BIred}      # BoldIntensified Red
<br>
${BIgreen}    # BoldIntensified Green
<br>
${BIyellow}   # BoldIntensified Yellow
<br>
${BIblue}     # BoldIntensified Blue
<br>
${BIpurple}   # BoldIntensified Purple
<br>
${BIcyan}     # BoldIntensified Cyan
<br>
${BIwhite}    # BoldIntensified White
<br>
${BGIblack}   # BoldBacgroundIntensified Black
<br>
${BGIred}     # BoldBacgroundIntensified Red
<br>
${BGIgreen}   # BoldBacgroundIntensified Green
<br>
${BGIyellow}  # BoldBacgroundIntensified Yellow
<br>
${BGIblue}    # BoldBacgroundIntensified Blue
<br>
${BGIpurple}  # BoldBacgroundIntensified Purple
<br>
${BGIcyan}    # BoldBacgroundIntensified Cyan
<br>
${BGIwhite}   # BoldBacgroundIntensified White
<br>

#### lolbash is a function that offers random colors similar to lolcat 
#### Usage: echo -e "$(randomcolor) hello${reset}"

#### lolbash is a function that offers random colors similar to lolcat for every character(s)
#### Usage: echo -e "$(lolbash) hello${reset}"

### Example
```bash
source /usr/local/lib/themis/colorsh.sh

echo -e "${red} Hello ${blue} World ${reset}! $(randomcolor) Test${reset}"
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
