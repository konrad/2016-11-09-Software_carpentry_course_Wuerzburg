pdf: readme_pdf git_pdf	unix_shell_pdf python_pdfs

readme_pdf:
	pandoc \
	  -o README.pdf \
	  --latex-engine xelatex \
	  --variable mainfont="DejaVu Sans" \
	  --variable sansfont="DejaVu Sans" \
	  -V geometry:"top=2cm, bottom=2.0cm, left=2.5cm, right=2.5cm" \
	  README.md

git_pdf:
	pandoc \
	  -o Git.pdf \
          --toc \
	  --latex-engine xelatex \
	  --variable mainfont="DejaVu Sans" \
	  --variable sansfont="DejaVu Sans" \
	  -V geometry:"top=2cm, bottom=2.0cm, left=2.5cm, right=2.5cm" \
	  Git/Git.md

unix_shell_pdf:
	pandoc \
	  -o Unix_Shell.pdf \
          --toc \
	   --latex-engine xelatex \
	   --variable mainfont="DejaVu Sans" \
	   --variable sansfont="DejaVu Sans" \
	   -V geometry:"top=2cm, bottom=2.0cm, left=2.5cm, right=2.5cm" \
	  Unix_Shell/Unix_Shell.md

	pandoc \
	  -o Unix_Shell_cheat_sheet.pdf \
	   --latex-engine xelatex \
	   --variable mainfont="DejaVu Sans" \
	   --variable sansfont="DejaVu Sans" \
	   -V geometry:"top=2cm, bottom=2.0cm, left=2.5cm, right=2.5cm" \
	  Unix_Shell/Unix_Shell_cheat_sheet.md

python_pdfs:
	pandoc \
	  -o Python.pdf \
          --toc \
	   --latex-engine xelatex \
	   --variable mainfont="DejaVu Sans" \
	   --variable sansfont="DejaVu Sans" \
	   -V geometry:"top=2cm, bottom=2.0cm, left=2.5cm, right=2.5cm" \
	  Python/Python.md

	pandoc \
	  -o Python_references.pdf \
          --toc \
	   --latex-engine xelatex \
	   --variable mainfont="DejaVu Sans" \
	   --variable sansfont="DejaVu Sans" \
	   -V geometry:"top=2cm, bottom=2.0cm, left=2.5cm, right=2.5cm" \
	  Python/Python_references.md

example_files:
	mkdir -p unix_course_files
	echo "This file\ncontains three\nlines." \
	  > unix_course_files/three_lines.txt
	echo "This file\ncontains two lines." \
	  > unix_course_files/two_lines.txt
	echo "999\n1\n55\n7777\n3\n42\n555\n23" \
	  > unix_course_files/unsorted_numbers.txt
	echo "ATGTGGTAGTAGTATGAAATGTGA" \
	  > unix_course_files/DNA.txt
	echo "Name\tStart\tStop\tStrand" \
	  > unix_course_files/genes.csv
	echo "dnaA\t1\t1416\t+" \
	  >> unix_course_files/genes.csv
	echo "gyrA\t6479\t8908\t+" \
	  >> unix_course_files/genes.csv
	echo "rpsF\t29330\t29788\t+" \
	  >> unix_course_files/genes.csv
	echo "yidC\t3986072\t3987691\t-" \
	  >> unix_course_files/genes.csv
	echo "tRNA\ntRNA\ntRNA\nrRNA\nrRNA\nmRNA\nmRNA\nmRNA\nmRNA" \
	  > unix_course_files/redundant.txt
	wget -cO unix_course_files/origin_of_species.txt \
          http://www.gutenberg.org/cache/epub/22764/pg22764.txt     

clean:
	rm -f *pdf *~
