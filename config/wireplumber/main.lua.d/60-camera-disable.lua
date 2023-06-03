-- vim: ts=4:sw=4:et

rule = {
    matches = {
        {
            { "device.name", "matches", "libcamera_device*"}, 
        },
    },
    apply_properties ={
        ["device.disabled"] = true,
    },
}
