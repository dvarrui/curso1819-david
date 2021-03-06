
class Markdown
  attr_reader :data

  def initialize
    @data = { title: 'No title',
              slides: [] }
  end

  def parse(filepath)
    lines = File.read(filepath).split("\n")
    lines.delete('')

    current = nil
    i = 0
    while (i<lines.size)
      line = lines[i]
      if line.start_with?('# ')
        @data[:title] = line.gsub('# ', '')
      elsif line.start_with?('## ')
        @data[:slides] << current if current
        current = { title: line.gsub('## ', ''),
                    index: @data[:slides].size + 1,
                    lines: [] }
      else
        current[:lines] << line
      end
      i += 1
    end
    @data[:slides] << current if current
    return @data
  end
end
