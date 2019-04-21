defmodule DeepTest do
  use ExUnit.Case

  test "test chapter3" do
    assert Deep.test1() == [[0.3168270764110298, 0.6962790898619668]]
    assert Dmatrix.mult([[1,2],[3,4]],[[3,4],[5,6]],1,1,-0.2) == Matrix.mult([[1,2],[3,4]],[[3,4],[5,6-0.2]])
    assert Dmatrix.mult([[1,2],[3,4]],[[5,6],[7,8]],0,0,-1) == Matrix.mult([[1,2],[3,4]],[[5-1,6],[7,8]])
    assert Dmatrix.mult([[1,2],[3,4]],[[5,6,10],[7,8,11]],1,1,-1) == Matrix.mult([[1,2],[3,4]],[[5,6,10],[7,8-1,11]])
    assert Dmatrix.add([[1,2],[3,4]],[[1,2],[3,4]],1,1,2) == Matrix.add([[1,2],[3,4]],[[1,2],[3,6]])
    assert Dmatrix.add([[1,2],[3,4]],[[1,2],[3,4]],0,1,3) == Matrix.add([[1,2],[3,4]],[[1,5],[3,4]])
    assert Deep.cross_entropy([0.1, 0.05, 0.6, 0.0, 0.05, 0.1, 0.0, 0.1, 0.0, 0.0],[0, 0, 1, 0, 0, 0, 0, 0, 0, 0]) == 0.510825457099338
  end
end
