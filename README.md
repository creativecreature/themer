# Themer
Themer is a project I've created for generating color themes. I spend the majority of my
time staring at a terminal. Yep, my life is awesome. To make things a little better I try
to create color themes I don't hate.

I began by forking the colors from the material palenight theme, but when you read this
I've probably messed things up.

Here is an up to date image of what the theme looks like:

![themer][screenshot]


## How it works
I have defined the colors I use in the `colors.yml` file. I've created theme templates
inside of the `src/templates` directory. These templates are also defined in yaml, and
should be easy to extend and modify.

Each template is fed through a transformer, they can be found in the `src/transformers`
directory. The output of each transformer is then passed along to a renderer. The
renderers, which by now you are probably able to guess, are located in the `src/renderers`
directory. The renderers job is to create the actual output. That output is then written
to disk and can be imported by other applications.

I use themer for creating (syntax|color|theme) files for:
- VIM
- TMUX
- Lightline(a VIM plugin)


## Requirements
- node
- npm
- yarn


## Setup
Open up a terminal and type `yarn` to install the projects dependencies. To render the
syntax files execute `yarn render`.

Themer will output files for *VIM*, *Lightline* and *TMUX*. The VIM theme is called
*creativecreature*.


[screenshot]: images/screenshot.png
