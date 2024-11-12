# Command-Line Tools Cheat Sheet

## `wc` (Word Count)
- **`wc filename`**: Display line, word, and byte count for `filename`.
- **`wc -l filename`**: Display the number of lines in `filename`.
- **`wc -w filename`**: Display the number of words in `filename`.
- **`wc -c filename`**: Display the number of bytes in `filename`.

## `cut` (Cut Out Selected Portions)
- **`cut -d 'delimiter' -f field_number filename`**: Extract specified fields from `filename` using the given delimiter.
- **`cut -c character_range filename`**: Extract specific characters from each line in `filename`.

**Examples:**
- `cut -d ':' -f 1 /etc/passwd` – Extract the first field (username) from `/etc/passwd`.
- `cut -c 1-5 file.txt` – Display characters 1 to 5 of each line in `file.txt`.

## `grep` (Global Regular Expression Print)
- **`grep 'pattern' filename`**: Search for `pattern` in `filename`.
- **`grep -i 'pattern' filename`**: Case-insensitive search.
- **`grep -r 'pattern' directory`**: Recursively search for `pattern` in `directory`.
- **`grep -v 'pattern' filename`**: Display lines that do *not* match `pattern`.

**Examples:**
- `grep 'error' log.txt` – Find all occurrences of 'error' in `log.txt`.
- `grep -n 'main' code.c` – Display lines with 'main' along with line numbers.

## `awk` (Pattern Scanning and Processing Language)
- **`awk '{print $1, $3}' filename`**: Print the first and third columns from `filename`.
- **`awk '/pattern/ {action}' filename`**: Perform `action` on lines matching `pattern`.

**Examples:**
- `awk '{print $2}' data.txt` – Print the second column of each line in `data.txt`.
- `awk '/error/ {print $0}' log.txt` – Print all lines containing 'error' in `log.txt`.

## `sed` (Stream Editor)
- **`sed 's/old/new/' filename`**: Replace the first occurrence of `old` with `new` in each line of `filename`.
- **`sed 's/old/new/g' filename`**: Replace all occurrences of `old` with `new` globally in each line.
- **`sed '/pattern/d' filename`**: Delete lines matching `pattern`.

**Examples:**
- `sed 's/foo/bar/g' file.txt` – Replace 'foo' with 'bar' in `file.txt`.
- `sed '/^$/d' file.txt` – Remove all blank lines from `file.txt`.

---

These commands provide powerful text processing capabilities, ideal for data manipulation and analysis.