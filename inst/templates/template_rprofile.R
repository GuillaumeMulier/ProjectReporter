


setHook("rstudio.sessionInit", function(newSession) {

  cat(c(" ", "Marmot's coffee:", " ",
        "                           ", "            L              ",
        "             v             ", "            @              ",
        "            @              ", "            @              ",
        "                           ", "                           ",
        "                           ", "      @@@@@@@@@@@@_        ",
        "    Q@@@@@Rkk\200@@@@@@Z      ", "    @@R          ?@@@@@    ",
        "    @@@@@@@@@@@@@@@@\200 @@   ", "    @@@@@@@@@@@@@@@@   @   ",
        "    @@@@@@@@@@@@@@@@   @@  ", "     @@@@@@@@@@@@@@@   @_  ",
        "     @@@@@@@@@@@@@@?  @@   ", "  @@  @@@@@@@@@@@@@@@@@    ",
        " ;    @@@@@@@@@@@@     @   ", "?       @@@@@@@@L      @   ",
        " @@      @@@@@@?     v@    ", "   @@@@Q        $@@@@@     ",
        "     @@@@@@@@@@@@@@        ", "        k@@@@@@@           ",
        "                           ", " ", " ", " "),
      sep = "\n")

  RepliquesKamelott <- c(
    "C est pas faux !\n          Perceval",
    "Faut arreter ces conneries de nord et de sud ! Une fois pour toutes, le nord, suivant comment on est tourne, ça change tout !\n          Perceval",
    "C est vrai ce qu’on dit, vous êtes le fils d un demon et d une pucelle ? Vous avez plus pris de la pucelle.\n          Arthur",
    "La fleur dans bouquet fane et jamais ne renait.\n          Roi Burgonde",
    "Elle est ou la poulette ?\n          Kadoc",
    "Pardon j ai voulu faire un soufflet ; il est parti un peu vite.\n          Karadoc",
    "Je ne mange pas de graines !\n          Maitre d armes"
  )
  cat(sample(RepliquesKamelott, 1))

}, action = "append")

