{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecursiveDo #-}
import Reflex.Dom

main = mainWidget $ mdo 
    -- create an element ("div") that shows the clickCount
    (element,_) <- el' "div" $ display nClicks

    let 
        -- an Event that fires whenever the element is clicked
        clickEvent = domEvent Click element    

        -- a Dynamic (Behavior + Event) that counts clicks
        clickCount = count clickEvent   

    -- extract nClicks from the Reflex monad.
    nClicks <- clickCount                

    return ()

