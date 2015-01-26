module Hw1Test where

import qualified Hw1 as H

-- Write some tests here

testPart1 = do 	testPart11
		testPart12
		testPart13
		testPart14

-- Part 1

testPart11 = do putStrLn ("\n**Test part 1_1 starts here**\n")
		putStrLn ("rectangle 2 3 = " ++ show (H.rectangle 2 3))
                putStrLn ("rectangle -1 0 = " ++ show (H.rectangle (-1) 0))
		putStrLn ("rtTriangle 2 3 = " ++ show (H.rtTriangle 2 3))
		putStrLn ("rtTriangle -1 0 = " ++ show (H.rtTriangle (-1) 0))

testPart12 = do putStrLn ("\n**Test part 1_2 starts here**\n")
		putStrLn ("sides (Rectangle 2 2) = " ++ show (H.sides (H.Rectangle 2 2)))
		putStrLn ("sides (Ellipse 2 2) = " ++ show (H.sides (H.Ellipse 2 2)))
		putStrLn ("sides (RtTriangle 2 2) = " ++ show (H.sides (H.RtTriangle 2 2)))
		putStrLn ("sides (Polygon []) = " ++ show (H.sides (H.Polygon [])))
		putStrLn ("sides (Polygon [(1,2)]) = " ++ show (H.sides (H.Polygon [(1,2)])))
		putStrLn ("sides (Polygon [(1,2), (3,4)]) = " ++ show (H.sides (H.Polygon [(1,2), (3,4)])))
		putStrLn ("sides (Polygon [(1,2), (3,4), (5,6)]) = " ++ show (H.sides (H.Polygon [(1,2), (3,4), (5,6)])))
		putStrLn ("sides (Polygon [(1,2), (3,4), (5,6), (7,8)]) = " ++ show (H.sides (H.Polygon [(1,2), (3,4), (5,6), (7,8)])))

testPart13 = do putStrLn ("\n**Test part 1_3 starts here**\n")
		putStrLn ("bigger (Rectangle 2 3 4) = " ++ show (H.bigger (H.Rectangle 2 3) 4))
		putStrLn ("bigger (Ellipse 2 3 4) = " ++ show (H.bigger (H.Ellipse 2 3) 4))
		putStrLn ("bigger (RtTriangle 2 3 4) = " ++ show (H.bigger (H.RtTriangle 2 3) 4))
		putStrLn ("bigger (Polygon []) 4 = " ++ show (H.bigger (H.Polygon []) 4))
		putStrLn ("bigger (Polygon [(1,2)]) 4 = " ++ show (H.bigger (H.Polygon [(1,2)]) 4))
		putStrLn ("bigger (Polygon [(1,2), (3,4)]) 4 = " ++ show (H.bigger (H.Polygon [(1,2), (3,4)]) 4))
		putStrLn ("bigger (Polygon [(1,2), (3,4), (5,6)]) 4 = " ++ show (H.bigger (H.Polygon [(1,2), (3,4), (5,6)]) 4))
		putStrLn ("bigger (Polygon [(1,2), (3,4), (5,6), (7,8)]) 4 = " ++ show (H.bigger (H.Polygon [(1,2), (3,4), (5,6), (7,8)]) 4))

testPart14 = do putStrLn ("\n**Test part 1_4 starts here**\n")
		putStrLn ("--hanoi 1 a b c--") 
		H.hanoi 1 "a" "b" "c"
		putStrLn ("--hanoi 2 a b c--") 
		H.hanoi 2 "a" "b" "c"
		putStrLn ("--hanoi 3 a b c--") 
		H.hanoi 3 "a" "b" "c"
		putStrLn ("--hanoi 4 a b c--") 
		H.hanoi 4 "a" "b" "c"
		putStrLn ("--hanoi 5 a b c--") 
		H.hanoi 5 "a" "b" "c"

-- Part 2

--Define the tree--
tree_2 = H.Leaf 2
tree_4 = H.Leaf 4
tree_5 = H.Leaf 5
tree_3 = H.Branch (tree_4) (tree_5)
tree_1 = H.Branch (tree_2) (tree_3)

--Define the internal tree--
itree_2 = H.ILeaf
itree_4 = H.ILeaf
itree_5 = H.ILeaf
itree_3 = H.IBranch 3 (itree_4) (itree_5)
itree_1 = H.IBranch 1 (itree_2) (itree_3)

