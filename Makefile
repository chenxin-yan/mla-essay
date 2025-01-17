final: build

build: ./essay.md
	rm -rf out.md dist
	touch output.md
	cat ./src/header.md >> output.md
	cat ./essay.md >> output.md
	cat ./assets/footer.md >> output.md
	./assets/markdown_to_docx_mla.sh output.md
	rm -rf output.md
	mkdir dist
	mv output.docx dist/essay.docx

clean:
	rm -rf out.md dist

