def rot13(secret_messages)
    secret_messages.map { |c| c.downcase.tr("a-z", "n-za-m") } 
end
