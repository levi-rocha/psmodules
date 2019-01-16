function adjustbuffer {
	$Host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size(60, 2800)
}

function adjustwindow {
Param([int]$x=$host.ui.rawui.windowsize.width,
      [int]$y=$host.ui.rawui.windowsize.heigth)

    $size=New-Object System.Management.Automation.Host.Size($x,$y)
    $host.ui.rawui.WindowSize=$size   
}

adjustbuffer
