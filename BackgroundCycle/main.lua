
function initUi()
    app.registerUi({["menu"] = "Paper Background Cycle", ["callback"] = "cycleBackground", ["accelerator"] = "<Alt>b"});
end

local backgroundList = {
    "plain",
    "graph",
    "ruled",
    "staves",
    "dotted",
    "lined",
    "isodotted",
    "isograph"
}
local currentBackground = 0

function cycleBackground()
    if (currentBackground < #backgroundList) then
        currentBackground = currentBackground + 1
    else
        currentBackground = 1
    end

    app.changeCurrentPageBackground(backgroundList[currentBackground])
end