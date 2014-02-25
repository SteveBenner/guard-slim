module Guard
  class Slim < Guard
    class TemplateRenderer
			attr_reader :output

      # Initializes a template renderer
      #
      # @param [Template] template
			# @param [Boolean] convert_to_erb
      #
      def initialize(template, convert_to_erb)
        @template = template
				@output = (convert_to_erb == true) ? :erb : :slim
      end

      # Renders slim template into html code, or converts it to ERB
      #
      # @param [Class] context_class
      # @param [Hash] slim_options
      #
      # @return [String]
      #   rendered html output
      #
      def render(context_class, slim_options)
        context = context_class.new(@template)

        if @output == :slim
          ::Slim::Template.new(slim_options) { source }.render(context)
        else
	        ::Slim::ERBConverter.new(slim_options).call(source) # outputs erb_code
				end
      rescue Exception => exception
        UI.info exception.message
      end

      private

      # Reads template source
      #
      # @return [String]
      #   template source
      #
      def source
        File.read(@template.path)
      end
    end
  end
end