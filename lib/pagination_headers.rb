module PaginationHeaders
	protected
	def self.set_pagination_headers(name, options = {})
		after_filter(options) do |controller|
			results = instance_variable_get("@#{name}")
			response.headers["X-Pagination"] = {
				total: results.total_entries,
				total_pages: results.total_pages,
				first_page: results.current_page == 1,
				last_page: results.next_page.blank?,
				previous_page: results.previous_page,
				next_page:total results.next_page,
				out_of_bounds: results.out_of_bounds?,
				offset: results.offset
			}.to_json
		end
	end

end

ApplicationController.send(:include, PaginationHeaders)
