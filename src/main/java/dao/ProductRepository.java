package dao;

import java.util.ArrayList;

public class ProductRepository {
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	}
	
    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

    public ProductRepository() {
        Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		Product phone2 = new Product("P1237", "Galaxy Z Flip 4", 1353000);
		phone2.setDescription("(main)6.7-inch 2640X1080 Infinity-O | Infinity Flex display, (cover)1.9-inch 512X260 Super AMOLED, 12-megapixel Camera");
		phone2.setCategory("Smart Phone");
		phone2.setManufacturer("Samsung");
		phone2.setUnitsInStock(1000);
		phone2.setCondition("New");
		phone2.setFilename("P1237.png");

		Product phone3 = new Product("P1238", "Galaxy Z Fold 4", 1998700);
		phone3.setDescription("(main)7.6-inch 2176X1812 New Infinity | Infinity Flex display, (cover)6.2-inch 2316X904 Infinity-O Display, 50-megapixel Camera");
		phone3.setCategory("Smart Phone");
		phone3.setManufacturer("Samsung");
		phone3.setUnitsInStock(1000);
		phone3.setCondition("New");
		phone3.setFilename("P1238.png");

		listOfProducts.add(phone);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
		listOfProducts.add(phone2);
		listOfProducts.add(phone3);



	}
}
