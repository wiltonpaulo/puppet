Facter.add('role') do
  setcode do
  # Retrieve hostname and assign role base on it
  hname = Facter.value(:hostname)
    case hname
        when /^admin/
             'admin'
         when /^cloud/
             'cloud'
         when /^test/
             'test'
    end
  end
end
