class Admin::SalesListsController < AdminController
  def index
    @sales_lists = SalesList.all.order("created_at DESC").paginate(:page => params[:page])
  end

  def show
    @sales_list = SalesList.find(params[:id])
  end

  def new
  end

  def create
    #begin
      @sales_list = SalesList.create!(sn: DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s,)
      params["products"].each do |i|
        SalesListProduct.create!(sales_list_id: @sales_list.id, product_id: i.to_i)
      end
    #rescue
    #  redirect_to new_admin_sales_list_path, notice: "出售失败！" and return
    #end
    redirect_to new_admin_sales_list_path, notice: "出售成功！"
  end
end
