package UserDataBase;

public class ProductBean {
	private String ProductName;
	private int ProductPrice;
	private String ProductExp;
	private String ProductImage;
	
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		this.ProductName = productName;
	}
	public int getProductPrice() {
		return ProductPrice;
	}
	public void setProductPrice(int productPrice) {
		this.ProductPrice = productPrice;
	}
	public String getProductExp() {
		return ProductExp;
	}
	public void setProductExp(String productExp) {
		this.ProductExp = productExp;
	}
	public String getProductImage() {
		return ProductImage;
	}
	public void setProductImage(String productImage) {
		this.ProductImage = productImage;
	}
}
