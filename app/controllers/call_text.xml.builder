xml.instruct!
xml.Response do
    xml.Gather(:action => @post_to, :numDigits => 1) do
        xml.Say "This is a call from Availity.  You need to check the Availity portal for a very important message"
    end
end