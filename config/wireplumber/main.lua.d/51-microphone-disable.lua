-- vim: ts=4:sw=4:et

rule = {
    matches = {
        {
            { "node.nick", "equals", "Digital Microphone"}, 
        },
    },
    apply_properties ={
        ["node.description"]  = "Laptop Microphone",
        ["device.disabled"] = true,
    },
}
