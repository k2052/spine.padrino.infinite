SpinePadrino.controllers :pages, :provides => [:html, :json] do 
  get :index, :map => '/' do  
    render 'pages/index'
  end 

  get :all, :map => '/pages' do
    @pages = Page.where(:created_at.lt => Time.at(params[:index].to_i) || 0).sort(:created_at.desc).limit(60)    
    respond(@pages)
  end
end
