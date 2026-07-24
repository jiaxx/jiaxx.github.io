# Neural Coding Lab Website

forked from janczizikow/sleek

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Blog posts

Add posts to `_posts` using a `YYYY-MM-DD-title.md` filename and front matter like:

```yaml
---
layout: post
title: "Post title"
author: "Author name"
summary: "A short description for the blog index."
---
```

To add a figure with an accessible description, caption, and optional credit:

```liquid
{% include figure.html
   src="/assets/img/posts/example.jpg"
   alt="Description of the information shown in the figure"
   caption="Figure 1. A concise explanatory caption."
   credit="Image: Neural Coding Lab" %}
```

Posts display a reposting-rights notice by default. Set `rights_holder` in a post when it differs from the author, or set `reposting_notice: false` only when a different license is stated in the post itself.
