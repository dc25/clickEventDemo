{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecursiveDo #-}
import Reflex.Dom


clicker :: MonadWidget t m => m ()
clicker = mdo
    (element,_) <- el' "div" $ display nClicks
    nClicks <- foldDyn (\_ -> succ) (0::Integer) $ domEvent Click element    
    return ()

main = mainWidget $ do
    clicker
    clicker

