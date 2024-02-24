# shopt extglob
No Bash, extglob (Extended Globbing) é uma opção que estende a funcionalidade dos padrões de expansão de filename (globbing). Quando a opção extglob é habilitada com o comando shopt -s extglob, você pode usar padrões de expansão de filename mais avançados, oferecendo maior flexibilidade na correspondência de padrões.

Teoria:

Com a opção extglob ativada, você pode usar os seguintes padrões de expansão de filename:

\?(pattern-list): Correspondência zero ou uma ocorrência do padrão na lista.
\*(pattern-list): Correspondência zero ou mais ocorrências do padrão na lista.
\+(pattern-list): Correspondência uma ou mais ocorrências do padrão na lista.
\@(pattern-list): Correspondência exatamente uma ocorrência do padrão na lista.
\!(pattern-list): Correspondência qualquer coisa exceto o padrão na lista.
Exemplo Prático:

```bash
# Habilitando a opção extglob
shopt -s extglob

# Exemplo de padrões de expansão com extglob

# ?(pattern-list): zero ou uma ocorrência
echo a?(b|c)  # Correspondência: a, ab, ac

# *(pattern-list): zero ou mais ocorrências
echo a*(b|c)  # Correspondência: a, ab, ac, abb, acc, abbb, accc, ...

# +(pattern-list): uma ou mais ocorrências
echo a+(b|c)  # Correspondência: ab, ac, abb, acc, abbb, accc, ...

# @(pattern-list): exatamente uma ocorrência
echo a@(b|c)  # Correspondência: ab, ac

# !(pattern-list): qualquer coisa exceto
echo !(a)      # Correspondência: b, c, ab, ac, bb, bc, ca, cb, ...

# Desabilitando a opção extglob (se necessário)
shopt -u extglob
```

Neste exemplo, ao habilitar extglob, os padrões de expansão de filename estendidos estão disponíveis para serem utilizados. Cada padrão de expansão é seguido por uma lista de padrões separados por |. Os exemplos ilustram diferentes tipos de correspondência possível com esses padrões estendidos.

---

### wildcards
The following wildcards can be used in extended globbing in Zsh:
Note: The extend_glob option must be set in Zsh for extended globbing to be enabled.
```
    * - Matches any number of characters, including zero.
    ? - Matches exactly one character.
    [set] - Matches any single character in the set.
    [^set] - Matches any single character that is not in the set.
    [x-y] - Matches any single character within the range of x to y.
    # - Matches zero or one character.
    ## - Matches zero or more characters.
    % - Matches any single character except / (directory separator).
    %% - Matches any sequence of characters except / (directory separator).
    ^ - Matches the start of a string, for example, ^abc matches strings that start with "abc".
    $ - Matches the end of a string, for example, abc$ matches strings that end with "abc".
```
The wildcards that can be used in extended globbing on bash are:
Note: These wildcards can be used in extended globbing with the "extglob" option enabled in the shell with the command "shopt -s extglob".
```
        (asterisk) - Matches zero or more characters.
    ? (question mark) - Matches exactly one character.

     (square brackets) - Matches any one of the characters enclosed.
    ! (exclamation mark) - Negates the match, used inside square brackets.
    @ (at sign) - Matches any one of the given names within the curly braces.
        (plus sign) - Matches one or more of the preceding item.
    ^ (caret) - Matches only files that do not match the following pattern.
```

---
