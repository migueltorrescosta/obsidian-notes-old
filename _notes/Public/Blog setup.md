#coding #personal-productivity 

# Links

## Obsidian / Jekyll Templates
- [Jekyll Garden](https://github.com/Jekyll-Garden/jekyll-garden.github.io)
	- Pretty but graphless
	- Contains a search bar :D
	- [Preview template](https://hiran.in/)
- [Digital Garden Setup](https://github.com/maximevaillancourt/digital-garden-jekyll-template)
	- Simple layout.
	- The `notes_graph.json` needs to be generated locally, which we might be able to do easily with `pre-push` hooks.
	- [Preview template](https://digital-garden-jekyll-template.netlify.app/your-first-note)

## Documentation
- [Jekyll's Documentation](https://jekyllrb.com/docs/collections/)

# Next Steps
#next-steps 
- [x]  Copy the Jekyll Garden setup into a personal repo
- [x]  Setup dependabot / renovate ( use all latest versions )
- [ ] Setup Broken Link checker
- [ ] Add this Obsidian Notes into it
	- [ ] Add Non-Public notes to gitignore!
- [ ] Locally
	- [ ] Write a script to add the appropriate YAML front matter to the Public posts
	- [ ] Test bundle exec [[Jekyll]] build until you're happy with it.
	- [ ] Maybe: Write a script to generate the `notes_graph.json` file needed for rendering the local graph.
- [ ] Check
	- [ ] LaTeX rendering might force us to use MathJax rather than kramdown, as per [this comment on Obsidian's forum](https://forum.obsidian.md/t/jekyll-garden-new-jekyll-theme-for-obsidian-users/23296/3).
	- [ ] Attempt to make Jekyll's Garden infer title names from the markdown document name. [This skip-front-matter plugin](https://discuss.asciidoctor.org/skip-front-matter-together-with-jekyll-titles-from-headings-td6129.html) might solve the issue
- [ ] Server
	- [ ] Maybe: Look into [Netlify](https://www.netlify.com/) / other static website deployment options
	- [ ] Write a GitHub action that runs the 2 steps above
	- [ ] Buy a Domain Name to publish it to