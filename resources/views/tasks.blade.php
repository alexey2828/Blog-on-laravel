<form method="POST" action="/tasks">
	{{ csrf_field() }}

	<div class="form-group">
		<label for="title">title</label>
		<input type="text" class="form-control" id="title" name="title">
	</div>

	<div class="form-group">
		<label for="id">body</label>

		<textarea id="body" name="id" class="form-control"></textarea>
	</div>

	<button type="submit" class="btn">publish</button>
</form>