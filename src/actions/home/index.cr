class Home::Index < BaseAction
  get "/" do
    render LuckyWelcomePage
  end
end
