run-local:
	bundle install
	bundle exec jekyll serve --livereload

run-docker:
	docker image build -t resume-template .    
    docker run --rm --name resume-template -v "$PWD":/home/app --network host resume-template
	
	docker run --rm -it -v "$PWD":/srv/jekyll -p 4000:4000 jekyll/jekyll jekyll serve --livereload