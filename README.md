# CRMB2B - WIP
*Step by Step transformation on an Excel Spreadsheet into a faster and leaner CRM for B2B salesmen.*

Hello, reader! My name is Lucas and this is a small project I've been working on for both educational and professional reasons. The main goal of this project is to turn a very poorly organized spreadsheet into an easy to use CRM that tracks what actually matters for daily operations without the bloat or slowness of the current commercial alternatives.

## Steps and Functionalities
### Preparation of files - DONE
- **Column Correction:** done manually as a pre-step. In short, 2 columns were eliminated; `last_contact` and `has_product`. `last_contact` was supposed to track last call date, but wasn't used as such and contained only irrelevant information, `has_product` was just a visual cue that's not needed in an SQL application. 
- **Run cleanup_export.ipynb:** small script that does 2 jobs: reads original file and highlights anything that's likely wrong (eg.: numbers where it's supposed to be a name), and formats what's already correct.
- **Cell correction:** chosen to be done manually, as the main spreadsheet actually contains data that I use for work, therefore needing personal inputs and choices to achieve as close to 100% accuracy as possible.
- **Re-run of cleanup_export.ipynb:** checking for missed errors and final formating.
- **BONUS:** creation and upload of `gibberify.ipynb`, a quick randomizer to protect the privacy and data of the companies I work with. Small groups of vowels and consonants were created to try and avoid a massive eyesore, but it can definitely be further optimized as a fun excercise later on. Both spreadsheets `Gibb Corrected.xlsx` and `Gibb Original.xlsx` are uploaded as well as a base for anyone who wants to follow along the project using the original structure.

### SQL Structure:
- **Structures defined:** Entities defined as primary tables solely as `name`, relationships defined as `name1_name2` with foreign keys. 

### To come:
- Upload of SQL structure;
- Trasfer of excel data into SQL database;
- Front end and hosting.
