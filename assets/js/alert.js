// jquery carikan saya elemen yang kelasnya namanya flash-data lalu ambil datanya yang namanya flashdata
const flashData = $('.flash-data').data('flashdata');
if (flashData) {
	Swal.fire({
		  icon: 'error',
		  title: 'Oops...',
		  text: 'Username dan Password yang anda masukan ' + flashData
		})
}

const flashFitrah = $('.flash-fitrah').data('flashdata');
if (flashFitrah) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Zakat Fitrah Berhasil ' + flashFitrah
	})
}

const flashMaal = $('.flash-maal').data('flashdata');
if (flashMaal) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Zakat Maal Berhasil ' + flashMaal
	})
}

const flashPenerima = $('.flash-penerima').data('flashdata');
if (flashPenerima) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Penerima Zakat Berhasil ' + flashPenerima
	})
}

const flashGagal = $('.flash-gagal').data('flashdata');
if (flashGagal) {
	Swal.fire({
		icon: 'error',
		title: 'Maaf',
		text: 'Import Data yang anda lakukan ' + flashGagal
	})
}

const flashBerhasil = $('.flash-berhasil').data('flashdata');
if (flashBerhasil) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Import Data yang anda lakukan ' + flashBerhasil
	})
}


const flashKop = $('.flash-kop').data('flashdata');
if (flashKop) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Kop Laporan Berhasil ' + flashKop
	})
}

const flashDataKwitansi = $('.flash-kwitansi').data('flashdata');
if (flashDataKwitansi) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Master Kwitansi Berhasil ' + flashDataKwitansi
	})
}

const flashGagalGambar = $('.flash-gagal-gambar').data('flashdata');
if (flashGagalGambar) {
	Swal.fire({
		icon: 'error',
		title: 'Maaf',
		text: 'Gambar / Data anda Gagal ' + flashGagalGambar
	})
}

const flashBerhasilGambar = $('.flash-berhasil-gambar').data('flashdata');
if (flashBerhasilGambar) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Gambar / Data anda Berhasil ' + flashBerhasilGambar
	})
}

const flashPetugas = $('.flash-petugas').data('flashdata');
if (flashPetugas) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'User Petugas Berhasil ' + flashPetugas
	})
}

const flashKoor = $('.flash-koor').data('flashdata');
if (flashKoor) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'User Koor Berhasil ' + flashKoor
	})
}

const flashLokasi = $('.flash-lokasi').data('flashdata');
if (flashLokasi) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Lokasi Berhasil ' + flashLokasi
	})
}

const flashSandi = $('.flash-sandi').data('flashdata');
if (flashSandi) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Sandi Anda Berhasil ' + flashSandi
	})
}

const flashDonatur = $('.flash-donatur').data('flashdata');
if (flashDonatur) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Donatur Berhasil ' + flashDonatur
	})
}

const flashPanitia = $('.flash-panitia').data('flashdata');
if (flashPanitia) {
	Swal.fire({
		icon: 'success',
		title: 'Selamat',
		text: 'Data Panitia Berhasil ' + flashPanitia
	})
}
// tombol hapus
// jquery tolong carikan saya elemem yang kelasnya tombol-hapus, ketika di klik, jalankan fungsi berikut ini
// initial e (event)
$('.hapus-fitrah').on('click', function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya 
	const href = $(this).attr('href');

	Swal.fire({
		 title: 'Apakah anda yakin?',
		  text: "Data Zakat Fitrah akan dihapus!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya, Hapus Data!'
		  // Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
		}).then((result) => {
		  if (result.value == true) {
		    document.location.href = href;
		  }
	})
});

$('.hapus-maal').on('click', function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya 
	const href = $(this).attr('href');

	Swal.fire({
		 title: 'Apakah anda yakin?',
		  text: "Data akan dihapus!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya, Hapus Data!'
		  // Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
		}).then((result) => {
		  if (result.value == true) {
		    document.location.href = href;
		  }
	})
});

$('.hapus-penerima').on('click', function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya 
	const href = $(this).attr('href');

	Swal.fire({
		 title: 'Apakah anda yakin?',
		  text: "Data Penerima Zakat akan dihapus!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya, Hapus Data!'
		  // Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
		}).then((result) => {
		  if (result.value == true) {
		    document.location.href = href;
		  }
	})
});

$('.hapus-user').on('click', function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya 
	const href = $(this).attr('href');

	Swal.fire({
		 title: 'Apakah anda yakin?',
		  text: "Data user Koor akan dihapus!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya, Hapus Data!'
		  // Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
		}).then((result) => {
		  if (result.value == true) {
		    document.location.href = href;
		  }
	})
});

$('.tombol-backup').on('click', function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya 
	const href = $(this).attr('href');

	Swal.fire({
		 title: 'Apakah anda yakin?',
		  text: "Database akan di backup ?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya, Backup Database!'
		  // Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
		}).then((result) => {
		  if (result.value == true) {
		    document.location.href = href;
		  }
	})
});

$('.hapus-donatur').on('click', function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya 
	const href = $(this).attr('href');

	Swal.fire({
		 title: 'Apakah anda yakin?',
		  text: "Data Donatur akan di Hapus ?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya, Backup Database!'
		  // Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
		}).then((result) => {
		  if (result.value == true) {
		    document.location.href = href;
		  }
	})
});

$('.hapus-panitia').on('click', function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya 
	const href = $(this).attr('href');

	Swal.fire({
		 title: 'Apakah anda yakin?',
		  text: "Data Panitia akan di Hapus ?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya, Hapus Data!'
		  // Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
		}).then((result) => {
		  if (result.value == true) {
		    document.location.href = href;
		  }
	})
});