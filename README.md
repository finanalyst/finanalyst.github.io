
# RakuDoc renderer

	Renders RakuDoc sources into an output format dependent on templates

----

## Table of Contents

<a href="#SYNOPSIS">SYNOPSIS</a>   
<a href="#Overview">Overview</a>   
<a href="#Documentation">Documentation</a>   
<a href="#RenderTextify_utility">RenderTextify utility</a>   
<a href="#Wrapping">Wrapping</a>   
<a href="#RenderDocs_utility">RenderDocs utility</a>   
<a href="#Troubleshooting">Troubleshooting</a>   
<a href="#Credits">Credits</a>   



----

## SYNOPSIS<div id="SYNOPSIS"> </div>
&nbsp;&nbsp;• Clone the repository  
&nbsp;&nbsp;&nbsp;&nbsp;▹ <span class="para" id="fc2dfe0"></span>`git clone https://github.com/finanalyst/rakuast-rakudoc-render.git` 

  
&nbsp;&nbsp;&nbsp;&nbsp;▹ <span class="para" id="6846695"></span>`cd rakuast-rakudoc-render` 

  
&nbsp;&nbsp;• Install using zef as follows (flag is important)  
&nbsp;&nbsp;&nbsp;&nbsp;▹ <span class="para" id="8f021ca"></span>`zef install . -/precompile-install` 

  
<span class="para" id="351913a"></span>Note that `zef` runs the tests in `t/`, and those cause compilation of the modules in the distribution. 


## Diagram


![graph](<svg width="355pt" height="260pt"
 viewBox="0.00 0.00 354.64 260.00" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 256)">
