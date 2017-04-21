class Admin::ProductsController < AdminController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all.order("created_at DESC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to admin_products_path, notice: "保存成功！"
    else
      redirect_to admin_products_path, notice: "保存失败！"
    end
  end

  def edit
    @product = product.find params[:id]
  end

  def update
    if @product.update product_params
      redirect_to admin_products_path, notice: "更新成功！"
    else
      redirect_to admin_products_path, notice: "更新失败！"
    end
  end

  def destroy
    if @product.destroy
      redirect_to admin_products_path, notice: "删除成功！"
    else
      redirect_to admin_products_path, notice: "删除失败！"
    end
  end
  
  private

  def set_product
    @product = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :price, :stock, :warning_line)
  end
  
end
