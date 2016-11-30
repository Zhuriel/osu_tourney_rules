# osu_tourney_rules
A generator for osu! tournament rulesets

To generate a ruleset, copy and adapt `config/example.config.tex` to the rules for your tournament and save it as `config/<your_tournament>.config.tex`.

Then run `RULESCONFIG=<your_tournament> make all` to compile the PDF files.
