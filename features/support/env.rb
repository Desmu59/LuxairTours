# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'pages'))

require 'data_magic'
require 'faker'
require 'fig_newton'
require 'page-object'
require 'require_all'
require 'rdee'
require 'rspec'

require_rel 'pages'

World(PageObject::PageFactory)

FigNewton.load('default.yml')