testPart2 = do 	--lengthNonRecursive--
		putStrLn ("\n--lengthNonRecursive--")
 		putStrLn ("lengthNonRecursive [] = " ++ show (H.lengthNonRecursive []))
 		putStrLn ("lengthNonRecursive [(1,2)] = " ++ show (H.lengthNonRecursive [(1,2)]))
 		putStrLn ("lengthNonRecursive [(1,2), (3,4)] = " ++ show (H.lengthNonRecursive [(1,2), (3,4)]))
 		putStrLn ("lengthNonRecursive [(1,2), (3,4), (1,2), (3,4), (1,2), (3,4), (1,2), (3,4)] = " ++ show (H.lengthNonRecursive [(1,2), (3,4), (1,2), (3,4), (1,2), (3,4), (1,2), (3,4)]))
		
		--doubleEach--
		putStrLn ("\n--doubleEach--")
		putStrLn ("doubleEach [1,20,300,4000] = " ++ show (H.doubleEach [1,20,300,4000]))
		
		--doubleEachNonRecursive--
		putStrLn ("\n--doubleEachNonRecursive--")
		putStrLn ("doubleEachNonRecursive [1,20,300,4000]) = " ++ show (H.doubleEachNonRecursive [1,20,300,4000]))

		--pairAndOne--
		putStrLn ("\n--pairAndOne--")
		putStrLn ("pairAndOne [1,20,300] = " ++ show (H.pairAndOne [1,20,300]))

		--pairAndOneNonRecursive--
		putStrLn ("\n--pairAndOneNonRecursive--")
		putStrLn ("pairAndOneNonRecursive [1,20,300] = " ++ show (H.pairAndOneNonRecursive [1,20,300]))

		--addEachPair--
		putStrLn ("\n--addEachPair--")
		putStrLn ("addEachPair [(1,2),(20,21),(300,301)] = " ++ show (H.addEachPair [(1,2),(20,21),(300,301)]))

		--addEachPairNonRecursive--
		putStrLn ("\n--addEachPairNonRecursive--")
		putStrLn ("addEachPairNonRecursive [(1,2),(20,21),(300,301)] = " ++ show (H.addEachPairNonRecursive [(1,2),(20,21),(300,301)]))

		--minList--
		putStrLn ("\n--minList--")
		--putStrLn ("minList [] = " ++ show (H.minList []))
		putStrLn ("minList [1,2,3,5,3,1] = " ++ show (H.minList [1,2,3,5,3,1]))
		putStrLn ("minList [2000,434,20,11,300,301] = " ++ show (H.minList [2000,434,20,11,300,301]))
		putStrLn ("minList [-20,-13,15,14,200,-201] = " ++ show (H.minList [-20,-13,15,14,200,-201]))

		--minListNonRecursive--
		putStrLn ("\n--minListNonRecursive--")
		--putStrLn ("minListNonRecursive [] = " ++ show (H.minList []))
		putStrLn ("minListNonRecursive [1,2,3,5,3,1] = " ++ show (H.minListNonRecursive [1,2,3,5,3,1]))
		putStrLn ("minListNonRecursive [2000,434,20,11,300,301] = " ++ show (H.minListNonRecursive [2000,434,20,11,300,301]))
		putStrLn ("minListNonRecursive [-20,-13,15,14,200,-201] = " ++ show (H.minListNonRecursive [-20,-13,15,14,200,-201]))

		--maxList--
		putStrLn ("\n--maxList--")
		--putStrLn ("maxList [] = " ++ show (H.minList []))
		putStrLn ("maxList [1,5,5,5,3,1] = " ++ show (H.maxList [1,5,5,5,3,1]))
		putStrLn ("maxList [2000,434,20,11,300,301] = " ++ show (H.maxList [2000,434,20,11,300,301]))
		putStrLn ("maxList [-20,-13,-15,-14,-200,-201] = " ++ show (H.maxList [-20,-13,-15,-14,-200,-201]))
		
		--maxListNonRecursive--maxListNonRecursive
		putStrLn ("\n--maxListNonRecursive--")
		--putStrLn ("maxList [] = " ++ show (H.minList []))
		putStrLn ("maxListNonRecursive [1,5,5,5,3,1] = " ++ show (H.maxListNonRecursive [1,5,5,5,3,1]))
		putStrLn ("maxListNonRecursive [2000,434,20,11,300,301] = " ++ show (H.maxListNonRecursive [2000,434,20,11,300,301]))
		putStrLn ("maxListNonRecursive [-20,-13,-15,-14,-200,-201] = " ++ show (H.maxListNonRecursive [-20,-13,-15,-14,-200,-201]))

		--treeDefinition--
		putStrLn ("\n--Tree difinition--\ntree_2 = H.Leaf 2\ntree_4 = H.Leaf 4\ntree_5 = H.Leaf 5\ntree_3 = H.Branch (tree_4) (tree_5)\ntree_1 = H.Branch (tree_2) (tree_3)")
		putStrLn ("\n  (1)")
		putStrLn ("   /\\")
		putStrLn ("  2 (3)")
		putStrLn ("     /\\")
		putStrLn ("    4  5")

		--fringe--
		putStrLn ("\n--fringe--")
		putStrLn ("fringe (Branch (Leaf 1) (Leaf 2)) = " ++ show (H.fringe (H.Branch (H.Leaf 1) (H.Leaf 2))))
		putStrLn ("fringe tree_1 = " ++ show (H.fringe tree_1))
		putStrLn ("fringe (Branch (tree_3) (Leaf 10)) = " ++ show (H.fringe (H.Branch (tree_3) (H.Leaf 10))))
		putStrLn ("fringe (Leaf -13) = " ++ show (H.fringe (H.Leaf (-13))))

		--treeSize--
		putStrLn ("\n--treeSize--")
		putStrLn ("treeSize (Branch (Leaf 1) (Leaf 2)) = " ++ show (H.treeSize (H.Branch (H.Leaf 1) (H.Leaf 2))))
		putStrLn ("treeSize tree_1 = " ++ show (H.treeSize tree_1))
		putStrLn ("treeSize (Branch (tree_3) (Leaf 10)) = " ++ show (H.treeSize (H.Branch (tree_3) (H.Leaf 10))))
		putStrLn ("treeSize (Leaf -13) = " ++ show (H.treeSize (H.Leaf (-13))))

		--treeHeight--
		putStrLn ("\n--treeHeight--")
		putStrLn ("treeHeight (Branch (Leaf 1) (Leaf 2)) = " ++ show (H.treeHeight (H.Branch (H.Leaf 1) (H.Leaf 2))))
		putStrLn ("treeHeight tree_1 = " ++ show (H.treeHeight tree_1))
		putStrLn ("treeHeight (Branch (tree_3) (Leaf 10)) = " ++ show (H.treeHeight (H.Branch (tree_3) (H.Leaf 10))))
		putStrLn ("treeHeight (Leaf -13) = " ++ show (H.treeHeight (H.Leaf (-13))))
		
		--Itree definition--
		putStrLn ("\n--ITree difinition--\nitree_2 = H.ILeaf\nitree_4 = H.ILeaf\nitree_5 = H.ILeaf\nitree_3 = H.IBranch 3 (itree_4) (itree_5)\nitree_1 = H.IBranch 1 (itree_2) (itree_3)")
		putStrLn ("\n   1")
		putStrLn ("   /\\")
		putStrLn (" (2) 3")
		putStrLn ("     /\\")
		putStrLn ("   (4)(5)")		

		--takeTree--
		putStrLn ("\ntakeTree")
		putStrLn ("takeTree 1 (IBranch 1 (IBranch 2 ILeaf ILeaf) (IBranch 3 ILeaf ILeaf)) = " ++ show(H.takeTree 1 (H.IBranch 1 (H.IBranch 2 H.ILeaf H.ILeaf) (H.IBranch 3 H.ILeaf H.ILeaf))))
		putStrLn ("takeTree 3 (itree_1) = " ++ show (H.takeTree 3 (itree_1)))
		putStrLn ("takeTree 3 (IBranch 3 (itree_3) (ILeaf)) = " ++ show (H.takeTree 3 (H.IBranch 3 (itree_3) (H.ILeaf))))
		--putStrLn ("takeTree 4 (ILeaf) = " ++ show (H.takeTree 4 (H.ILeaf)))

		--takeTreeWhile--
		putStrLn ("\ntakeTreeWhile")
		putStrLn ("takeTreeWhile (< 3) (IBranch 1 (IBranch 2 ILeaf ILeaf) (IBranch 3 ILeaf ILeaf))) = " ++ show (H.takeTreeWhile (< 3) (H.IBranch 1 (H.IBranch 2 H.ILeaf H.ILeaf) (H.IBranch 3 H.ILeaf H.ILeaf))))
		putStrLn ("takeTreeWhile (< 2) (itree_1) = " ++ show (H.takeTreeWhile (< 2) (itree_1)))
		putStrLn ("takeTreeWhile (< 4) (IBranch 3 (itree_3) (ILeaf)) = " ++ show (H.takeTreeWhile (< 4) (H.IBranch 3 (itree_3) (H.ILeaf))))
		putStrLn ("takeTreeWhile (< 1) (ILeaf) = " ++ show (H.takeTreeWhile (< 1) (H.ILeaf)))

		--myMap--
		putStrLn ("myMap (+ 1) [] = " ++ show(H.myMap (+ 1) [])) 
		putStrLn ("myMap (+ 1) [-1,-4,100] = " ++ show(H.myMap (+ 1) [-1,-4,100]))
