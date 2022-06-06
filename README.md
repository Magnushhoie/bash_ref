<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Magnushhoie/bash_ref">
    <img src="img/bash_ref.png" alt="Logo" width="350">
  </a>

  <h3 align="center">bash_ref</h3>

  <p align="center">
    Ultra-fast, <a href="https://asciinema.org/a/458105">terminal based</a> note writing and search app
  
  </p>
</p>

bash_ref aims to be your go-to terminal tool for searching and managing code-snippets, notes and references you want to have available with a few keypresses. Heavily uses FZF and vim.

bash_ref features:
- Interactive search and view across all text files in folder with FZF
- Edit file at last changed line or at search match
- Cleverly searches file if first keyword matches filename, otherwise defaults to searching keywords across all files
- Inline preview of file contents, code highlighting, partial search matches and more

<a href="https://asciinema.org/a/458105">
<img src="img/image.jpg" alt="Logo" width="700">

**[See bash_ref in 60 seconds on asciinema](https://asciinema.org/a/458105)**
  
## Installation

Sets up notes directory and adds aliases to ~/.bash_profile or ~/.zshrc.

```bash
# Requirements
brew install fzf
brew install bat
  
# Install
git clone https://github.com/Magnushhoie/bash_ref/
cd bash_ref
bash setup.sh
```

## Usage
- ref: Interactively search across all note files
- refe: List available files and their content, open file in vim

See [main.txt](_bash_ref/main.txt) for example note file.

## Documentation

Use "**ref --help**" for all arguments.

#### ref - "Reference look-up", search and view

```text
ref --help
usage: ref.sh [file] keywords
  file: File basename in note folder if existing. Default is main.txt
  keywords: Search terms, space-separated

Optional arguments:
  -l|--list                  Display and open files in notes folder
  -h|--help                  Displays this help

Example usage:
Interactively search and view files for lines starting with __ or #:
ref

Search for keywords "for" "loop"
ref for loop

Search python.py in note folder for "list" "comprehension"
ref python list comprehension
```

#### refe - "References edit", search and edit

```text
refe --help
usage: refe.sh [file] keywords
  file: File basename in note folder if existing. Default is main.txt
  keywords: Search terms, space-separated

Optional arguments:
     -o|--open                  Open file with default system editor
     -n|--new                   Create [filename] in notes folder
     -l|--list                  Displays searchable files in notes folder
     -h|--help                  Displays this help

Example usage:
Preview files in notes folder, then open selected file in vim
refe

Open and edit python.py at first line with "for loop"
refe python for loop

Create newfile.txt in notes folder
refe -n newfile.txt
```

## Testing

```bash
bash test/test.sh
```

## Compatibility
Compatible with zsh. Tested on MacOS Mojave/Big Sur and Ubuntu 21.04. 

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Magnushhoie/bash_ref.svg?style=for-the-badge
[contributors-url]: https://github.com/Magnushhoie/bash_ref/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Magnushhoie/bash_ref.svg?style=for-the-badge
[forks-url]: https://github.com/Magnushhoie/bash_ref/network/members
[stars-shield]: https://img.shields.io/github/stars/Magnushhoie/bash_ref.svg?style=for-the-badge
[stars-url]: https://github.com/Magnushhoie/bash_ref/stargazers
[issues-shield]: https://img.shields.io/github/issues/Magnushhoie/bash_ref.svg?style=for-the-badge
[issues-url]: https://github.com/Magnushhoie/bash_ref/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/Magnushhoie/bash_ref/blob/master/LICENSE.txt
