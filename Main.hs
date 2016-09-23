{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecursiveDo #-}
import Reflex.Dom

clicker = mdo 
    (element,_) <- el' "div" $ display nClicks
    nClicks <- count $ domEvent Click element    
    return ()

main = mainWidget $ do
    clicker

