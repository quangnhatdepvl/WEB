package model;

public class Telephone {
	private String id;
	private String name;
	private int price;
	private String description;
	private String typeTel;
	private String url_img;
	public Telephone() {
		// TODO Auto-generated constructor stub
	}
	public Telephone(String id, String name, int price, String description, String typeTel, String url_img) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.typeTel = typeTel;
		this.url_img = url_img;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTypeTel() {
		return typeTel;
	}
	public void setTypeTel(String typeTel) {
		this.typeTel = typeTel;
	}
	public String getUrl_img() {
		return url_img;
	}
	public void setUrl_img(String url_img) {
		this.url_img = url_img;
	}
	
	
}
