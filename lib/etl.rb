#--
# Copyright (c) 2006-2011 Anthony Eden
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

require 'rexml/rexml'

REXML::VERSION = REXML::Version unless defined?(REXML::VERSION)

require 'logger'
require 'yaml'
require 'erb'
require 'active_support/core_ext'
require 'active_record'
require 'adapter_extensions'

require 'etl/core_ext'
require 'etl/csv'
require 'etl/util'
require 'etl/builder'
require 'etl/engine'
require 'etl/control'
require 'etl/row'
require 'etl/parser'
require 'etl/transform'
require 'etl/processor'
require 'etl/generator'
require 'etl/execution'

module ETL
  autoload :VERSION,    'etl/version'
  autoload :Base,       'etl/base'
  autoload :Batch,      'etl/batch'
  autoload :HttpTools,  'etl/http_tools'
  autoload :Screen,     'etl/screen'

  class ETLError            < StandardError;  end
  class ControlError        < ETLError;       end
  class DefinitionError     < ControlError;   end
  class ConfigurationError  < ControlError;   end
  class MismatchError       < ETLError;       end
  class ResolverError       < ETLError;       end
  class ScreenError         < ETLError;       end
  class FatalScreenError    < ScreenError;    end
end
