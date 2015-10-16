<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/atom:feed">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
			<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Atom Feed (Styled)</title>
	<link rel="stylesheet" type="text/css" href="http://www.walkingwithgrace.org.uk/assets/css/styles_feeling_responsive.css" />
	<script src="http://www.walkingwithgrace.org.uk/assets/js/modernizr.min.js"></script>
	
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
  <script>
    WebFont.load({
      google: {
        families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ] 
      }
    });
  </script>

  <noscript>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic|Volkhov' rel='stylesheet' type='text/css' />
  </noscript>
  
  
	
	<meta name="description" content="»Feeling Responsive« is a responsive theme for Jekyll based on the fabulous foundation framework with beautiful typography and a bright color palette." />
	
	

	

<link rel="icon" sizes="64x64" href="http://www.walkingwithgrace.org.uk/assets/img/favicon-64x64.png" />





































	<!-- Facebook Optimization -->
	<meta property="og:locale" content="en_EN" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="Atom Feed (Styled)" />
	<meta property="og:description" content="»Feeling Responsive« is a responsive theme for Jekyll based on the fabulous foundation framework with beautiful typography and a bright color palette." />
	<meta property="og:url" content="http://www.walkingwithgrace.org.uk//assets/xslt/atom.xslt" />
	<meta property="og:site_name" content="Walking with Grace" />
	

	

	<!-- Search Engine Optimization -->
	

	<link type="text/plain" rel="author" href="http://www.walkingwithgrace.org.uk/humans.txt" />

	
</head>
		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="http://www.walkingwithgrace.org.uk" class="icon-tree"> Walking with Grace</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Navigation</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              
                
              

          
          
        

              
                
              

          
          
        

              
                
              

          
          
        

              
                
              

          
          
        

              
                
              

          
          
            
            
              <li class="divider"></li>
              <li><a href="http://www.walkingwithgrace.org.uk/search/">Search</a></li>

            
            
          
        

              
                
              

          
          
            
            
              <li class="divider"></li>
              <li><a href="http://www.walkingwithgrace.org.uk/contact/">Contact Us</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              
                
              

          
          

            
            
              <li><a href="http://www.walkingwithgrace.org.uk/">Home</a></li>
              <li class="divider"></li>

            
            
          
        

              
                
              

          
          

            
            
              <li><a href="http://www.walkingwithgrace.org.uk/about-us/">About Us</a></li>
              <li class="divider"></li>

            
            
          
        

              
                
              

          
          

            
            
              <li><a href="http://www.walkingwithgrace.org.uk/donate/">Donate</a></li>
              <li class="divider"></li>

            
            
          
        

              
                
              

          
          

            
            

              <li class="has-dropdown">
                <a href="http://www.walkingwithgrace.org.uk/blog/">Blog</a>

                  <ul class="dropdown">
                    

                      
                        
                      

                      <li><a href="http://www.walkingwithgrace.org.uk/blog/archive/">Blog Archive</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              
                
              

          
          
        

              
                
              

          
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->

		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="http://www.walkingwithgrace.org.uk" title="Walking with Grace – Walking with Grace">
				<img src="http://www.walkingwithgrace.org.uk/assets/img/rounded_corner_logo.png" alt="Walking with Grace – Walking with Grace">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->








		


<div class="alert-box warning radius text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">Atom feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="atom:subtitle" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="atom:id" />
			</xsl:attribute>
			<xsl:value-of select="atom:title" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="atom:entry">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="atom:id" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="atom:title"/>
				<br/>
				<small><xsl:value-of select="atom:updated"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="atom:id"/></xsl:attribute>
						<xsl:value-of select="atom:title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="atom:content" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->
    
      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="b30 small-12 medium-6 columns credits">
            <p>
              Created with &hearts;
              by&nbsp;<a href=""></a>
              with&nbsp;<a href="http://jekyllrb.com/" target="_blank">Jekyll</a>
              based&nbsp;on&nbsp;<a href="http://phlow.github.io/feeling-responsive/">Feeling&nbsp;Responsive</a>.
            </p>
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns social-icons">
            <ul class="inline-list">
            
              <li><a href="http://twitter.com/walkingwgrace" target="_blank" class="icon-twitter" title="Follow Walking with Grace on Twitter"></a></li>
            
              <li><a href="https://www.facebook.com/walkingwithgraceuk" target="_blank" class="icon-facebook" title="Keep up to date with Walking with Grace on Facebook"></a></li>
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

		<script src="http://www.walkingwithgrace.org.uk/assets/js/javascript.min.js"></script>






<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-68945205-1', 'auto');
  ga('set', 'anonymizeIp', true);
  ga('send', 'pageview');

</script>







		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
