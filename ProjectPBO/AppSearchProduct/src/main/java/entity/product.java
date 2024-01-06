package entity;

public class product {
    private int id_product;
    private String nama;
    private String jenis_produk;
    private int harga;
    private int kuantitas;
    private String deskripsi;

    public int getId_product(){
        return id_product;
    }
    public void setId_product(int id_product){
        this.id_product = id_product;
    }

    public String getNama(){
        return nama;
    }
    public void setNama(String nama){
        this.nama = nama;
    }
    public String getJenis_produk(){
        return jenis_produk;
    }
    public void setJenis_produk(String jenis_produk) {
        this.jenis_produk = jenis_produk;
    }
    public int getHarga(){
        return harga;
    }
    public void setHarga(int harga) {
        this.harga = harga;
    }
    public int getKuantitas(){
        return kuantitas;
    }
    public void setKuantitas(int kuantitas) {
        this.kuantitas = kuantitas;
    }
    public String getDeskripsi(){
        return deskripsi;
    }
    public void setDeskripsi(String deskripsi) {
        this.deskripsi = deskripsi;
    }
}
