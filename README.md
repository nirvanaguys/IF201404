# EDULIFE+ (Aplikasi Manajemen Pembelajaran & Aktivitas Harian)

Proyek ini merupakan tugas besar mata kuliah **Pemrograman Berorientasi Objek (PBO)**. Aplikasi desktop ini dibangun menggunakan **JavaFX** dengan arsitektur MVC (Model-View-Controller) serta terintegrasi dengan basis data **MySQL**.

---

## 📌 Ringkasan Proyek
**EDULIFE+** adalah platform terpadu yang menggabungkan sistem manajemen kursus (*Course/LMS*) dan pencatat produktivitas harian (*Daily Activity Tracker*) berbasis peran pengguna (**Admin** dan **User**).

---

## ✨ Fitur Utama

### 1. Autentikasi & Otorisasi
- **Registrasi & Login**: Pengguna pertama yang mendaftar otomatis menjadi **ADMIN**, pendaftar berikutnya menjadi **USER**.
- **Role-based Dashboard**: Tampilan beranda dan hak akses dibedakan antara Admin dan Pengguna biasa.

### 2. Admin Dashboard
- **Manajemen Pengguna**: Melihat daftar pengguna, mengubah role pengguna, dan menghapus akun.
- **Katalog Kursus**: Menambah atau menghapus kursus/kelas.
- **Manajemen Modul**: Mengelola silabus modul pembelajaran pada setiap kelas.
- **Ringkasan Statistik**: Dashboard ringkasan status progres pembelajaran dan aktivitas.

### 3. User Dashboard
- **Katalog Kursus & Pendaftaran (*Enrollment*)**: Mengambil kursus yang tersedia.
- **Kelas Saya & Pelacakan Modul**: Menandai modul yang telah selesai dipelajari secara interaktif beserta progress bar.
- **Klaim Sertifikat**: Simulasi sertifikat kelulusan setelah semua modul terselesaikan.

### 4. Aktivitas Harian (*Daily Activity / To-Do*)
- Menambah tugas/kegiatan berdasarkan kategori, deskripsi, tanggal, dan waktu (format `HH:mm`).
- Checklist status selesai/belum selesai langsung dari tabel.
- Fitur notifikasi peringatan otomatis untuk tugas yang telah melewati tenggat atau mendekati batas waktu.

---

## 🛠️ Teknologi yang Digunakan
- **Bahasa Pemrograman**: Java 17+ (kompatibel hingga JDK 25)
- **UI Framework**: JavaFX 21 (FXML + CSS Styling)
- **Database**: MySQL Server 8.0+
- **Driver Database**: MySQL Connector/J 8.0.33
- **Build Tool**: Apache Maven

---

## 🗄️ Persiapan Basis Data (MySQL)
1. Pastikan layanan MySQL aktif (melalui MySQL Server lokal atau XAMPP).
2. Buat database dan tabel menggunakan file skrip yang sudah disediakan:
   ```sql
   -- Jalankan query pada database_schema.sql
   -- atau impor database_schema.sql melalui phpMyAdmin / MySQL Workbench
   ```
3. Sesuaikan konfigurasi database jika diperlukan pada `src/main/java/com/example/app/db/DBUtil.java`:
   - Host/Port: `localhost:3306`
   - Database: `edulife`
   - User: `root`
   - Password: sesuaikan dengan MySQL lokal Anda (default: `123456` / kosong)

---

## 🚀 Cara Menjalankan Aplikasi

### Opsi 1: Menggunakan Skrip Cepat (Windows)
Double-click atau jalankan melalui terminal:
```cmd
.\run.bat
```
atau via PowerShell:
```powershell
.\run.ps1
```

### Opsi 2: Menggunakan Maven
```cmd
mvn clean javafx:run
```

---

## 📂 Struktur Direktori Singkat
```text
├── database_schema.sql   # Skrip DDL tabel database MySQL
├── pom.xml               # Konfigurasi Maven & dependensi
├── run.bat / run.ps1     # Skrip eksekusi instan
└── src/
    ├── main/
    │   ├── java/com/example/app/
    │   │   ├── model/       # Entitas data (User, Course, Module, ToDoItem, dll.)
    │   │   ├── dao/         # Akses query basis data (CRUD)
    │   │   ├── service/     # Logika bisnis
    │   │   ├── db/          # Utilitas koneksi database (DBUtil)
    │   │   └── *Controller  # JavaFX FXML Controllers
    │   └── resources/
    │       ├── *.fxml       # Tampilan antarmuka pengguna
    │       └── css/         # Styling antarmuka
```