<title>G</title>
<polygon fill="white" stroke="transparent" points="-4,4 -4,-256 350.64,-256 350.64,4 -4,4"/>
<!-- main -->
<g id="node1" class="node">
<title>main</title>
<ellipse fill="none" stroke="black" cx="183.59" cy="-234" rx="33.6" ry="18"/>
<text text-anchor="middle" x="183.59" y="-230.3" font-family="Times,serif" font-size="14.00">main</text>
</g>
<!-- parse -->
<g id="node2" class="node">
<title>parse</title>
<ellipse fill="none" stroke="black" cx="133.59" cy="-162" rx="36.29" ry="18"/>
<text text-anchor="middle" x="133.59" y="-158.3" font-family="Times,serif" font-size="14.00">parse</text>
</g>
<!-- main&#45;&gt;parse -->
<g id="edge1" class="edge">
<title>main&#45;&gt;parse</title>
<path fill="none" stroke="black" d="M172,-216.76C165.75,-208.02 157.92,-197.05 150.96,-187.31"/>
<polygon fill="black" stroke="black" points="153.79,-185.25 145.13,-179.15 148.09,-189.32 153.79,-185.25"/>
</g>
<!-- init -->
<g id="node4" class="node">
<title>init</title>
<ellipse fill="none" stroke="black" cx="67.59" cy="-90" rx="27" ry="18"/>
<text text-anchor="middle" x="67.59" y="-86.3" font-family="Times,serif" font-size="14.00">init</text>
</g>
<!-- main&#45;&gt;init -->
<g id="edge3" class="edge">
<title>main&#45;&gt;init</title>
<path fill="none" stroke="black" d="M154.81,-224.07C133.38,-215.95 105.1,-201.85 88.59,-180 75.18,-162.23 70.16,-137.22 68.36,-118.23"/>
<polygon fill="black" stroke="black" points="71.84,-117.85 67.65,-108.12 64.86,-118.34 71.84,-117.85"/>
</g>
<!-- cleanup -->
<g id="node5" class="node">
<title>cleanup</title>
<ellipse fill="none" stroke="black" cx="234.59" cy="-162" rx="46.59" ry="18"/>
<text text-anchor="middle" x="234.59" y="-158.3" font-family="Times,serif" font-size="14.00">cleanup</text>
</g>
<!-- main&#45;&gt;cleanup -->
<g id="edge4" class="edge">
<title>main&#45;&gt;cleanup</title>
<path fill="none" stroke="black" d="M195.42,-216.76C201.7,-208.14 209.56,-197.36 216.58,-187.73"/>
<polygon fill="black" stroke="black" points="219.42,-189.78 222.48,-179.63 213.76,-185.65 219.42,-189.78"/>
</g>
<!-- printf -->
<g id="node7" class="node">
<title>printf</title>
<ellipse fill="none" stroke="black" cx="309.59" cy="-18" rx="37.09" ry="18"/>
<text text-anchor="middle" x="309.59" y="-14.3" font-family="Times,serif" font-size="14.00">printf</text>
</g>
<!-- main&#45;&gt;printf -->
<g id="edge8" class="edge">
<title>main&#45;&gt;printf</title>
<path fill="none" stroke="black" d="M214.22,-226.34C239.02,-219.24 272.67,-205.41 290.59,-180 318.62,-140.25 317.47,-80.81 313.76,-46.37"/>
<polygon fill="black" stroke="black" points="317.19,-45.62 312.5,-36.12 310.25,-46.47 317.19,-45.62"/>
</g>
<!-- execute -->
<g id="node3" class="node">
<title>execute</title>
<ellipse fill="none" stroke="black" cx="181.59" cy="-90" rx="46.59" ry="18"/>
<text text-anchor="middle" x="181.59" y="-86.3" font-family="Times,serif" font-size="14.00">execute</text>
</g>
<!-- parse&#45;&gt;execute -->
<g id="edge2" class="edge">
<title>parse&#45;&gt;execute</title>
<path fill="none" stroke="black" d="M144.73,-144.76C150.58,-136.23 157.88,-125.58 164.44,-116.02"/>
<polygon fill="black" stroke="black" points="167.42,-117.86 170.19,-107.63 161.65,-113.9 167.42,-117.86"/>
</g>
<!-- make_string -->
<g id="node6" class="node">
<title>make_string</title>
<ellipse fill="none" stroke="black" cx="67.59" cy="-18" rx="67.69" ry="18"/>
<text text-anchor="middle" x="67.59" y="-14.3" font-family="Times,serif" font-size="14.00">make_string</text>
</g>
<!-- execute&#45;&gt;make_string -->
<g id="edge5" class="edge">
<title>execute&#45;&gt;make_string</title>
<path fill="none" stroke="black" d="M157.7,-74.33C141.68,-64.49 120.34,-51.39 102.44,-40.4"/>
<polygon fill="black" stroke="black" points="103.8,-37.12 93.44,-34.87 100.13,-43.09 103.8,-37.12"/>
</g>
<!-- execute&#45;&gt;printf -->
<g id="edge6" class="edge">
<title>execute&#45;&gt;printf</title>
<path fill="none" stroke="black" d="M207.5,-74.83C227.57,-63.86 255.5,-48.58 277.07,-36.79"/>
<polygon fill="black" stroke="black" points="278.79,-39.83 285.89,-31.96 275.44,-33.69 278.79,-39.83"/>
</g>
<!-- compare -->
<g id="node8" class="node">
<title>compare</title>
<ellipse fill="none" stroke="black" cx="203.59" cy="-18" rx="50.89" ry="18"/>
<text text-anchor="middle" x="203.59" y="-14.3" font-family="Times,serif" font-size="14.00">compare</text>
</g>
<!-- execute&#45;&gt;compare -->
<g id="edge9" class="edge">
<title>execute&#45;&gt;compare</title>
<path fill="none" stroke="black" d="M186.92,-72.05C189.37,-64.26 192.34,-54.82 195.08,-46.08"/>
<polygon fill="black" stroke="black" points="198.51,-46.86 198.16,-36.28 191.83,-44.77 198.51,-46.86"/>
</g>
<!-- init&#45;&gt;make_string -->
<g id="edge7" class="edge">
<title>init&#45;&gt;make_string</title>
<path fill="none" stroke="black" d="M67.59,-71.7C67.59,-63.98 67.59,-54.71 67.59,-46.11"/>
<polygon fill="black" stroke="black" points="71.09,-46.1 67.59,-36.1 64.09,-46.1 71.09,-46.1"/>
</g>
</g>
</svg>
)
	
----

