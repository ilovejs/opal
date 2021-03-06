describe "Hash#each_key" do
  it "calls block once for each key, passing key" do
    r = {}
    h = {1 => -1, 2 => -2, 3 => -3, 4 => -4}
    h.each_key { |k| r[k] = k }.should equal(h)
    r.should == {1 => 1, 2 => 2, 3 => 3, 4 => 4}
  end

  it "processes keys in the same order as keys()" do
    keys = []
    h = {1 => -1, 2 => -2, 3 => -3, 4 => -4}
    h.each_key { |k| keys << k }
    keys.should == h.keys
  end
end