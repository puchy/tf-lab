# TF LAB 4

## Úkoly

### local_file_1

- Vytvořit podadresář ```local_file``` zkopírovat obsah z ```lab/3/local_file_1```
- Přidat validaci na vstupu pro extension - můžou být jen ```log``` a ```txt``` (5)
- Přidat ```precondition``` (například délka názvu souboru max. 15 znaků a že soubor byl úspěšně vytvořen)(6)
- Vyzkoušejte pomocí ```ignore_changes``` ignorovat obsah souboru. Měly by se začít ignorovat změny vyvolané časovým razítkem (7)
- Přejmenujte ```module "file_generator"``` na module ```"file_generator2"```, proveďte move ve state file
  - ```terraform state mv``` u jednoho
  - pomocí ```moved``` blocku u ostatních
