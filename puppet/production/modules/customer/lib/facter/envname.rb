Facter.add(:envname) do
    setcode do
        envname = Facter.value(:hostname).split('-')[0]
    end
end