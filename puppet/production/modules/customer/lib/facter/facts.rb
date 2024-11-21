Facter.add(:envname) do
    setcode do
        envname = Facter.value(:hostname).split('-')[0]
    end
end

Facter.add(:envtype) do
    setcode do
        envtype = ENV["PSFT_ENV_TYPE"]
    end
end