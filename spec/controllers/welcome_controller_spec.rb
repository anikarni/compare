

describe "index" do
	let!(:produto) { build(:produto) }
    it "should find Caneca when it gets the Caneca param" do
	    get :index, {:produto[0] => produto}
        @produto[0].nome.should == "Caneca"
    end
end

