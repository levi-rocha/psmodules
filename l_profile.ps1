$ps_modules = 'D:\cs\ps-modules\'

function import { Import-Module ($ps_modules + $args[0] + '.psm1') }
function prof { vim $profile }
