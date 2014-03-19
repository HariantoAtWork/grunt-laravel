
<h1>Using Grunt, Laravel, Bootstrap and LESS</h1>

<p>
I made a tutorial that fits my MAMP vhosts installation.<br/>
<a href="http://blog.mdstn.com/using-laravel-grunt-bootstrap-and-less/">Using Laravel Grunt Bootstrap and Less</a>
</p>
<p>
My vhosts directory structure looks like this
</p>

<pre>
/ vhosts
  / <em>domainname</em>
    / httpdocs
  / subdomains
    / <em>subdomainname</em>
      / httpdocs
</pre>

<p>My Laravel 4 installation would look like this inside domain directory</p>

<pre>
/ vhosts
  / example.com
    / httpdocs (alias -> laravel/public)
    / <em>laravel</em>
    / <em>node_modules</em>
    - <strong>README.md</strong>
    - ..
    - ..
    - ..
    - etc
</pre>

<p>
I have linked <em>httpdocs</em> -&gt; <em>laravel/public</em><br/>
Your installation may differ, if it does<br/>
you may remove <em>httpdocs</em> linkagefile and replace with something else<br/>
and some changes in <strong>Gruntfile.js</strong> paths<br/>
Read Linux documenation for the command: <code>ln -nsf &lt;sourcepath&gt; &lt;destpath&gt;</code>
</p>

<h2>After cloning this repository</h2>
<p>
You may need to install Node.js on your computer if you don't have one. <br/>
It's really great and small for the tasks you're going to love.<br/>
Head to: http://nodejs.org/<br/>
Make sure you install with <code>sudo</code> command
<p>

<p>
Also install Grunt CLI and Bower<br/>
<code>npm install -g grunt-cli</code><br/>
<code>npm install -g bower</code>
</p>
<p>
With the flag <code>-g</code> you installed it globally and now you can access it from anywhere on your system.
</p>

<blockquote>
  If you&rsquo;re new to Laravel, you may need to install <code>composer.phar</code>.<br/>
  Head to: <a href="https://getcomposer.org/download/">Composer - download</a>
</blockquote>

<blockquote>
  I made a script <strong>first-install-dependencies.sh</strong> that run these tasks:

  <ul>
    <li>Install Node Dependencies</li>
    <li>Install Bower Dependencies</li>
    <li>Install Laravel Dependencies</li>
    <li>Re-generate Laravel key</li>
  </ul>

  Run this on your terminal: <code>. first-install-dependencies.sh</code><br/>
  You may skip following instructions below<br/>
  and head to: <a href="#what-to-do-next">What to do next</a>
</blockquote>
<h3>Install Node Dependencies</h3>
<p>
Grunt is awesome Javascript Task Runner that we're going to install.<br/>
If there isn't <em>node_modules</em> directory then you can run a command that reads 'devDependencies' from <strong>package.json</strong> <br/>
The modules will be save at <em>node_modules</em> directory in the root:<br/>
<code>npm install</code>
</p>
<blockquote>
  <p>
  There is a time you want to install some plugins as dependencies.<br/>
  For example "grunt-contrib-watch": To watch files for changes.
  </p>
  <p>
  Run this in terminal:<br/>
  <code>npm install grunt-contrib-watch --save-dev</code>
  </p>
  <p>
  That will install the dependencies and because we defined the <code>--save-dev</code> flag it will add them to the <strong>package.json</strong> file.
  </p>
</blockquote>

<h3>Install Bower Dependencies</h3>
<p>
I have <strong>.bowerrc</strong> included that sets the bower installations to <br/>
<em>./httpdocs/assets/vendor</em><br/>
If <strong>bower.json</strong> file exist in the root, you can install the dependencies by following command in the terminal:<br/>
<code>bower install</code><br/>
</p>
<p>
This will install
<ul>
  <li>bootstrap</li>
  <li>jquery-autosize</li>
  <li>jquery.lazyload</li>
  <li>mixitup</li>
  <li>swipebox</li>
  <li>nivo-slider</li>
  <li>knockoutjs</li>
  <li>knockout-mapping</li>
  <li>less.js</li>
  <li>font-awesome</li>
</ul>
</p>

<blockquote>
If you want to add a dependency such as font-awesome type with <code>-S</code> flag.<br/>
That will also append the dependency on the <strong>bower.json</strong> file automatically:<br/>
<code>bower install font-awesome -S</code>
</blockquote>


<h3>Install Laravel Dependencies</h3>
Make sure you update Laravel's dependencies in this directory:<br/>
<em>./laravel</em><br/>

Goto <em>./laravel</em> directory and run a command:<br/>
<code>composer update</code><br/>

<h2>Re-generate Laravel key</h2>

<p>
Since you&rsquo;ve clone this repository and downloaded all needed dependencies with Laravel updates you can use <code>php artisan</code> command to generate a key for Laravel<br/>
<em>./laravel/app/config/app.php</em>
</p>

Go to ./laravel directory and run the command in the terminal:
<code>php artisan key:generate</code>

<h2>What to do next?</h2>
<ul>
  <li>You may edit <strong>.gitignore</strong> since I&rsquo;ve exluded Grunts generated output files</li>
  <li>You may include <strong>frontend.css/min.js</strong>, <strong>backend.css/min.js</strong> or <strong>sandbox.min.js</strong> in your html</li>
  <li>You may change <strong>Gruntfile.js</strong> and look for <code>paths</code></li>
  <li>You may change <strong>Gruntfile.js</strong> and look for <code>sandbox</code> paths, Bower dependencies may changed paths</li>
</ul>


<h2>Sources</h2>
<a href="http://nodejs.org/">Node.js</a><br/>
<a href="https://www.npmjs.org/">Node Package Modules</a><br/>
<a href="http://bower.io/">Bower - A package manager for the web</a><br/>
<a href="http://gruntjs.com/">Grunt - The JavaScript Task Runner</a><br/>
<a href="https://getcomposer.org/">Composer - Dependency Manager for PHP</a><br/>
<a href="http://laravel.com/docs/installation">Laravel 4 Docs</a><br/>
<a href=""></a>

<h2>Other things</h2>
<p>
I&rsquo;m reading the book &ldquo;The Smashing Book #4 - New perspective web design&rdquo; and it re-think about my workflow and managing my building blocks for my new projects with Bootstrap LessCSS Laravel and Grunt. Still I need to work on Git's workflow what in the real world projects is like going to be.
</p>
