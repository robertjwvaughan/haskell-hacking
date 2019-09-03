f :: Int -> [Int] -> [Int]
-- Takes two lists and appends them
f n arr = (replicate n (head arr))++(f n (tail arr))

-- This part handles the Input and Output and can be used as it is. Given and not to be modified.
main :: IO ()
main = getContents >>=
		mapM_ print. (\(n:arr) -> f n arr). map read. words