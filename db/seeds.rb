# frozen_string_literal: true

module Dbseed
  class << self
    def target_tables(env: Rails.env)
      base = Dir.glob(Rails.root.join('db', 'seeds', '*.rb'))
      ext = Dir.glob(Rails.root.join('db', 'seeds', env, '*.rb'))
      (base + ext).map { |f| File.basename(f, '.rb')}
    end

    def lookup(table_name, env: Rails.env)
      base = Rails.root.join('db', 'seeds')
      ext = Rails.root.join('db', 'seeds', env)
      [base, ext].select { |dir| dir.join("#{table_name}.rb").file? }.each do |dir|
        require dir.join(table_name)
      end
    end
  end
end

pp Dbseed.target_tables
Dbseed.target_tables.each do |table|
  pp Dbseed.lookup(table)

end
