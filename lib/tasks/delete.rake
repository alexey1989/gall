desc "TODO"
	task delete_all: :environment do
		del
	end

	def del
		History.delete_all
		History.reset_pk_sequence
		User.delete_all
		User.reset_pk_sequence
		Comment.delete_all
		Comment.reset_pk_sequence
		Like.delete_all
		Like.reset_pk_sequence
		Category.delete_all
		Category.reset_pk_sequence
		Pick.delete_all
		Pick.reset_pk_sequence

	end
