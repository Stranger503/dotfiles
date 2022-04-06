#!/bin/bash

Ocaml_Book="/opt/Online-Books/realworld-Ocaml/_build/default/static"
Reasonably_Polymorphic="/opt/Online-Books/reasonablypolymorphic.com/"
Elixir="/opt/Online-Books/school_house/"
Wiki="$HOME/Wiki/"
Crystal="/opt/Online-Books/api/"
D="$HOME/opt/dmd2/html/d"
Go="$HOME/opt/Go"
Python="$HOME/opt/python"
Haskell="$HOME/opt/Haskell"
Ocaml_Docs="$HOME/opt/ocaml"
Data_Science="/home/shahid/PyTorch.docs/"

# PORTS=[]
# export PORTS

declare options=("Mousewheel
Redshift
Redshift-Kill
Day-Mode
Elixir-School
Reasonably_Polymorphic
Crystal
D
Realworld_Ocaml
Ocaml_Docs
PyTorch_Docs
Go
Python
Haskell
Wikibooks
Scrot
Wikipedia
Setbg
Kill_Emacs
Wikipedia-zim")

FILE=$(echo -e "${options[@]}" | dmenu -i -fn "mono-14" -p "$1" -nb  "#1d1100"  -sb "#6fa695" -sf "#010101" -nf gray  -p 'Run Scripts:')

case "$FILE" in

Mousewheel)
	exec mouse_wheel.sh;
		;;
Redshift)
	exec redshift -l 12.9716:77.5946;
		;;
Redshift-Kill)
	 pidof redshift | xargs kill;;
Day-Mode)
	exec redshift -l 42.9716:17.5946;
	  ;;
Realworld_Ocaml)
	killport 8884 ; cd $Ocaml_Book && php -S localhost:8884 -f index.html & notify-send "Ocaml_book -> localhost:8884"
		;;
	Ocaml_Docs)
		killport 8819 ; cd $Ocaml_Docs && php -S localhost:8819 -f index.html & notify-send "Ocaml_Docs -> localhost:8819"
		;;
Reasonably_Polymorphic)
	killport 8080 ; cd $Reasonably_Polymorphic && php -S localhost:8080 & notify-send "How things Works -> localhost:8080"
		;;
Crystal)
	killport 9456; cd $Crystal && php -S localhost:9456 & notify-send "Crystal -> localhost:9456"
		;;
Elixir-School)
	killport 4000  ; cd $Elixir && mix phx.server & notify-send "Elixir School -> localhost:4000"
		;;
 PyTorch_Docs)
		killport 8800; cd $Data_Science && php -S localhost:8800 -f index.html & notify-send "Pytorch_docs -> localhost:8800"
		;;
Wikipedia)
	killport 9454 ; cd $Wiki && kiwix-serve --port 9454 wikipedia_en_all_maxi_2021-12.zim & notify-send "Wikipedia -> localhost:9454"
		;;
Wikibooks)
	killport 9455 ; cd $Wiki && kiwix-serve --port 9455 wikibooks_en_all_maxi_2021-03.zim & notify-send "Wikibooks -> localhost:9455"
	;;
D)
	killport 9111; cd $D && php -S localhost:9111 -f index.html & notify-send "D -> localhost:9111"
	;;
Wikipedia-zim)
	killport 8888; cd $Wiki && python serve.py & notify-send "Wikipedia -> localhost:8888"
	;;
Ocaml)
	killport 8890; cd $Ocaml && php -S localhost:8890 -f index.html & notify-send "Ocaml -> localhost:8890"
	;;
Python)
	killport 8899; cd $Python && php -S localhost:8899 -f index.html & notify-send "Python -> localhost:8899"
	;;
Haskell)
	killport 9999; cd $Haskell && php -S localhost:9999 -f index.html & notify-send "Haskell -> localhost:9999"
	;;
Go)
	killport 8881; cd $Go && php -S localhost:8881 -f index.html & notify-send "Go -> localhost:8881"
	;;
Setbg)
	exec setbg
	;;
Kill_Emacs)
	exec pidof emacs | cut  -f 1 -d " " | xargs kill
	;;
Scrot)
	 scrot -s;;
	*)
		exit 1
	;;
esac
# alacritty -e nvim "$FILE"
