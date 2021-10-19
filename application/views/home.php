<!DOCTYPE html>
<html>

<head>
	<title>Ujian Online</title>
</head>

<body>
	<section>
		<form id="form_ujian" method="POST" action="<?= base_url('Ujian/process') ?>">
			<label for="member">Nama Member :</label>
			<select name="member" id="member">
				<?php foreach ($member->result() as $result) : ?>
					<option value="<?php echo $result->id_member ?>"><?php echo $result->nama_member ?></option>
				<?php endforeach; ?>
			</select>

			<h2 style="text-decoration: underline;">SOAL PILIHAN GANDA</h2>

			<ol>
				<?php foreach ($pertanyaan->result() as $result) : ?>

					<li style="padding-bottom: 1rem;">
						<?php echo $result->deskripsi_pertanyaan ?>
					</li>

					<ol type="A" style="padding-bottom: 1rem;">
						<li>
							<input type="radio" name="answer_<?= $result->id_pertanyaan ?>" value="A" required><?php echo $result->jawaban_a ?>
						</li>

						<li>
							<input type="radio" name="answer_<?= $result->id_pertanyaan ?>" value="B" required><?php echo $result->jawaban_b ?>
						</li>

						<li>
							<input type="radio" name="answer_<?= $result->id_pertanyaan ?>" value="C" required><?php echo $result->jawaban_c ?>
						</li>

						<li>
							<input type="radio" name="answer_<?= $result->id_pertanyaan ?>" value="D" required><?php echo $result->jawaban_d ?>
						</li>
					</ol>

				<?php endforeach; ?>
			</ol>

			<button type="submit">
				Selesai Ujian
			</button>
		</form>
	</section>
</body>

</html>