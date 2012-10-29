class Page extends Spine.Model
  @configure "Page", "name", "created_at"
  @extend Spine.Model.Ajax.Methods
  
  @fetch (params) ->
    index  = @last()?.created_at or Math.round(+new Date() / 1000);
    return false if index is @date
    @index = index
    
    params or= 
      data: {index: index}
      processData: true

    @ajax().fetch(params)

window.Page = Page