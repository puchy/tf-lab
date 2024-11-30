# TF LAB 3

## Úkoly

### data_types

- Ukázka variables a outputs různých datových typů, jejich převody
- Spustit terraform plan v podadresáři data_types

### local_file_1

- Spustit terraform v podadresáři local_file_1
- 1 Vytvoří se soubor example.txt s obsahem "Hello, Terraform!"
- 2 Rozšiřte modul o for_each, který bude načítat hodnotu z var.files a zajistíme, aby názvy byly vždy malými písmeny
- 3 Přidejte časové razítko - funkce timestamp
- 4 přidej do mapy také variable pro extension souboru
- 5 Přidat validaci na vstupu pro extension, můžou být jen log a txt

### local_file_2

- Spustit terraform v podadresáři local_file_1
- ```data "local_file```: Načítání konfiguračního yaml souboru.
- ```yamldecode```: Dekódování obsahu YAML souboru na Terraform struktury.
- ```for_each```: Používá se pro iteraci nad seznamem serverů a generování souborů.
- ```dynamic```: (Simulováno přes output) Dynamické generování struktury výstupu.
- ```lower```: Převede role serverů na malá písmena.
- ```try```: Bezpečné načítání hodnot s fallbackem při chybě.
- ```templatefile```: Generování obsahu souborů na základě šablony.
