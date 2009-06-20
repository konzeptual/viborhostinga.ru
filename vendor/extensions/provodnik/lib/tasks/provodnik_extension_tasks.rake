namespace :radiant do
  namespace :extensions do
    namespace :provodnik do
      
      desc "Runs the migration of the Provodnik extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          ProvodnikExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          ProvodnikExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Provodnik to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from ProvodnikExtension"
        Dir[ProvodnikExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(ProvodnikExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory
          cp file, RAILS_ROOT + path
        end
      end  
    end
  end
end
