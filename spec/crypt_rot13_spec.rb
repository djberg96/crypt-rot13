########################################################################
# crypt_rot13_spec.rb
#
# Tests for the crypt-rot13 library. You should run this via the
# 'rake spec' task (or just 'rake').
########################################################################
require 'crypt/rot13'
require 'rspec'

RSpec.describe Crypt::Rot13 do
  before do
    @r1 = described_class.new('abc')
    @r2 = described_class.new('ABC')
    @r3 = described_class.new('xyz')
    @r4 = described_class.new('XYZ')
    @r5 = described_class.new('a1b2c3@#$')
    @r6 = described_class.new('abc', 3)
    @r7 = described_class.new('ABC', 3)
    @r8 = described_class.new('xyz', 23)
    @r9 = described_class.new('XYZ', 23)
  end

  example "version" do
    expect(described_class::VERSION).to eq('1.1.1')
    expect(described_class::VERSION).to be_frozen
  end

  example "constructor" do
    expect(described_class).to respond_to(:new)
    expect{ described_class.new }.not_to raise_error
    expect{ described_class.new('foo') }.not_to raise_error
    expect{ described_class.new('foo', 7) }.not_to raise_error
  end

  example "available_methods" do
    expect(@r1).to respond_to(:rotate)
  end

  example "degree" do
    expect{ described_class.new('foo', 26) }.to raise_error(Crypt::Rot13::Error)
    expect{ described_class.new('foo', 52) }.to raise_error(Crypt::Rot13::Error)
    expect{ described_class.new('foo', 25) }.not_to raise_error
  end

  example "string_class" do
    expect(@r1).to be_kind_of(String)
  end

  example "return_value_default_degree" do
    expect(@r1).to eq('nop')
    expect(@r2).to eq('NOP')
    expect(@r3).to eq('klm')
    expect(@r4).to eq('KLM')
    expect(@r5).to eq('n1o2p3@#$')
  end

  example "return_value_custom_degree" do
    expect(@r6).to eq('def')
    expect(@r7).to eq('DEF')
    expect(@r8).to eq('uvw')
    expect(@r9).to eq('UVW')
  end

  example "rotate_instance_method" do
    expect(@r6.rotate(-3)).to eq('abc')
  end
end
