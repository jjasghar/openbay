require 'spec_helper'

describe host('www.google.com') do
  it { should be_reachable }
end

describe port(80) do
  it { should be_listening }
end
