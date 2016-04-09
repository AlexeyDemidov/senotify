require 'senotify/version'

require 'ruby-stackoverflow'
require 'htmlentities'

# Main applicaiton module
module Senotify
  def self.get_questions(site, fromdate)
    RubyStackoverflow.questions(site: site,
                                fromdate: fromdate,
                                page: 1, pagesize: 10,
                                sort: 'creation', order: 'asc')
  end

  def self.logo_path(site)
    program_dir = File.dirname(File.expand_path($PROGRAM_NAME))
    logo_dir = program_dir + '/logo/'
    logo_dir + site + '.png'
  end

  def self.print_question(q, site, notify)
    title = HTMLEntities.new.decode(q.title)

    tags_string = format('[%s]', q.tags.join('] ['))
    count_string = format('(v:%d|a:%d)', q.view_count, q.answer_count)
    info_string = format('%s %s', tags_string, count_string)

    puts title
    puts info_string
    puts q.link
    puts "\n"

    if notify
      system(
        format('notify-send --category SENotiy --icon %s "%s" "%s"',
               logo_path(site),
               title,
               info_string
              ))
    end
  end

  def self.check_tags(itags, etags, qtags)
    unless etags.nil? || etags.empty?
      qtags.each do |tag|
        return false if etags.include? tag
      end
    end

    return true if itags.nil? || itags.empty?

    qtags.each do |tag|
      return true if itags.include? tag
    end

    false
  end
end