## Overview<div id="Overview"> </div>
<span class="para" id="887ec44"></span>This distribution is intended to provide several renderers from RakuDoc v2 into commonly used output formats. 

<span class="para" id="cb2e9a3"></span>The basic render engine is `RakuDoc::Render`, which renders a RakuDoc source into text for display on a terminal. 

<span class="para" id="221bd19"></span>The Renderer class is designed to be extended to other output formats by subclassing. 

<span class="para" id="c0e52b5"></span>This is software using bleeding edge Rakudo, so look [at troubleshooting below](Troubleshooting). 

<span class="para" id="a9d8493"></span>Using the *Generic* renderer, the **canonical method** for generating rendered text is possible (which sends output to STDOUT, so pipe to a file), namely 


```
RAKUDO_RAKUAST=1 raku --rakudoc=Generic rakudociem-ipsum.rakudoc > store-output


```
<span class="para" id="81696a6"></span>Some [naive wrapping and width modification](Wrapping) is possible using environment variables. 

<span class="para" id="40878f3"></span>The file [rakudociem-ipsum.rakudoc](https://github.com/Raku/RakuDoc-GAMMA/blob/main/compliance-document/rakudociem-ipsum.rakudoc) is the file for testing RakuDoc v2 compliance. An uptodate copy can be obtained with: 


```
bin/get-compliance-document


```
<span class="para" id="f4a51f3"></span>A copy of `rakudociem-ipsum.rakudoc` is also contained in `resources/compliance-rendering`, together with renderings of the file using the output renderers in this distribution. 

<span class="para" id="bba4fc2"></span>In order to avoid environment variables, eg for Windows, a RakuDoc file can be rendered to Text using the [RenderTextify](RenderTextify utility). It avoids some installation problems, stores the output and offers some other output options, eg. 


```
bin/RenderTextify rakudociem-ipsum


```
<span class="para" id="416d7d2"></span>(the .rakudoc extension may be omitted if desired) 

<span class="para" id="c26bad9"></span>Rendering into the other output formats provided in this distribution can be done using [RenderDocs](RenderDocs utility). By default, sources are located in `docs/` and rendered to the current working directory into MarkDown, eg., 


```
bin/RenderDocs README


```

----

## Documentation<div id="Documentation"> </div>
<span class="para" id="4a6e64e"></span>All documentation can be found at [finanalyst.github.io](https://finanalyst.github.io). 

<span class="para" id="9ae1d19"></span>The two main documentation sources are: 



&nbsp;&nbsp;• <span class="para" id="8c91600"></span>[An overview of the generic renderer](https://finanalyst.github.io/Render) 

  
&nbsp;&nbsp;• <span class="para" id="0b80cbf"></span>[The templating system](https://finanalyst.github.io/Templates) 

  

----

## RenderTextify utility<div id="RenderTextify_utility"> </div>
<span class="para" id="ab8d800"></span>The utility `bin/RenderTexify` can be called with a RakuDoc source and it saves the result directly to a file, rather than to STDOUT. 

<span class="para" id="c976c61"></span>For example, 


```
bin/RenderTextify rakudociem-ipsum


```
<span class="para" id="6d462ae"></span>will produce the file 


```
rakudociem-ipsum.rakudoc.text


```
<span class="para" id="3fbe458"></span>The executable `bin/RenderTexify` can also be called with the flags `test` and `pretty` and the name of a file to render. The use case of these options is to see what templates receive from the rendering engine when developing new templates. 

<span class="para" id="63bbd59"></span>The file is output to text files with the flag and `.text` appended to the name. The file format `.rakudoc` is assumed, and added if missing. 

<span class="para" id="c976c61"></span>For example, 


```
bin/RenderTextify --pretty rakudociem-ipsum


```
<span class="para" id="6d462ae"></span>will produce the file 


```
rakudociem-ipsum.rakudoc.pretty.text


```

----

## Wrapping<div id="Wrapping"> </div>
<span class="para" id="1860541"></span>The text output will be naively wrapped (the algorithm is still being developed), either by setting the environment variable POSTPROCESSING=1 or using RenderTextify. For example, 


```
POSTPROCESSING=1 RAKUDO_RAKUAST=1 raku --rakudoc=Generic doc.rakudoc > store-output


```
<span class="para" id="7fa2f84"></span>or 


```
bin/RenderTextify --post-processing doc


```
<span class="para" id="96f3270"></span>If the environment variable WIDTH (--width) is also set, the text output will be wrapped to the value. WIDTH by default is set at 80 chars. To set at 70, use: 


```
POSTPROCESSING=1 WIDTH=70 RAKUDO_RAKUAST=1 raku --rakudoc=Generic doc.rakudoc > store-output


```
<span class="para" id="7fa2f84"></span>or 


```
bin/RenderTextify --post-processing --width=70 doc


```
<span class="para" id="c90fe6d"></span>The utility can also be used for debugging new templates. For more information, see the Render and Templates documents. To get all the debugging information, and information on the template for `C-markup` try 


```
bin/RenderTextify --debug='All' --verbose='C-markup' doc


```

----

## RenderDocs utility<div id="RenderDocs_utility"> </div>
<span class="para" id="05fee90"></span>*RenderDoc* is similar to RenderTextify, but uses the other formats in this distribution, namely 



&nbsp;&nbsp;• <span class="para" id="5fa0920"></span>**.md** - Markdown (default) 

  
&nbsp;&nbsp;• <span class="para" id="7e486a3"></span>**-singlefile.html** - HTML that can be opened directly in a browser without internet connection. 

  
&nbsp;&nbsp;• <span class="para" id="6e6d9fd"></span>**.html** - HTML that is intended for use with an internet connection 

  
<span class="para" id="d2b2c4f"></span>By default, the utility renders all the *rakudoc* sources from `docs/` and outputs them in *markdown* to the current working directory, eg. 


```
bin/RenderDocs


```
<span class="para" id="1cb6d95"></span>In order to get the useage try 


```
bin/RenderDocs -h


```
<span class="para" id="da9a3ba"></span>In order to render a single file, put the basename without *.rakudoc* as a string parameter, eg. 


```
bin/RenderDocs README


```
<span class="para" id="c8b00c3"></span>In order to override the source and output defaults use `--src` and `--to` options, eg. 


```
bin/RenderDocs --src='sources/' --to='rendered/' some-file


```
<span class="para" id="21f9a8c"></span>In order to get single file HTML, rather than markdown 


```
bin/Render --to='rendered' --html --single README


```
<span class="para" id="651cfd2"></span>In order to get the possibilities offered by RakuDoc::To::HTML-Extra, including maps, graphs, themes and the Bulma CSS framework, use `--html` and `--extra`, eg. 


```
bin/Render --html Graphviz


```
<span class="para" id="bb9fe7d"></span>The **html** variants allow for `--debug` and `--verbose`, which are described in [Render](Render.txt). 


----

## Troubleshooting<div id="Troubleshooting"> </div>
<span class="para" id="e3431ff"></span>In order to get the RakuDoc render test file (rakudociem-ipsum) to work, a recent version of the Rakudoc compiler is needed, after v2024.07. 

<span class="para" id="53029b4"></span>If the cannonical command above fails, perhaps with a message such as 


```
===SORRY!===
This element has not been resolved. Type: RakuAST::Type::Simple


```
<span class="para" id="7fa2f84"></span>or 


```
Out-of-sync package detected in LANG1 at r => Str=｢{ $!front-matter }｣

  (value in braid: RakuAST::Class, value in $*PACKAGE: RakuAST::Class)
===SORRY!===
No such method 'IMPL-REGEX-QAST' for invocant of type 'RakuAST::Regex'

```
<span class="para" id="347a187"></span>then try 


```
bin/force-compile


```
<span class="para" id="06b115a"></span>This deletes the `.precomp` files in the current directory, and runs `prove6 -I.`, which causes a recompilation of all the modules. 


----

## Credits<div id="Credits"> </div>
Richard Hainsworth aka finanalyst




----

## VERSION<div id="VERSION_0"> </div>
v0.16.2





----

----

Rendered from docs/README.rakudoc/README at 11:07 UTC on 2024-12-14

Source last modified at 12:49 UTC on 2024-12-08

