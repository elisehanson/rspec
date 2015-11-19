require '../article.rb'

RSpec.configure do |rspec|
  rspec.color = true
end


describe Article do 

  # initialize

  let(:article) { Article.new(:title => "Title", :body => "Body", :author => "Author") }

  # empty article
  
  let(:empty_article) { Article.new(title: "", body: "", author: "") }

    it "confirms title?" do
      @article = Article.new({title: "title"})
      expect(@article.title?).to be(true)
    end

    it "confirms body?" do
      @article = Article.new({body: "body"})
      expect(@article.body?).to be(true)
    end

    it "confirms empty article" do 
      expect(empty_article.title?).to eq(false)
    end

  # q

  describe "q" do
    it ".authors_name_starts_with_q?" do
      expect(article.authors_name_starts_with_q?).to eq(false)
    end
  end

  #html

  describe "html" do
    it ".title_as_html" do
      expect(article.title_as_html).to eq("<h1>Title</h1>")
    end

    it ".author_as_html" do
      expect(article.author_as_html).to eq("<b>Author</b>")
    end

    it ".body_as_html" do
      expect(article.body_as_html).to eq("<p>Body</p>")
    end

    it ".article_as_html" do
      expect(article.article_as_html).to eq("<h1>Title</h1><b>Author</b><p>Body</p>")
    end
  end

end


