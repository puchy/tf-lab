# TF LAB 3

## Úkoly

### data_types

- Ukázka variables a outputs různých datových typů, jejich převody
- Spustit terraform plan v podadresáři data_types

### local_file_1

- Spustit terraform v podadresáři local_file_1
- Vytvoří se soubor example.txt s obsahem "Hello, Terraform!" (1)
- Rozšiřte modul o for_each, který bude načítat hodnotu z var.files a zajistíme, aby názvy byly vždy malými písmeny (2)
- Přidejte časové razítko - funkce timestamp (3)
- Přidejte do mapy také variable pro extension souboru (4)

### local_file_2

- Spustit terraform v podadresáři local_file_1
- ```data "local_file```: Načítání konfiguračního yaml souboru.
- ```yamldecode```: Dekódování obsahu YAML souboru na Terraform struktury.
- ```for_each```: Používá se pro iteraci nad seznamem serverů a generování souborů.
- ```dynamic```: (Simulováno přes output) Dynamické generování struktury výstupu.
- ```lower```: Převede role serverů na malá písmena.
- ```try```: Bezpečné načítání hodnot s fallbackem při chybě.
- ```templatefile```: Generování obsahu souborů na základě šablony.
