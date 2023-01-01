const eleventyNavigationPlugin = require("@11ty/eleventy-navigation")

module.exports = config => {

	config.addPassthroughCopy("src/META-INF")
	config.addPassthroughCopy("src/mimetype")
	config.addPassthroughCopy("src/package.opf")
	config.addPassthroughCopy("src/nav.xhtml")
	config.addPassthroughCopy("src/coverpage.xhtml")
	config.addPassthroughCopy("src/cover.jpg")

	config.addPlugin(eleventyNavigationPlugin)

	return {
		dir: {
			input: "src",
			output: "dist"
		}
	}
}