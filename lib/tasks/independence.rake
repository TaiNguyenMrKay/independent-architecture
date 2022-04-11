
def run_independence_install_template(path) system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../install/#{path}.rb",  __dir__)}" end

namespace :independence do
  namespace :install do
    desc "Install Independence on an app running importmap-rails"
    task :importmap do
      run_independence_install_template "independence_with_importmap"
    end
  end
end
