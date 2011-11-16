<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
  </head>
  <body>
    <div id="container">
    <div id="border">
      ${self.header()}
      <div id="main">
        <div id="content">
          ${next.body()}
        </div><!-- End content -->
        <div id="right_column">
        <div id="categories">
            <h2>Categories</h2>
            <ul>
            % for category, num_posts in bf.config.blog.all_categories:
                <li><a href="${category.path}">${category}</a> (<a href="${category.path}/feed">rss</a>) (${num_posts})</li>
            % endfor
            </ul>
        </div><!--end categories-->
        </div><!--end right_column-->
    </div><!-- End Main -->
    <div id="footer">
        ${self.footer()}
    </div> <!-- End Footer -->
    </div> <!-- End border -->
    </div> <!-- End container -->
  </body>
</html>
<%def name="head()">
  <%include file="head.mako" />
</%def>
<%def name="header()">
  <%include file="header.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
