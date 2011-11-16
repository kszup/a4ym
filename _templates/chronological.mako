<%inherit file="site.mako" />
% for post in posts:
  <%include file="post.mako" args="post=post" />
% if bf.config.blog.disqus.enabled:
  <div class="after_post"><a href="${post.permalink}#disqus_thread">Read and Post Comments</a></div>
% endif

% endfor
% if prev_link:
 <div id="previous"><a href="${prev_link}">« Previous Page</a></div>
% endif
% if prev_link and next_link:
  --  
% endif
% if next_link:
 <div id="next"><a href="${next_link}">Next Page »</a></div>
% endif
