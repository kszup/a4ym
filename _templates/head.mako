<title>${bf.config.blog.name}
    %if post and post.title:
        ${post.title}
    %endif
</title>

<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<meta name="author" content="kszup" />
<meta name="keywords" content="Avenue For Your Music" />
<meta name="description" content="A kszup collection." />
<meta name="robots" content="none" />
    
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="${bf.util.site_path_helper(bf.config.blog.path,'/feed')}" />
<link rel="alternate" type="application/atom+xml" title="Atom 1.0"
href="${bf.util.site_path_helper(bf.config.blog.path,'/feed/atom')}" />
<link rel='stylesheet' href='${bf.config.filters.syntax_highlight.css_dir}/A4YM.css' type='text/css' />
<link rel='stylesheet' href='${bf.config.filters.syntax_highlight.css_dir}/A4YMnav.css' type='text/css' />
<link rel='stylesheet' href='${bf.config.filters.syntax_highlight.css_dir}/pygments_${bf.config.filters.syntax_highlight.style}.css' type='text/css' />