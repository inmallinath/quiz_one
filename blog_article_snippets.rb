module Blog
  class Article
    attr_accessor :title, :body
    def initialize(title, body)
      @title = title
      @body = body
    end

    def title
      @title
    end

    def body
      @body
    end
  end

  class Snippet < Article
    def body
      super
       @body[0...100]
    end
  end
end

myArticle = Blog::Article.new("A Generous gift", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
puts myArticle.title
puts myArticle.body
mySnippet = Blog::Snippet.new("A Generous gift", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
puts mySnippet.title
puts mySnippet.body
