import XMonad
import XMonad.Actions.NoBorders
import XMonad.Config.Gnome
import qualified Data.Map as M

alternateConfig = gnomeConfig {
    focusFollowsMouse = False
}

myKeys conf@(XConfig {XMonad.modMask = modm}) = [ ((modm, xK_v), withFocused toggleBorder),
       		     		       	      	  ((modm, xK_v), withFocused toggleBorder) ]
newKeys x = M.union (keys alternateConfig x) (M.fromList (myKeys x))

main = xmonad $ alternateConfig { keys = newKeys }