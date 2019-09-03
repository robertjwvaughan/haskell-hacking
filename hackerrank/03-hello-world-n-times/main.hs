module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

hello_worlds 0 = return ()
hello_worlds n = do
	putStrLn "Hello World"
	hello_worlds (n-1)

main :: IO()  
main = do
	n <- readLn :: IO Int
	hello_worlds n