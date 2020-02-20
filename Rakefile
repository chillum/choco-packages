# frozen_string_literal: true

def pack(list)
  list.each do |i|
    desc "pack #{i}"
    task i.to_sym do
      sh "choco pack #{i}/#{i}.nuspec"
    end
  end
end

pack %w[httpstress kubernetes-kops sops yq]

desc 'remove *.nupkg files'
task :clean do
  Dir.glob('*.nupkg').each do |i|
    rm i
  end
end
