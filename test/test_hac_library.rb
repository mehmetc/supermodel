$LOAD_PATH << '../lib'
require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'active_record'
require 'supermodel'
require 'active_support/core_ext/class/attribute'
require 'supermodel/hac_library/random_id'

class ModelTest < SuperModel::Base
  include SuperModel::HacLibrary::RandomID
  attributes :value
end

class TestHacLibrary < Test::Unit::TestCase
  context "Testing SuperModel::Hac" do
    should" return UUID from UUID service" do
      test = ModelTest.create(:value => 'abcdef')
      puts test.id
      assert_equal(test.id, '1')            
    end
  end
end