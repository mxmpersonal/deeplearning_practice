       �K"	  ���Y�Abrain.Event:2&q����      �Ҫ�	�k���Y�A"��
]
PlaceholderPlaceholder*
dtype0*
shape: *'
_output_shapes
:���������
_
Placeholder_1Placeholder*
dtype0*
shape: *'
_output_shapes
:���������
d
random_normal/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
W
random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
_output_shapes

:
*
seed2 *
dtype0*
T0*

seed 
{
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0*
_output_shapes

:

d
random_normalAddrandom_normal/mulrandom_normal/mean*
_output_shapes

:
*
T0
|
Variable
VariableV2*
_output_shapes

:
*
	container *
dtype0*
shared_name *
shape
:

�
Variable/AssignAssignVariablerandom_normal*
_output_shapes

:
*
validate_shape(*
_class
loc:@Variable*
T0*
use_locking(
i
Variable/readIdentityVariable*
_output_shapes

:
*
_class
loc:@Variable*
T0
Z
zerosConst*
_output_shapes

:
*
dtype0*
valueB
*    
J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=
A
addAddzerosadd/y*
_output_shapes

:
*
T0
~

Variable_1
VariableV2*
shared_name *
dtype0*
shape
:
*
_output_shapes

:
*
	container 
�
Variable_1/AssignAssign
Variable_1add*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*
_class
loc:@Variable_1
o
Variable_1/readIdentity
Variable_1*
_output_shapes

:
*
_class
loc:@Variable_1*
T0
�
MatMulMatMulPlaceholderVariable/read*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( *
T0
U
AddAddMatMulVariable_1/read*
T0*'
_output_shapes
:���������

C
ReluReluAdd*'
_output_shapes
:���������
*
T0
f
random_normal_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"
      
Y
random_normal_1/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
[
random_normal_1/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
dtype0*

seed *
T0*
_output_shapes

:
*
seed2 
�
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0*
_output_shapes

:

j
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0*
_output_shapes

:

~

Variable_2
VariableV2*
_output_shapes

:
*
	container *
dtype0*
shared_name *
shape
:

�
Variable_2/AssignAssign
Variable_2random_normal_1*
_output_shapes

:
*
validate_shape(*
_class
loc:@Variable_2*
T0*
use_locking(
o
Variable_2/readIdentity
Variable_2*
_output_shapes

:
*
_class
loc:@Variable_2*
T0
\
zeros_1Const*
valueB*    *
dtype0*
_output_shapes

:
L
add_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *���=
G
add_1Addzeros_1add_1/y*
T0*
_output_shapes

:
~

Variable_3
VariableV2*
_output_shapes

:*
	container *
shape
:*
dtype0*
shared_name 
�
Variable_3/AssignAssign
Variable_3add_1*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*
_class
loc:@Variable_3
o
Variable_3/readIdentity
Variable_3*
_output_shapes

:*
_class
loc:@Variable_3*
T0
�
MatMul_1MatMulReluVariable_2/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
Y
Add_1AddMatMul_1Variable_3/read*'
_output_shapes
:���������*
T0
R
subSubPlaceholder_1Add_1*'
_output_shapes
:���������*
T0
G
SquareSquaresub*
T0*'
_output_shapes
:���������
_
Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
t
SumSumSquareSum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
O
ConstConst*
valueB: *
_output_shapes
:*
dtype0
V
MeanMeanSumConst*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
T
gradients/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
\
gradients/Mean_grad/ShapeShapeSum*
out_type0*
_output_shapes
:*
T0
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
^
gradients/Mean_grad/Shape_1ShapeSum*
out_type0*
_output_shapes
:*
T0
^
gradients/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:���������*
T0
^
gradients/Sum_grad/ShapeShapeSquare*
_output_shapes
:*
out_type0*
T0
Y
gradients/Sum_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
r
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
_output_shapes
:*
T0
x
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*
_output_shapes
:
d
gradients/Sum_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
`
gradients/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
`
gradients/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*
_output_shapes
:*

Tidx0
_
gradients/Sum_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :

gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*
_output_shapes
:
�
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
N*
T0*#
_output_shapes
:���������
^
gradients/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*
_output_shapes
:
�
gradients/Sum_grad/ReshapeReshapegradients/Mean_grad/truediv gradients/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
z
gradients/Square_grad/mul/xConst^gradients/Sum_grad/Tile*
_output_shapes
: *
dtype0*
valueB
 *   @
t
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
T0*'
_output_shapes
:���������
�
gradients/Square_grad/mul_1Mulgradients/Sum_grad/Tilegradients/Square_grad/mul*'
_output_shapes
:���������*
T0
e
gradients/sub_grad/ShapeShapePlaceholder_1*
_output_shapes
:*
out_type0*
T0
_
gradients/sub_grad/Shape_1ShapeAdd_1*
T0*
out_type0*
_output_shapes
:
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
�
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*'
_output_shapes
:���������
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*'
_output_shapes
:���������*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0
b
gradients/Add_1_grad/ShapeShapeMatMul_1*
T0*
out_type0*
_output_shapes
:
m
gradients/Add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Add_1_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1*gradients/Add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/Add_1_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1,gradients/Add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
�
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape*'
_output_shapes
:���������
�
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyVariable_2/read*
transpose_b(*
T0*'
_output_shapes
:���������
*
transpose_a( 
�
 gradients/MatMul_1_grad/MatMul_1MatMulRelu-gradients/Add_1_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:
*
transpose_a(*
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*'
_output_shapes
:���������
*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
T0
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:

�
gradients/Relu_grad/ReluGradReluGrad0gradients/MatMul_1_grad/tuple/control_dependencyRelu*
T0*'
_output_shapes
:���������

^
gradients/Add_grad/ShapeShapeMatMul*
_output_shapes
:*
out_type0*
T0
k
gradients/Add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   
   
�
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/Add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/Add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
gradients/Add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
_output_shapes

:
*
Tshape0*
T0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
�
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*-
_class#
!loc:@gradients/Add_grad/Reshape*'
_output_shapes
:���������
*
T0
�
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
_output_shapes

:

�
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyVariable/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
gradients/MatMul_grad/MatMul_1MatMulPlaceholder+gradients/Add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:
*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
b
GradientDescent/learning_rateConst*
valueB
 *���=*
_output_shapes
: *
dtype0
�
4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes

:
*
_class
loc:@Variable
�
6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes

:
*
_class
loc:@Variable_1
�
6GradientDescent/update_Variable_2/ApplyGradientDescentApplyGradientDescent
Variable_2GradientDescent/learning_rate2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
_output_shapes

:

�
6GradientDescent/update_Variable_3/ApplyGradientDescentApplyGradientDescent
Variable_3GradientDescent/learning_rate/gradients/Add_1_grad/tuple/control_dependency_1*
_class
loc:@Variable_3*
_output_shapes

:*
T0*
use_locking( 
�
GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent7^GradientDescent/update_Variable_2/ApplyGradientDescent7^GradientDescent/update_Variable_3/ApplyGradientDescent
_
Placeholder_2Placeholder*'
_output_shapes
:���������*
shape: *
dtype0
_
Placeholder_3Placeholder*'
_output_shapes
:���������*
dtype0*
shape: 
f
random_normal_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
Y
random_normal_2/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
[
random_normal_2/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
_output_shapes

:
*
seed2 *
dtype0*
T0*

seed 
�
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
_output_shapes

:
*
T0
j
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
T0*
_output_shapes

:

~

Variable_4
VariableV2*
_output_shapes

:
*
	container *
shape
:
*
dtype0*
shared_name 
�
Variable_4/AssignAssign
Variable_4random_normal_2*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes

:

o
Variable_4/readIdentity
Variable_4*
_output_shapes

:
*
_class
loc:@Variable_4*
T0
\
zeros_2Const*
_output_shapes

:
*
dtype0*
valueB
*    
L
add_2/yConst*
valueB
 *���=*
_output_shapes
: *
dtype0
G
add_2Addzeros_2add_2/y*
_output_shapes

:
*
T0
~

Variable_5
VariableV2*
shape
:
*
shared_name *
dtype0*
_output_shapes

:
*
	container 
�
Variable_5/AssignAssign
Variable_5add_2*
_output_shapes

:
*
validate_shape(*
_class
loc:@Variable_5*
T0*
use_locking(
o
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5*
_output_shapes

:

�
MatMul_2MatMulPlaceholder_2Variable_4/read*
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
Y
Add_2AddMatMul_2Variable_5/read*'
_output_shapes
:���������
*
T0
G
Relu_1ReluAdd_2*'
_output_shapes
:���������
*
T0
f
random_normal_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"
      
Y
random_normal_3/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
[
random_normal_3/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
$random_normal_3/RandomStandardNormalRandomStandardNormalrandom_normal_3/shape*
_output_shapes

:
*
seed2 *
T0*

seed *
dtype0
�
random_normal_3/mulMul$random_normal_3/RandomStandardNormalrandom_normal_3/stddev*
T0*
_output_shapes

:

j
random_normal_3Addrandom_normal_3/mulrandom_normal_3/mean*
_output_shapes

:
*
T0
~

Variable_6
VariableV2*
shape
:
*
shared_name *
dtype0*
_output_shapes

:
*
	container 
�
Variable_6/AssignAssign
Variable_6random_normal_3*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*
_class
loc:@Variable_6
o
Variable_6/readIdentity
Variable_6*
T0*
_output_shapes

:
*
_class
loc:@Variable_6
\
zeros_3Const*
valueB*    *
_output_shapes

:*
dtype0
L
add_3/yConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
G
add_3Addzeros_3add_3/y*
T0*
_output_shapes

:
~

Variable_7
VariableV2*
shape
:*
shared_name *
dtype0*
_output_shapes

:*
	container 
�
Variable_7/AssignAssign
Variable_7add_3*
_class
loc:@Variable_7*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
o
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
_output_shapes

:*
T0
�
MatMul_3MatMulRelu_1Variable_6/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
Y
Add_3AddMatMul_3Variable_7/read*'
_output_shapes
:���������*
T0
T
sub_1SubPlaceholder_3Add_3*'
_output_shapes
:���������*
T0
K
Square_1Squaresub_1*
T0*'
_output_shapes
:���������
a
Sum_1/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
z
Sum_1SumSquare_1Sum_1/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
\
Mean_1MeanSum_1Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
V
gradients_1/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
_
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
_output_shapes
: *
T0
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
b
gradients_1/Mean_1_grad/ShapeShapeSum_1*
_output_shapes
:*
out_type0*
T0
�
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
d
gradients_1/Mean_1_grad/Shape_1ShapeSum_1*
T0*
_output_shapes
:*
out_type0
b
gradients_1/Mean_1_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
g
gradients_1/Mean_1_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
gradients_1/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0
�
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
_output_shapes
: *
T0
v
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:���������
d
gradients_1/Sum_1_grad/ShapeShapeSquare_1*
_output_shapes
:*
out_type0*
T0
]
gradients_1/Sum_1_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
|
gradients_1/Sum_1_grad/addAddSum_1/reduction_indicesgradients_1/Sum_1_grad/Size*
_output_shapes
:*
T0
�
gradients_1/Sum_1_grad/modFloorModgradients_1/Sum_1_grad/addgradients_1/Sum_1_grad/Size*
T0*
_output_shapes
:
h
gradients_1/Sum_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
d
"gradients_1/Sum_1_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"gradients_1/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_1/Sum_1_grad/rangeRange"gradients_1/Sum_1_grad/range/startgradients_1/Sum_1_grad/Size"gradients_1/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0
c
!gradients_1/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_1/Sum_1_grad/FillFillgradients_1/Sum_1_grad/Shape_1!gradients_1/Sum_1_grad/Fill/value*
T0*
_output_shapes
:
�
$gradients_1/Sum_1_grad/DynamicStitchDynamicStitchgradients_1/Sum_1_grad/rangegradients_1/Sum_1_grad/modgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Fill*#
_output_shapes
:���������*
N*
T0
b
 gradients_1/Sum_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients_1/Sum_1_grad/MaximumMaximum$gradients_1/Sum_1_grad/DynamicStitch gradients_1/Sum_1_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
gradients_1/Sum_1_grad/floordivFloorDivgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Maximum*
_output_shapes
:*
T0
�
gradients_1/Sum_1_grad/ReshapeReshapegradients_1/Mean_1_grad/truediv$gradients_1/Sum_1_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
gradients_1/Sum_1_grad/TileTilegradients_1/Sum_1_grad/Reshapegradients_1/Sum_1_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
gradients_1/Square_1_grad/mul/xConst^gradients_1/Sum_1_grad/Tile*
valueB
 *   @*
_output_shapes
: *
dtype0
~
gradients_1/Square_1_grad/mulMulgradients_1/Square_1_grad/mul/xsub_1*'
_output_shapes
:���������*
T0
�
gradients_1/Square_1_grad/mul_1Mulgradients_1/Sum_1_grad/Tilegradients_1/Square_1_grad/mul*
T0*'
_output_shapes
:���������
i
gradients_1/sub_1_grad/ShapeShapePlaceholder_3*
_output_shapes
:*
out_type0*
T0
c
gradients_1/sub_1_grad/Shape_1ShapeAdd_3*
out_type0*
_output_shapes
:*
T0
�
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/sub_1_grad/SumSumgradients_1/Square_1_grad/mul_1,gradients_1/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
gradients_1/sub_1_grad/Sum_1Sumgradients_1/Square_1_grad/mul_1.gradients_1/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
b
gradients_1/sub_1_grad/NegNeggradients_1/sub_1_grad/Sum_1*
_output_shapes
:*
T0
�
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Neggradients_1/sub_1_grad/Shape_1*'
_output_shapes
:���������*
Tshape0*
T0
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
�
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape*'
_output_shapes
:���������*
T0
�
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1*'
_output_shapes
:���������
d
gradients_1/Add_3_grad/ShapeShapeMatMul_3*
_output_shapes
:*
out_type0*
T0
o
gradients_1/Add_3_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      
�
,gradients_1/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Add_3_grad/Shapegradients_1/Add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/Add_3_grad/SumSum1gradients_1/sub_1_grad/tuple/control_dependency_1,gradients_1/Add_3_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients_1/Add_3_grad/ReshapeReshapegradients_1/Add_3_grad/Sumgradients_1/Add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients_1/Add_3_grad/Sum_1Sum1gradients_1/sub_1_grad/tuple/control_dependency_1.gradients_1/Add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
 gradients_1/Add_3_grad/Reshape_1Reshapegradients_1/Add_3_grad/Sum_1gradients_1/Add_3_grad/Shape_1*
_output_shapes

:*
Tshape0*
T0
s
'gradients_1/Add_3_grad/tuple/group_depsNoOp^gradients_1/Add_3_grad/Reshape!^gradients_1/Add_3_grad/Reshape_1
�
/gradients_1/Add_3_grad/tuple/control_dependencyIdentitygradients_1/Add_3_grad/Reshape(^gradients_1/Add_3_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*1
_class'
%#loc:@gradients_1/Add_3_grad/Reshape
�
1gradients_1/Add_3_grad/tuple/control_dependency_1Identity gradients_1/Add_3_grad/Reshape_1(^gradients_1/Add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients_1/Add_3_grad/Reshape_1
�
 gradients_1/MatMul_3_grad/MatMulMatMul/gradients_1/Add_3_grad/tuple/control_dependencyVariable_6/read*
transpose_b(*'
_output_shapes
:���������
*
transpose_a( *
T0
�
"gradients_1/MatMul_3_grad/MatMul_1MatMulRelu_1/gradients_1/Add_3_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
z
*gradients_1/MatMul_3_grad/tuple/group_depsNoOp!^gradients_1/MatMul_3_grad/MatMul#^gradients_1/MatMul_3_grad/MatMul_1
�
2gradients_1/MatMul_3_grad/tuple/control_dependencyIdentity gradients_1/MatMul_3_grad/MatMul+^gradients_1/MatMul_3_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/MatMul_3_grad/MatMul*'
_output_shapes
:���������
*
T0
�
4gradients_1/MatMul_3_grad/tuple/control_dependency_1Identity"gradients_1/MatMul_3_grad/MatMul_1+^gradients_1/MatMul_3_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/MatMul_3_grad/MatMul_1*
_output_shapes

:

�
 gradients_1/Relu_1_grad/ReluGradReluGrad2gradients_1/MatMul_3_grad/tuple/control_dependencyRelu_1*'
_output_shapes
:���������
*
T0
d
gradients_1/Add_2_grad/ShapeShapeMatMul_2*
_output_shapes
:*
out_type0*
T0
o
gradients_1/Add_2_grad/Shape_1Const*
valueB"   
   *
_output_shapes
:*
dtype0
�
,gradients_1/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Add_2_grad/Shapegradients_1/Add_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/Add_2_grad/SumSum gradients_1/Relu_1_grad/ReluGrad,gradients_1/Add_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients_1/Add_2_grad/ReshapeReshapegradients_1/Add_2_grad/Sumgradients_1/Add_2_grad/Shape*'
_output_shapes
:���������
*
Tshape0*
T0
�
gradients_1/Add_2_grad/Sum_1Sum gradients_1/Relu_1_grad/ReluGrad.gradients_1/Add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
 gradients_1/Add_2_grad/Reshape_1Reshapegradients_1/Add_2_grad/Sum_1gradients_1/Add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:

s
'gradients_1/Add_2_grad/tuple/group_depsNoOp^gradients_1/Add_2_grad/Reshape!^gradients_1/Add_2_grad/Reshape_1
�
/gradients_1/Add_2_grad/tuple/control_dependencyIdentitygradients_1/Add_2_grad/Reshape(^gradients_1/Add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Add_2_grad/Reshape*'
_output_shapes
:���������

�
1gradients_1/Add_2_grad/tuple/control_dependency_1Identity gradients_1/Add_2_grad/Reshape_1(^gradients_1/Add_2_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/Add_2_grad/Reshape_1*
_output_shapes

:
*
T0
�
 gradients_1/MatMul_2_grad/MatMulMatMul/gradients_1/Add_2_grad/tuple/control_dependencyVariable_4/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
"gradients_1/MatMul_2_grad/MatMul_1MatMulPlaceholder_2/gradients_1/Add_2_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:
*
transpose_a(*
T0
z
*gradients_1/MatMul_2_grad/tuple/group_depsNoOp!^gradients_1/MatMul_2_grad/MatMul#^gradients_1/MatMul_2_grad/MatMul_1
�
2gradients_1/MatMul_2_grad/tuple/control_dependencyIdentity gradients_1/MatMul_2_grad/MatMul+^gradients_1/MatMul_2_grad/tuple/group_deps*'
_output_shapes
:���������*3
_class)
'%loc:@gradients_1/MatMul_2_grad/MatMul*
T0
�
4gradients_1/MatMul_2_grad/tuple/control_dependency_1Identity"gradients_1/MatMul_2_grad/MatMul_1+^gradients_1/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:
*5
_class+
)'loc:@gradients_1/MatMul_2_grad/MatMul_1
d
GradientDescent_1/learning_rateConst*
valueB
 *���=*
_output_shapes
: *
dtype0
�
8GradientDescent_1/update_Variable_4/ApplyGradientDescentApplyGradientDescent
Variable_4GradientDescent_1/learning_rate4gradients_1/MatMul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes

:
*
_class
loc:@Variable_4
�
8GradientDescent_1/update_Variable_5/ApplyGradientDescentApplyGradientDescent
Variable_5GradientDescent_1/learning_rate1gradients_1/Add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
_output_shapes

:

�
8GradientDescent_1/update_Variable_6/ApplyGradientDescentApplyGradientDescent
Variable_6GradientDescent_1/learning_rate4gradients_1/MatMul_3_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_6*
_output_shapes

:

�
8GradientDescent_1/update_Variable_7/ApplyGradientDescentApplyGradientDescent
Variable_7GradientDescent_1/learning_rate1gradients_1/Add_3_grad/tuple/control_dependency_1*
_class
loc:@Variable_7*
_output_shapes

:*
T0*
use_locking( 
�
GradientDescent_1NoOp9^GradientDescent_1/update_Variable_4/ApplyGradientDescent9^GradientDescent_1/update_Variable_5/ApplyGradientDescent9^GradientDescent_1/update_Variable_6/ApplyGradientDescent9^GradientDescent_1/update_Variable_7/ApplyGradientDescent
_
Placeholder_4Placeholder*
shape: *
dtype0*'
_output_shapes
:���������
_
Placeholder_5Placeholder*
shape: *
dtype0*'
_output_shapes
:���������
f
random_normal_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
Y
random_normal_4/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_4/stddevConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
$random_normal_4/RandomStandardNormalRandomStandardNormalrandom_normal_4/shape*
_output_shapes

:
*
seed2 *
T0*

seed *
dtype0
�
random_normal_4/mulMul$random_normal_4/RandomStandardNormalrandom_normal_4/stddev*
T0*
_output_shapes

:

j
random_normal_4Addrandom_normal_4/mulrandom_normal_4/mean*
T0*
_output_shapes

:

~

Variable_8
VariableV2*
_output_shapes

:
*
	container *
dtype0*
shared_name *
shape
:

�
Variable_8/AssignAssign
Variable_8random_normal_4*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:

o
Variable_8/readIdentity
Variable_8*
_class
loc:@Variable_8*
_output_shapes

:
*
T0
\
zeros_4Const*
dtype0*
_output_shapes

:
*
valueB
*    
L
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=
G
add_4Addzeros_4add_4/y*
T0*
_output_shapes

:

~

Variable_9
VariableV2*
shared_name *
dtype0*
shape
:
*
_output_shapes

:
*
	container 
�
Variable_9/AssignAssign
Variable_9add_4*
_output_shapes

:
*
validate_shape(*
_class
loc:@Variable_9*
T0*
use_locking(
o
Variable_9/readIdentity
Variable_9*
_output_shapes

:
*
_class
loc:@Variable_9*
T0
�
MatMul_4MatMulPlaceholder_4Variable_8/read*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( *
T0
Y
Add_4AddMatMul_4Variable_9/read*'
_output_shapes
:���������
*
T0
G
Relu_2ReluAdd_4*'
_output_shapes
:���������
*
T0
f
random_normal_5/shapeConst*
dtype0*
_output_shapes
:*
valueB"
      
Y
random_normal_5/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
[
random_normal_5/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
$random_normal_5/RandomStandardNormalRandomStandardNormalrandom_normal_5/shape*

seed *
T0*
dtype0*
_output_shapes

:
*
seed2 
�
random_normal_5/mulMul$random_normal_5/RandomStandardNormalrandom_normal_5/stddev*
_output_shapes

:
*
T0
j
random_normal_5Addrandom_normal_5/mulrandom_normal_5/mean*
T0*
_output_shapes

:


Variable_10
VariableV2*
shape
:
*
shared_name *
dtype0*
_output_shapes

:
*
	container 
�
Variable_10/AssignAssignVariable_10random_normal_5*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*
_class
loc:@Variable_10
r
Variable_10/readIdentityVariable_10*
_class
loc:@Variable_10*
_output_shapes

:
*
T0
\
zeros_5Const*
dtype0*
_output_shapes

:*
valueB*    
L
add_5/yConst*
dtype0*
_output_shapes
: *
valueB
 *���=
G
add_5Addzeros_5add_5/y*
T0*
_output_shapes

:

Variable_11
VariableV2*
_output_shapes

:*
	container *
shape
:*
dtype0*
shared_name 
�
Variable_11/AssignAssignVariable_11add_5*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes

:
r
Variable_11/readIdentityVariable_11*
T0*
_class
loc:@Variable_11*
_output_shapes

:
�
MatMul_5MatMulRelu_2Variable_10/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
Z
Add_5AddMatMul_5Variable_11/read*'
_output_shapes
:���������*
T0
T
sub_2SubPlaceholder_5Add_5*
T0*'
_output_shapes
:���������
K
Square_2Squaresub_2*'
_output_shapes
:���������*
T0
a
Sum_2/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
z
Sum_2SumSquare_2Sum_2/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
Q
Const_2Const*
valueB: *
_output_shapes
:*
dtype0
\
Mean_2MeanSum_2Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
T
gradients_2/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
V
gradients_2/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
_
gradients_2/FillFillgradients_2/Shapegradients_2/Const*
_output_shapes
: *
T0
o
%gradients_2/Mean_2_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
gradients_2/Mean_2_grad/ReshapeReshapegradients_2/Fill%gradients_2/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
b
gradients_2/Mean_2_grad/ShapeShapeSum_2*
T0*
_output_shapes
:*
out_type0
�
gradients_2/Mean_2_grad/TileTilegradients_2/Mean_2_grad/Reshapegradients_2/Mean_2_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
d
gradients_2/Mean_2_grad/Shape_1ShapeSum_2*
T0*
_output_shapes
:*
out_type0
b
gradients_2/Mean_2_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
g
gradients_2/Mean_2_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
gradients_2/Mean_2_grad/ProdProdgradients_2/Mean_2_grad/Shape_1gradients_2/Mean_2_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
gradients_2/Mean_2_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients_2/Mean_2_grad/Prod_1Prodgradients_2/Mean_2_grad/Shape_2gradients_2/Mean_2_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!gradients_2/Mean_2_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
gradients_2/Mean_2_grad/MaximumMaximumgradients_2/Mean_2_grad/Prod_1!gradients_2/Mean_2_grad/Maximum/y*
_output_shapes
: *
T0
�
 gradients_2/Mean_2_grad/floordivFloorDivgradients_2/Mean_2_grad/Prodgradients_2/Mean_2_grad/Maximum*
_output_shapes
: *
T0
v
gradients_2/Mean_2_grad/CastCast gradients_2/Mean_2_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
gradients_2/Mean_2_grad/truedivRealDivgradients_2/Mean_2_grad/Tilegradients_2/Mean_2_grad/Cast*
T0*#
_output_shapes
:���������
d
gradients_2/Sum_2_grad/ShapeShapeSquare_2*
T0*
out_type0*
_output_shapes
:
]
gradients_2/Sum_2_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
|
gradients_2/Sum_2_grad/addAddSum_2/reduction_indicesgradients_2/Sum_2_grad/Size*
T0*
_output_shapes
:
�
gradients_2/Sum_2_grad/modFloorModgradients_2/Sum_2_grad/addgradients_2/Sum_2_grad/Size*
T0*
_output_shapes
:
h
gradients_2/Sum_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
d
"gradients_2/Sum_2_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
d
"gradients_2/Sum_2_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients_2/Sum_2_grad/rangeRange"gradients_2/Sum_2_grad/range/startgradients_2/Sum_2_grad/Size"gradients_2/Sum_2_grad/range/delta*

Tidx0*
_output_shapes
:
c
!gradients_2/Sum_2_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients_2/Sum_2_grad/FillFillgradients_2/Sum_2_grad/Shape_1!gradients_2/Sum_2_grad/Fill/value*
T0*
_output_shapes
:
�
$gradients_2/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/Sum_2_grad/rangegradients_2/Sum_2_grad/modgradients_2/Sum_2_grad/Shapegradients_2/Sum_2_grad/Fill*#
_output_shapes
:���������*
T0*
N
b
 gradients_2/Sum_2_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients_2/Sum_2_grad/MaximumMaximum$gradients_2/Sum_2_grad/DynamicStitch gradients_2/Sum_2_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
gradients_2/Sum_2_grad/floordivFloorDivgradients_2/Sum_2_grad/Shapegradients_2/Sum_2_grad/Maximum*
T0*
_output_shapes
:
�
gradients_2/Sum_2_grad/ReshapeReshapegradients_2/Mean_2_grad/truediv$gradients_2/Sum_2_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
gradients_2/Sum_2_grad/TileTilegradients_2/Sum_2_grad/Reshapegradients_2/Sum_2_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
gradients_2/Square_2_grad/mul/xConst^gradients_2/Sum_2_grad/Tile*
valueB
 *   @*
_output_shapes
: *
dtype0
~
gradients_2/Square_2_grad/mulMulgradients_2/Square_2_grad/mul/xsub_2*'
_output_shapes
:���������*
T0
�
gradients_2/Square_2_grad/mul_1Mulgradients_2/Sum_2_grad/Tilegradients_2/Square_2_grad/mul*'
_output_shapes
:���������*
T0
i
gradients_2/sub_2_grad/ShapeShapePlaceholder_5*
_output_shapes
:*
out_type0*
T0
c
gradients_2/sub_2_grad/Shape_1ShapeAdd_5*
_output_shapes
:*
out_type0*
T0
�
,gradients_2/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/sub_2_grad/Shapegradients_2/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_2/sub_2_grad/SumSumgradients_2/Square_2_grad/mul_1,gradients_2/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_2/sub_2_grad/ReshapeReshapegradients_2/sub_2_grad/Sumgradients_2/sub_2_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
�
gradients_2/sub_2_grad/Sum_1Sumgradients_2/Square_2_grad/mul_1.gradients_2/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
b
gradients_2/sub_2_grad/NegNeggradients_2/sub_2_grad/Sum_1*
_output_shapes
:*
T0
�
 gradients_2/sub_2_grad/Reshape_1Reshapegradients_2/sub_2_grad/Neggradients_2/sub_2_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
s
'gradients_2/sub_2_grad/tuple/group_depsNoOp^gradients_2/sub_2_grad/Reshape!^gradients_2/sub_2_grad/Reshape_1
�
/gradients_2/sub_2_grad/tuple/control_dependencyIdentitygradients_2/sub_2_grad/Reshape(^gradients_2/sub_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients_2/sub_2_grad/Reshape*'
_output_shapes
:���������*
T0
�
1gradients_2/sub_2_grad/tuple/control_dependency_1Identity gradients_2/sub_2_grad/Reshape_1(^gradients_2/sub_2_grad/tuple/group_deps*3
_class)
'%loc:@gradients_2/sub_2_grad/Reshape_1*'
_output_shapes
:���������*
T0
d
gradients_2/Add_5_grad/ShapeShapeMatMul_5*
T0*
_output_shapes
:*
out_type0
o
gradients_2/Add_5_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      
�
,gradients_2/Add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/Add_5_grad/Shapegradients_2/Add_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_2/Add_5_grad/SumSum1gradients_2/sub_2_grad/tuple/control_dependency_1,gradients_2/Add_5_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients_2/Add_5_grad/ReshapeReshapegradients_2/Add_5_grad/Sumgradients_2/Add_5_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
gradients_2/Add_5_grad/Sum_1Sum1gradients_2/sub_2_grad/tuple/control_dependency_1.gradients_2/Add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
 gradients_2/Add_5_grad/Reshape_1Reshapegradients_2/Add_5_grad/Sum_1gradients_2/Add_5_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
s
'gradients_2/Add_5_grad/tuple/group_depsNoOp^gradients_2/Add_5_grad/Reshape!^gradients_2/Add_5_grad/Reshape_1
�
/gradients_2/Add_5_grad/tuple/control_dependencyIdentitygradients_2/Add_5_grad/Reshape(^gradients_2/Add_5_grad/tuple/group_deps*1
_class'
%#loc:@gradients_2/Add_5_grad/Reshape*'
_output_shapes
:���������*
T0
�
1gradients_2/Add_5_grad/tuple/control_dependency_1Identity gradients_2/Add_5_grad/Reshape_1(^gradients_2/Add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients_2/Add_5_grad/Reshape_1
�
 gradients_2/MatMul_5_grad/MatMulMatMul/gradients_2/Add_5_grad/tuple/control_dependencyVariable_10/read*
transpose_b(*
T0*'
_output_shapes
:���������
*
transpose_a( 
�
"gradients_2/MatMul_5_grad/MatMul_1MatMulRelu_2/gradients_2/Add_5_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
z
*gradients_2/MatMul_5_grad/tuple/group_depsNoOp!^gradients_2/MatMul_5_grad/MatMul#^gradients_2/MatMul_5_grad/MatMul_1
�
2gradients_2/MatMul_5_grad/tuple/control_dependencyIdentity gradients_2/MatMul_5_grad/MatMul+^gradients_2/MatMul_5_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_2/MatMul_5_grad/MatMul*'
_output_shapes
:���������

�
4gradients_2/MatMul_5_grad/tuple/control_dependency_1Identity"gradients_2/MatMul_5_grad/MatMul_1+^gradients_2/MatMul_5_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_2/MatMul_5_grad/MatMul_1*
_output_shapes

:

�
 gradients_2/Relu_2_grad/ReluGradReluGrad2gradients_2/MatMul_5_grad/tuple/control_dependencyRelu_2*'
_output_shapes
:���������
*
T0
d
gradients_2/Add_4_grad/ShapeShapeMatMul_4*
T0*
_output_shapes
:*
out_type0
o
gradients_2/Add_4_grad/Shape_1Const*
valueB"   
   *
dtype0*
_output_shapes
:
�
,gradients_2/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/Add_4_grad/Shapegradients_2/Add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_2/Add_4_grad/SumSum gradients_2/Relu_2_grad/ReluGrad,gradients_2/Add_4_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients_2/Add_4_grad/ReshapeReshapegradients_2/Add_4_grad/Sumgradients_2/Add_4_grad/Shape*'
_output_shapes
:���������
*
Tshape0*
T0
�
gradients_2/Add_4_grad/Sum_1Sum gradients_2/Relu_2_grad/ReluGrad.gradients_2/Add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
 gradients_2/Add_4_grad/Reshape_1Reshapegradients_2/Add_4_grad/Sum_1gradients_2/Add_4_grad/Shape_1*
T0*
_output_shapes

:
*
Tshape0
s
'gradients_2/Add_4_grad/tuple/group_depsNoOp^gradients_2/Add_4_grad/Reshape!^gradients_2/Add_4_grad/Reshape_1
�
/gradients_2/Add_4_grad/tuple/control_dependencyIdentitygradients_2/Add_4_grad/Reshape(^gradients_2/Add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_2/Add_4_grad/Reshape*'
_output_shapes
:���������

�
1gradients_2/Add_4_grad/tuple/control_dependency_1Identity gradients_2/Add_4_grad/Reshape_1(^gradients_2/Add_4_grad/tuple/group_deps*3
_class)
'%loc:@gradients_2/Add_4_grad/Reshape_1*
_output_shapes

:
*
T0
�
 gradients_2/MatMul_4_grad/MatMulMatMul/gradients_2/Add_4_grad/tuple/control_dependencyVariable_8/read*
transpose_b(*'
_output_shapes
:���������*
transpose_a( *
T0
�
"gradients_2/MatMul_4_grad/MatMul_1MatMulPlaceholder_4/gradients_2/Add_4_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:
*
transpose_a(*
T0
z
*gradients_2/MatMul_4_grad/tuple/group_depsNoOp!^gradients_2/MatMul_4_grad/MatMul#^gradients_2/MatMul_4_grad/MatMul_1
�
2gradients_2/MatMul_4_grad/tuple/control_dependencyIdentity gradients_2/MatMul_4_grad/MatMul+^gradients_2/MatMul_4_grad/tuple/group_deps*'
_output_shapes
:���������*3
_class)
'%loc:@gradients_2/MatMul_4_grad/MatMul*
T0
�
4gradients_2/MatMul_4_grad/tuple/control_dependency_1Identity"gradients_2/MatMul_4_grad/MatMul_1+^gradients_2/MatMul_4_grad/tuple/group_deps*5
_class+
)'loc:@gradients_2/MatMul_4_grad/MatMul_1*
_output_shapes

:
*
T0
d
GradientDescent_2/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
8GradientDescent_2/update_Variable_8/ApplyGradientDescentApplyGradientDescent
Variable_8GradientDescent_2/learning_rate4gradients_2/MatMul_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes

:
*
_class
loc:@Variable_8
�
8GradientDescent_2/update_Variable_9/ApplyGradientDescentApplyGradientDescent
Variable_9GradientDescent_2/learning_rate1gradients_2/Add_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes

:
*
_class
loc:@Variable_9
�
9GradientDescent_2/update_Variable_10/ApplyGradientDescentApplyGradientDescentVariable_10GradientDescent_2/learning_rate4gradients_2/MatMul_5_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes

:
*
_class
loc:@Variable_10
�
9GradientDescent_2/update_Variable_11/ApplyGradientDescentApplyGradientDescentVariable_11GradientDescent_2/learning_rate1gradients_2/Add_5_grad/tuple/control_dependency_1*
_class
loc:@Variable_11*
_output_shapes

:*
T0*
use_locking( 
�
GradientDescent_2NoOp9^GradientDescent_2/update_Variable_8/ApplyGradientDescent9^GradientDescent_2/update_Variable_9/ApplyGradientDescent:^GradientDescent_2/update_Variable_10/ApplyGradientDescent:^GradientDescent_2/update_Variable_11/ApplyGradientDescent"�.0�      Q�	����Y�AJ��
��
9
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyGradientDescent
var"T�

alpha"T

delta"T
out"T�"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Square
x"T
y"T"
Ttype:
	2	
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.0.02v1.0.0-rc2-15-g47bba63-dirty��
]
PlaceholderPlaceholder*
shape: *
dtype0*'
_output_shapes
:���������
_
Placeholder_1Placeholder*
dtype0*
shape: *'
_output_shapes
:���������
d
random_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
W
random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
Y
random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*

seed *
T0*
dtype0*
_output_shapes

:
*
seed2 
{
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0*
_output_shapes

:

d
random_normalAddrandom_normal/mulrandom_normal/mean*
_output_shapes

:
*
T0
|
Variable
VariableV2*
shape
:
*
shared_name *
dtype0*
_output_shapes

:
*
	container 
�
Variable/AssignAssignVariablerandom_normal*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:

i
Variable/readIdentityVariable*
T0*
_output_shapes

:
*
_class
loc:@Variable
Z
zerosConst*
valueB
*    *
_output_shapes

:
*
dtype0
J
add/yConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
A
addAddzerosadd/y*
_output_shapes

:
*
T0
~

Variable_1
VariableV2*
_output_shapes

:
*
	container *
dtype0*
shared_name *
shape
:

�
Variable_1/AssignAssign
Variable_1add*
_class
loc:@Variable_1*
_output_shapes

:
*
T0*
validate_shape(*
use_locking(
o
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes

:
*
_class
loc:@Variable_1
�
MatMulMatMulPlaceholderVariable/read*
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
U
AddAddMatMulVariable_1/read*'
_output_shapes
:���������
*
T0
C
ReluReluAdd*'
_output_shapes
:���������
*
T0
f
random_normal_1/shapeConst*
valueB"
      *
_output_shapes
:*
dtype0
Y
random_normal_1/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_1/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
dtype0*

seed *
T0*
_output_shapes

:
*
seed2 
�
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
_output_shapes

:
*
T0
j
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
_output_shapes

:
*
T0
~

Variable_2
VariableV2*
shared_name *
dtype0*
shape
:
*
_output_shapes

:
*
	container 
�
Variable_2/AssignAssign
Variable_2random_normal_1*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes

:

o
Variable_2/readIdentity
Variable_2*
T0*
_output_shapes

:
*
_class
loc:@Variable_2
\
zeros_1Const*
valueB*    *
dtype0*
_output_shapes

:
L
add_1/yConst*
valueB
 *���=*
_output_shapes
: *
dtype0
G
add_1Addzeros_1add_1/y*
T0*
_output_shapes

:
~

Variable_3
VariableV2*
_output_shapes

:*
	container *
dtype0*
shared_name *
shape
:
�
Variable_3/AssignAssign
Variable_3add_1*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*
_class
loc:@Variable_3
o
Variable_3/readIdentity
Variable_3*
T0*
_output_shapes

:*
_class
loc:@Variable_3
�
MatMul_1MatMulReluVariable_2/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
Y
Add_1AddMatMul_1Variable_3/read*'
_output_shapes
:���������*
T0
R
subSubPlaceholder_1Add_1*
T0*'
_output_shapes
:���������
G
SquareSquaresub*
T0*'
_output_shapes
:���������
_
Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
t
SumSumSquareSum/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
O
ConstConst*
valueB: *
_output_shapes
:*
dtype0
V
MeanMeanSumConst*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
T
gradients/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
\
gradients/Mean_grad/ShapeShapeSum*
_output_shapes
:*
out_type0*
T0
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
^
gradients/Mean_grad/Shape_1ShapeSum*
T0*
_output_shapes
:*
out_type0
^
gradients/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:���������*
T0
^
gradients/Sum_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
Y
gradients/Sum_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
r
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*
_output_shapes
:
x
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*
_output_shapes
:
d
gradients/Sum_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
`
gradients/Sum_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
`
gradients/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
_
gradients/Sum_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :

gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*
_output_shapes
:
�
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*#
_output_shapes
:���������*
T0*
N
^
gradients/Sum_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
_output_shapes
:*
T0
�
gradients/Sum_grad/ReshapeReshapegradients/Mean_grad/truediv gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
�
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
z
gradients/Square_grad/mul/xConst^gradients/Sum_grad/Tile*
valueB
 *   @*
dtype0*
_output_shapes
: 
t
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*'
_output_shapes
:���������*
T0
�
gradients/Square_grad/mul_1Mulgradients/Sum_grad/Tilegradients/Square_grad/mul*'
_output_shapes
:���������*
T0
e
gradients/sub_grad/ShapeShapePlaceholder_1*
_output_shapes
:*
out_type0*
T0
_
gradients/sub_grad/Shape_1ShapeAdd_1*
T0*
_output_shapes
:*
out_type0
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*'
_output_shapes
:���������*
Tshape0*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*'
_output_shapes
:���������
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
b
gradients/Add_1_grad/ShapeShapeMatMul_1*
T0*
out_type0*
_output_shapes
:
m
gradients/Add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Add_1_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1*gradients/Add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/Add_1_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1,gradients/Add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
_output_shapes

:*
Tshape0*
T0
m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
�
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_1_grad/Reshape*'
_output_shapes
:���������*
T0
�
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyVariable_2/read*
transpose_b(*
T0*'
_output_shapes
:���������
*
transpose_a( 
�
 gradients/MatMul_1_grad/MatMul_1MatMulRelu-gradients/Add_1_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*'
_output_shapes
:���������

�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:
*
T0
�
gradients/Relu_grad/ReluGradReluGrad0gradients/MatMul_1_grad/tuple/control_dependencyRelu*'
_output_shapes
:���������
*
T0
^
gradients/Add_grad/ShapeShapeMatMul*
out_type0*
_output_shapes
:*
T0
k
gradients/Add_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   
   
�
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/Add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/Add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*'
_output_shapes
:���������
*
Tshape0*
T0
�
gradients/Add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
_output_shapes

:
*
Tshape0*
T0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
�
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*-
_class#
!loc:@gradients/Add_grad/Reshape*'
_output_shapes
:���������
*
T0
�
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
_output_shapes

:
*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
T0
�
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyVariable/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
gradients/MatMul_grad/MatMul_1MatMulPlaceholder+gradients/Add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*'
_output_shapes
:���������
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes

:
*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0
b
GradientDescent/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *���=
�
4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:
*
_class
loc:@Variable*
T0*
use_locking( 
�
6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
_output_shapes

:
*
_class
loc:@Variable_1*
T0*
use_locking( 
�
6GradientDescent/update_Variable_2/ApplyGradientDescentApplyGradientDescent
Variable_2GradientDescent/learning_rate2gradients/MatMul_1_grad/tuple/control_dependency_1*
_class
loc:@Variable_2*
_output_shapes

:
*
T0*
use_locking( 
�
6GradientDescent/update_Variable_3/ApplyGradientDescentApplyGradientDescent
Variable_3GradientDescent/learning_rate/gradients/Add_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
_output_shapes

:
�
GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent7^GradientDescent/update_Variable_2/ApplyGradientDescent7^GradientDescent/update_Variable_3/ApplyGradientDescent
_
Placeholder_2Placeholder*'
_output_shapes
:���������*
shape: *
dtype0
_
Placeholder_3Placeholder*'
_output_shapes
:���������*
dtype0*
shape: 
f
random_normal_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
Y
random_normal_2/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
[
random_normal_2/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
_output_shapes

:
*
seed2 *
dtype0*
T0*

seed 
�
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
_output_shapes

:
*
T0
j
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
_output_shapes

:
*
T0
~

Variable_4
VariableV2*
_output_shapes

:
*
	container *
shape
:
*
dtype0*
shared_name 
�
Variable_4/AssignAssign
Variable_4random_normal_2*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*
_class
loc:@Variable_4
o
Variable_4/readIdentity
Variable_4*
T0*
_output_shapes

:
*
_class
loc:@Variable_4
\
zeros_2Const*
valueB
*    *
dtype0*
_output_shapes

:

L
add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *���=
G
add_2Addzeros_2add_2/y*
_output_shapes

:
*
T0
~

Variable_5
VariableV2*
_output_shapes

:
*
	container *
dtype0*
shared_name *
shape
:

�
Variable_5/AssignAssign
Variable_5add_2*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes

:

o
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5*
_output_shapes

:

�
MatMul_2MatMulPlaceholder_2Variable_4/read*
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
Y
Add_2AddMatMul_2Variable_5/read*'
_output_shapes
:���������
*
T0
G
Relu_1ReluAdd_2*
T0*'
_output_shapes
:���������

f
random_normal_3/shapeConst*
valueB"
      *
dtype0*
_output_shapes
:
Y
random_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
[
random_normal_3/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
$random_normal_3/RandomStandardNormalRandomStandardNormalrandom_normal_3/shape*
_output_shapes

:
*
seed2 *
dtype0*
T0*

seed 
�
random_normal_3/mulMul$random_normal_3/RandomStandardNormalrandom_normal_3/stddev*
_output_shapes

:
*
T0
j
random_normal_3Addrandom_normal_3/mulrandom_normal_3/mean*
_output_shapes

:
*
T0
~

Variable_6
VariableV2*
shared_name *
dtype0*
shape
:
*
_output_shapes

:
*
	container 
�
Variable_6/AssignAssign
Variable_6random_normal_3*
_class
loc:@Variable_6*
_output_shapes

:
*
T0*
validate_shape(*
use_locking(
o
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6*
_output_shapes

:

\
zeros_3Const*
dtype0*
_output_shapes

:*
valueB*    
L
add_3/yConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
G
add_3Addzeros_3add_3/y*
_output_shapes

:*
T0
~

Variable_7
VariableV2*
shared_name *
dtype0*
shape
:*
_output_shapes

:*
	container 
�
Variable_7/AssignAssign
Variable_7add_3*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes

:
o
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7*
_output_shapes

:
�
MatMul_3MatMulRelu_1Variable_6/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
Y
Add_3AddMatMul_3Variable_7/read*
T0*'
_output_shapes
:���������
T
sub_1SubPlaceholder_3Add_3*'
_output_shapes
:���������*
T0
K
Square_1Squaresub_1*'
_output_shapes
:���������*
T0
a
Sum_1/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
z
Sum_1SumSquare_1Sum_1/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_1MeanSum_1Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
T
gradients_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
V
gradients_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
_
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
T0*
_output_shapes
: 
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
b
gradients_1/Mean_1_grad/ShapeShapeSum_1*
out_type0*
_output_shapes
:*
T0
�
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
d
gradients_1/Mean_1_grad/Shape_1ShapeSum_1*
out_type0*
_output_shapes
:*
T0
b
gradients_1/Mean_1_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
g
gradients_1/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
i
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
c
!gradients_1/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0
�
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
_output_shapes
: *
T0
v
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:���������
d
gradients_1/Sum_1_grad/ShapeShapeSquare_1*
T0*
_output_shapes
:*
out_type0
]
gradients_1/Sum_1_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
|
gradients_1/Sum_1_grad/addAddSum_1/reduction_indicesgradients_1/Sum_1_grad/Size*
_output_shapes
:*
T0
�
gradients_1/Sum_1_grad/modFloorModgradients_1/Sum_1_grad/addgradients_1/Sum_1_grad/Size*
T0*
_output_shapes
:
h
gradients_1/Sum_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
d
"gradients_1/Sum_1_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
d
"gradients_1/Sum_1_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
gradients_1/Sum_1_grad/rangeRange"gradients_1/Sum_1_grad/range/startgradients_1/Sum_1_grad/Size"gradients_1/Sum_1_grad/range/delta*

Tidx0*
_output_shapes
:
c
!gradients_1/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_1/Sum_1_grad/FillFillgradients_1/Sum_1_grad/Shape_1!gradients_1/Sum_1_grad/Fill/value*
_output_shapes
:*
T0
�
$gradients_1/Sum_1_grad/DynamicStitchDynamicStitchgradients_1/Sum_1_grad/rangegradients_1/Sum_1_grad/modgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Fill*#
_output_shapes
:���������*
N*
T0
b
 gradients_1/Sum_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients_1/Sum_1_grad/MaximumMaximum$gradients_1/Sum_1_grad/DynamicStitch gradients_1/Sum_1_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
gradients_1/Sum_1_grad/floordivFloorDivgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Maximum*
T0*
_output_shapes
:
�
gradients_1/Sum_1_grad/ReshapeReshapegradients_1/Mean_1_grad/truediv$gradients_1/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
gradients_1/Sum_1_grad/TileTilegradients_1/Sum_1_grad/Reshapegradients_1/Sum_1_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
�
gradients_1/Square_1_grad/mul/xConst^gradients_1/Sum_1_grad/Tile*
dtype0*
_output_shapes
: *
valueB
 *   @
~
gradients_1/Square_1_grad/mulMulgradients_1/Square_1_grad/mul/xsub_1*
T0*'
_output_shapes
:���������
�
gradients_1/Square_1_grad/mul_1Mulgradients_1/Sum_1_grad/Tilegradients_1/Square_1_grad/mul*
T0*'
_output_shapes
:���������
i
gradients_1/sub_1_grad/ShapeShapePlaceholder_3*
out_type0*
_output_shapes
:*
T0
c
gradients_1/sub_1_grad/Shape_1ShapeAdd_3*
_output_shapes
:*
out_type0*
T0
�
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/sub_1_grad/SumSumgradients_1/Square_1_grad/mul_1,gradients_1/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients_1/sub_1_grad/Sum_1Sumgradients_1/Square_1_grad/mul_1.gradients_1/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
b
gradients_1/sub_1_grad/NegNeggradients_1/sub_1_grad/Sum_1*
T0*
_output_shapes
:
�
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Neggradients_1/sub_1_grad/Shape_1*'
_output_shapes
:���������*
Tshape0*
T0
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
�
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*'
_output_shapes
:���������*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape*
T0
�
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1*'
_output_shapes
:���������
d
gradients_1/Add_3_grad/ShapeShapeMatMul_3*
T0*
out_type0*
_output_shapes
:
o
gradients_1/Add_3_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      
�
,gradients_1/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Add_3_grad/Shapegradients_1/Add_3_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/Add_3_grad/SumSum1gradients_1/sub_1_grad/tuple/control_dependency_1,gradients_1/Add_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/Add_3_grad/ReshapeReshapegradients_1/Add_3_grad/Sumgradients_1/Add_3_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
gradients_1/Add_3_grad/Sum_1Sum1gradients_1/sub_1_grad/tuple/control_dependency_1.gradients_1/Add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
 gradients_1/Add_3_grad/Reshape_1Reshapegradients_1/Add_3_grad/Sum_1gradients_1/Add_3_grad/Shape_1*
_output_shapes

:*
Tshape0*
T0
s
'gradients_1/Add_3_grad/tuple/group_depsNoOp^gradients_1/Add_3_grad/Reshape!^gradients_1/Add_3_grad/Reshape_1
�
/gradients_1/Add_3_grad/tuple/control_dependencyIdentitygradients_1/Add_3_grad/Reshape(^gradients_1/Add_3_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*1
_class'
%#loc:@gradients_1/Add_3_grad/Reshape
�
1gradients_1/Add_3_grad/tuple/control_dependency_1Identity gradients_1/Add_3_grad/Reshape_1(^gradients_1/Add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients_1/Add_3_grad/Reshape_1
�
 gradients_1/MatMul_3_grad/MatMulMatMul/gradients_1/Add_3_grad/tuple/control_dependencyVariable_6/read*
transpose_b(*'
_output_shapes
:���������
*
transpose_a( *
T0
�
"gradients_1/MatMul_3_grad/MatMul_1MatMulRelu_1/gradients_1/Add_3_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
z
*gradients_1/MatMul_3_grad/tuple/group_depsNoOp!^gradients_1/MatMul_3_grad/MatMul#^gradients_1/MatMul_3_grad/MatMul_1
�
2gradients_1/MatMul_3_grad/tuple/control_dependencyIdentity gradients_1/MatMul_3_grad/MatMul+^gradients_1/MatMul_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/MatMul_3_grad/MatMul*'
_output_shapes
:���������

�
4gradients_1/MatMul_3_grad/tuple/control_dependency_1Identity"gradients_1/MatMul_3_grad/MatMul_1+^gradients_1/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:
*5
_class+
)'loc:@gradients_1/MatMul_3_grad/MatMul_1
�
 gradients_1/Relu_1_grad/ReluGradReluGrad2gradients_1/MatMul_3_grad/tuple/control_dependencyRelu_1*
T0*'
_output_shapes
:���������

d
gradients_1/Add_2_grad/ShapeShapeMatMul_2*
T0*
out_type0*
_output_shapes
:
o
gradients_1/Add_2_grad/Shape_1Const*
valueB"   
   *
dtype0*
_output_shapes
:
�
,gradients_1/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Add_2_grad/Shapegradients_1/Add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/Add_2_grad/SumSum gradients_1/Relu_1_grad/ReluGrad,gradients_1/Add_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/Add_2_grad/ReshapeReshapegradients_1/Add_2_grad/Sumgradients_1/Add_2_grad/Shape*
T0*'
_output_shapes
:���������
*
Tshape0
�
gradients_1/Add_2_grad/Sum_1Sum gradients_1/Relu_1_grad/ReluGrad.gradients_1/Add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
 gradients_1/Add_2_grad/Reshape_1Reshapegradients_1/Add_2_grad/Sum_1gradients_1/Add_2_grad/Shape_1*
Tshape0*
_output_shapes

:
*
T0
s
'gradients_1/Add_2_grad/tuple/group_depsNoOp^gradients_1/Add_2_grad/Reshape!^gradients_1/Add_2_grad/Reshape_1
�
/gradients_1/Add_2_grad/tuple/control_dependencyIdentitygradients_1/Add_2_grad/Reshape(^gradients_1/Add_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/Add_2_grad/Reshape*'
_output_shapes
:���������
*
T0
�
1gradients_1/Add_2_grad/tuple/control_dependency_1Identity gradients_1/Add_2_grad/Reshape_1(^gradients_1/Add_2_grad/tuple/group_deps*
_output_shapes

:
*3
_class)
'%loc:@gradients_1/Add_2_grad/Reshape_1*
T0
�
 gradients_1/MatMul_2_grad/MatMulMatMul/gradients_1/Add_2_grad/tuple/control_dependencyVariable_4/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
"gradients_1/MatMul_2_grad/MatMul_1MatMulPlaceholder_2/gradients_1/Add_2_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:
*
transpose_a(*
T0
z
*gradients_1/MatMul_2_grad/tuple/group_depsNoOp!^gradients_1/MatMul_2_grad/MatMul#^gradients_1/MatMul_2_grad/MatMul_1
�
2gradients_1/MatMul_2_grad/tuple/control_dependencyIdentity gradients_1/MatMul_2_grad/MatMul+^gradients_1/MatMul_2_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*3
_class)
'%loc:@gradients_1/MatMul_2_grad/MatMul
�
4gradients_1/MatMul_2_grad/tuple/control_dependency_1Identity"gradients_1/MatMul_2_grad/MatMul_1+^gradients_1/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:
*5
_class+
)'loc:@gradients_1/MatMul_2_grad/MatMul_1
d
GradientDescent_1/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *���=
�
8GradientDescent_1/update_Variable_4/ApplyGradientDescentApplyGradientDescent
Variable_4GradientDescent_1/learning_rate4gradients_1/MatMul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes

:
*
_class
loc:@Variable_4
�
8GradientDescent_1/update_Variable_5/ApplyGradientDescentApplyGradientDescent
Variable_5GradientDescent_1/learning_rate1gradients_1/Add_2_grad/tuple/control_dependency_1*
_class
loc:@Variable_5*
_output_shapes

:
*
T0*
use_locking( 
�
8GradientDescent_1/update_Variable_6/ApplyGradientDescentApplyGradientDescent
Variable_6GradientDescent_1/learning_rate4gradients_1/MatMul_3_grad/tuple/control_dependency_1*
_output_shapes

:
*
_class
loc:@Variable_6*
T0*
use_locking( 
�
8GradientDescent_1/update_Variable_7/ApplyGradientDescentApplyGradientDescent
Variable_7GradientDescent_1/learning_rate1gradients_1/Add_3_grad/tuple/control_dependency_1*
_output_shapes

:*
_class
loc:@Variable_7*
T0*
use_locking( 
�
GradientDescent_1NoOp9^GradientDescent_1/update_Variable_4/ApplyGradientDescent9^GradientDescent_1/update_Variable_5/ApplyGradientDescent9^GradientDescent_1/update_Variable_6/ApplyGradientDescent9^GradientDescent_1/update_Variable_7/ApplyGradientDescent
_
Placeholder_4Placeholder*
shape: *
dtype0*'
_output_shapes
:���������
_
Placeholder_5Placeholder*'
_output_shapes
:���������*
shape: *
dtype0
f
random_normal_4/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
Y
random_normal_4/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
[
random_normal_4/stddevConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
$random_normal_4/RandomStandardNormalRandomStandardNormalrandom_normal_4/shape*
_output_shapes

:
*
seed2 *
dtype0*
T0*

seed 
�
random_normal_4/mulMul$random_normal_4/RandomStandardNormalrandom_normal_4/stddev*
_output_shapes

:
*
T0
j
random_normal_4Addrandom_normal_4/mulrandom_normal_4/mean*
T0*
_output_shapes

:

~

Variable_8
VariableV2*
shared_name *
dtype0*
shape
:
*
_output_shapes

:
*
	container 
�
Variable_8/AssignAssign
Variable_8random_normal_4*
_class
loc:@Variable_8*
_output_shapes

:
*
T0*
validate_shape(*
use_locking(
o
Variable_8/readIdentity
Variable_8*
T0*
_class
loc:@Variable_8*
_output_shapes

:

\
zeros_4Const*
valueB
*    *
_output_shapes

:
*
dtype0
L
add_4/yConst*
valueB
 *���=*
_output_shapes
: *
dtype0
G
add_4Addzeros_4add_4/y*
_output_shapes

:
*
T0
~

Variable_9
VariableV2*
_output_shapes

:
*
	container *
shape
:
*
dtype0*
shared_name 
�
Variable_9/AssignAssign
Variable_9add_4*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*
_class
loc:@Variable_9
o
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9*
_output_shapes

:

�
MatMul_4MatMulPlaceholder_4Variable_8/read*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( *
T0
Y
Add_4AddMatMul_4Variable_9/read*
T0*'
_output_shapes
:���������

G
Relu_2ReluAdd_4*'
_output_shapes
:���������
*
T0
f
random_normal_5/shapeConst*
valueB"
      *
dtype0*
_output_shapes
:
Y
random_normal_5/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
[
random_normal_5/stddevConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
$random_normal_5/RandomStandardNormalRandomStandardNormalrandom_normal_5/shape*

seed *
T0*
dtype0*
_output_shapes

:
*
seed2 
�
random_normal_5/mulMul$random_normal_5/RandomStandardNormalrandom_normal_5/stddev*
_output_shapes

:
*
T0
j
random_normal_5Addrandom_normal_5/mulrandom_normal_5/mean*
_output_shapes

:
*
T0

Variable_10
VariableV2*
shared_name *
dtype0*
shape
:
*
_output_shapes

:
*
	container 
�
Variable_10/AssignAssignVariable_10random_normal_5*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*
_class
loc:@Variable_10
r
Variable_10/readIdentityVariable_10*
T0*
_class
loc:@Variable_10*
_output_shapes

:

\
zeros_5Const*
dtype0*
_output_shapes

:*
valueB*    
L
add_5/yConst*
dtype0*
_output_shapes
: *
valueB
 *���=
G
add_5Addzeros_5add_5/y*
_output_shapes

:*
T0

Variable_11
VariableV2*
_output_shapes

:*
	container *
dtype0*
shared_name *
shape
:
�
Variable_11/AssignAssignVariable_11add_5*
_class
loc:@Variable_11*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
r
Variable_11/readIdentityVariable_11*
T0*
_output_shapes

:*
_class
loc:@Variable_11
�
MatMul_5MatMulRelu_2Variable_10/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
Z
Add_5AddMatMul_5Variable_11/read*
T0*'
_output_shapes
:���������
T
sub_2SubPlaceholder_5Add_5*
T0*'
_output_shapes
:���������
K
Square_2Squaresub_2*'
_output_shapes
:���������*
T0
a
Sum_2/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
z
Sum_2SumSquare_2Sum_2/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2MeanSum_2Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
T
gradients_2/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
V
gradients_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
_
gradients_2/FillFillgradients_2/Shapegradients_2/Const*
T0*
_output_shapes
: 
o
%gradients_2/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients_2/Mean_2_grad/ReshapeReshapegradients_2/Fill%gradients_2/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
b
gradients_2/Mean_2_grad/ShapeShapeSum_2*
T0*
_output_shapes
:*
out_type0
�
gradients_2/Mean_2_grad/TileTilegradients_2/Mean_2_grad/Reshapegradients_2/Mean_2_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
d
gradients_2/Mean_2_grad/Shape_1ShapeSum_2*
T0*
_output_shapes
:*
out_type0
b
gradients_2/Mean_2_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
g
gradients_2/Mean_2_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
gradients_2/Mean_2_grad/ProdProdgradients_2/Mean_2_grad/Shape_1gradients_2/Mean_2_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
gradients_2/Mean_2_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
gradients_2/Mean_2_grad/Prod_1Prodgradients_2/Mean_2_grad/Shape_2gradients_2/Mean_2_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!gradients_2/Mean_2_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients_2/Mean_2_grad/MaximumMaximumgradients_2/Mean_2_grad/Prod_1!gradients_2/Mean_2_grad/Maximum/y*
T0*
_output_shapes
: 
�
 gradients_2/Mean_2_grad/floordivFloorDivgradients_2/Mean_2_grad/Prodgradients_2/Mean_2_grad/Maximum*
T0*
_output_shapes
: 
v
gradients_2/Mean_2_grad/CastCast gradients_2/Mean_2_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
gradients_2/Mean_2_grad/truedivRealDivgradients_2/Mean_2_grad/Tilegradients_2/Mean_2_grad/Cast*#
_output_shapes
:���������*
T0
d
gradients_2/Sum_2_grad/ShapeShapeSquare_2*
T0*
out_type0*
_output_shapes
:
]
gradients_2/Sum_2_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
|
gradients_2/Sum_2_grad/addAddSum_2/reduction_indicesgradients_2/Sum_2_grad/Size*
_output_shapes
:*
T0
�
gradients_2/Sum_2_grad/modFloorModgradients_2/Sum_2_grad/addgradients_2/Sum_2_grad/Size*
_output_shapes
:*
T0
h
gradients_2/Sum_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
d
"gradients_2/Sum_2_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
d
"gradients_2/Sum_2_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients_2/Sum_2_grad/rangeRange"gradients_2/Sum_2_grad/range/startgradients_2/Sum_2_grad/Size"gradients_2/Sum_2_grad/range/delta*
_output_shapes
:*

Tidx0
c
!gradients_2/Sum_2_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_2/Sum_2_grad/FillFillgradients_2/Sum_2_grad/Shape_1!gradients_2/Sum_2_grad/Fill/value*
T0*
_output_shapes
:
�
$gradients_2/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/Sum_2_grad/rangegradients_2/Sum_2_grad/modgradients_2/Sum_2_grad/Shapegradients_2/Sum_2_grad/Fill*#
_output_shapes
:���������*
T0*
N
b
 gradients_2/Sum_2_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients_2/Sum_2_grad/MaximumMaximum$gradients_2/Sum_2_grad/DynamicStitch gradients_2/Sum_2_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
gradients_2/Sum_2_grad/floordivFloorDivgradients_2/Sum_2_grad/Shapegradients_2/Sum_2_grad/Maximum*
_output_shapes
:*
T0
�
gradients_2/Sum_2_grad/ReshapeReshapegradients_2/Mean_2_grad/truediv$gradients_2/Sum_2_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
gradients_2/Sum_2_grad/TileTilegradients_2/Sum_2_grad/Reshapegradients_2/Sum_2_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
�
gradients_2/Square_2_grad/mul/xConst^gradients_2/Sum_2_grad/Tile*
valueB
 *   @*
dtype0*
_output_shapes
: 
~
gradients_2/Square_2_grad/mulMulgradients_2/Square_2_grad/mul/xsub_2*'
_output_shapes
:���������*
T0
�
gradients_2/Square_2_grad/mul_1Mulgradients_2/Sum_2_grad/Tilegradients_2/Square_2_grad/mul*'
_output_shapes
:���������*
T0
i
gradients_2/sub_2_grad/ShapeShapePlaceholder_5*
out_type0*
_output_shapes
:*
T0
c
gradients_2/sub_2_grad/Shape_1ShapeAdd_5*
out_type0*
_output_shapes
:*
T0
�
,gradients_2/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/sub_2_grad/Shapegradients_2/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_2/sub_2_grad/SumSumgradients_2/Square_2_grad/mul_1,gradients_2/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_2/sub_2_grad/ReshapeReshapegradients_2/sub_2_grad/Sumgradients_2/sub_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients_2/sub_2_grad/Sum_1Sumgradients_2/Square_2_grad/mul_1.gradients_2/sub_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
b
gradients_2/sub_2_grad/NegNeggradients_2/sub_2_grad/Sum_1*
T0*
_output_shapes
:
�
 gradients_2/sub_2_grad/Reshape_1Reshapegradients_2/sub_2_grad/Neggradients_2/sub_2_grad/Shape_1*
T0*'
_output_shapes
:���������*
Tshape0
s
'gradients_2/sub_2_grad/tuple/group_depsNoOp^gradients_2/sub_2_grad/Reshape!^gradients_2/sub_2_grad/Reshape_1
�
/gradients_2/sub_2_grad/tuple/control_dependencyIdentitygradients_2/sub_2_grad/Reshape(^gradients_2/sub_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_2/sub_2_grad/Reshape*'
_output_shapes
:���������
�
1gradients_2/sub_2_grad/tuple/control_dependency_1Identity gradients_2/sub_2_grad/Reshape_1(^gradients_2/sub_2_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*3
_class)
'%loc:@gradients_2/sub_2_grad/Reshape_1
d
gradients_2/Add_5_grad/ShapeShapeMatMul_5*
T0*
out_type0*
_output_shapes
:
o
gradients_2/Add_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
,gradients_2/Add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/Add_5_grad/Shapegradients_2/Add_5_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_2/Add_5_grad/SumSum1gradients_2/sub_2_grad/tuple/control_dependency_1,gradients_2/Add_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_2/Add_5_grad/ReshapeReshapegradients_2/Add_5_grad/Sumgradients_2/Add_5_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
�
gradients_2/Add_5_grad/Sum_1Sum1gradients_2/sub_2_grad/tuple/control_dependency_1.gradients_2/Add_5_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
 gradients_2/Add_5_grad/Reshape_1Reshapegradients_2/Add_5_grad/Sum_1gradients_2/Add_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
s
'gradients_2/Add_5_grad/tuple/group_depsNoOp^gradients_2/Add_5_grad/Reshape!^gradients_2/Add_5_grad/Reshape_1
�
/gradients_2/Add_5_grad/tuple/control_dependencyIdentitygradients_2/Add_5_grad/Reshape(^gradients_2/Add_5_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*1
_class'
%#loc:@gradients_2/Add_5_grad/Reshape
�
1gradients_2/Add_5_grad/tuple/control_dependency_1Identity gradients_2/Add_5_grad/Reshape_1(^gradients_2/Add_5_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_2/Add_5_grad/Reshape_1*
_output_shapes

:
�
 gradients_2/MatMul_5_grad/MatMulMatMul/gradients_2/Add_5_grad/tuple/control_dependencyVariable_10/read*
transpose_b(*'
_output_shapes
:���������
*
transpose_a( *
T0
�
"gradients_2/MatMul_5_grad/MatMul_1MatMulRelu_2/gradients_2/Add_5_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:
*
transpose_a(*
T0
z
*gradients_2/MatMul_5_grad/tuple/group_depsNoOp!^gradients_2/MatMul_5_grad/MatMul#^gradients_2/MatMul_5_grad/MatMul_1
�
2gradients_2/MatMul_5_grad/tuple/control_dependencyIdentity gradients_2/MatMul_5_grad/MatMul+^gradients_2/MatMul_5_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*3
_class)
'%loc:@gradients_2/MatMul_5_grad/MatMul
�
4gradients_2/MatMul_5_grad/tuple/control_dependency_1Identity"gradients_2/MatMul_5_grad/MatMul_1+^gradients_2/MatMul_5_grad/tuple/group_deps*
_output_shapes

:
*5
_class+
)'loc:@gradients_2/MatMul_5_grad/MatMul_1*
T0
�
 gradients_2/Relu_2_grad/ReluGradReluGrad2gradients_2/MatMul_5_grad/tuple/control_dependencyRelu_2*'
_output_shapes
:���������
*
T0
d
gradients_2/Add_4_grad/ShapeShapeMatMul_4*
T0*
_output_shapes
:*
out_type0
o
gradients_2/Add_4_grad/Shape_1Const*
valueB"   
   *
dtype0*
_output_shapes
:
�
,gradients_2/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/Add_4_grad/Shapegradients_2/Add_4_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_2/Add_4_grad/SumSum gradients_2/Relu_2_grad/ReluGrad,gradients_2/Add_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_2/Add_4_grad/ReshapeReshapegradients_2/Add_4_grad/Sumgradients_2/Add_4_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
gradients_2/Add_4_grad/Sum_1Sum gradients_2/Relu_2_grad/ReluGrad.gradients_2/Add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
 gradients_2/Add_4_grad/Reshape_1Reshapegradients_2/Add_4_grad/Sum_1gradients_2/Add_4_grad/Shape_1*
Tshape0*
_output_shapes

:
*
T0
s
'gradients_2/Add_4_grad/tuple/group_depsNoOp^gradients_2/Add_4_grad/Reshape!^gradients_2/Add_4_grad/Reshape_1
�
/gradients_2/Add_4_grad/tuple/control_dependencyIdentitygradients_2/Add_4_grad/Reshape(^gradients_2/Add_4_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*1
_class'
%#loc:@gradients_2/Add_4_grad/Reshape
�
1gradients_2/Add_4_grad/tuple/control_dependency_1Identity gradients_2/Add_4_grad/Reshape_1(^gradients_2/Add_4_grad/tuple/group_deps*3
_class)
'%loc:@gradients_2/Add_4_grad/Reshape_1*
_output_shapes

:
*
T0
�
 gradients_2/MatMul_4_grad/MatMulMatMul/gradients_2/Add_4_grad/tuple/control_dependencyVariable_8/read*
transpose_b(*'
_output_shapes
:���������*
transpose_a( *
T0
�
"gradients_2/MatMul_4_grad/MatMul_1MatMulPlaceholder_4/gradients_2/Add_4_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
z
*gradients_2/MatMul_4_grad/tuple/group_depsNoOp!^gradients_2/MatMul_4_grad/MatMul#^gradients_2/MatMul_4_grad/MatMul_1
�
2gradients_2/MatMul_4_grad/tuple/control_dependencyIdentity gradients_2/MatMul_4_grad/MatMul+^gradients_2/MatMul_4_grad/tuple/group_deps*3
_class)
'%loc:@gradients_2/MatMul_4_grad/MatMul*'
_output_shapes
:���������*
T0
�
4gradients_2/MatMul_4_grad/tuple/control_dependency_1Identity"gradients_2/MatMul_4_grad/MatMul_1+^gradients_2/MatMul_4_grad/tuple/group_deps*
_output_shapes

:
*5
_class+
)'loc:@gradients_2/MatMul_4_grad/MatMul_1*
T0
d
GradientDescent_2/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
8GradientDescent_2/update_Variable_8/ApplyGradientDescentApplyGradientDescent
Variable_8GradientDescent_2/learning_rate4gradients_2/MatMul_4_grad/tuple/control_dependency_1*
_class
loc:@Variable_8*
_output_shapes

:
*
T0*
use_locking( 
�
8GradientDescent_2/update_Variable_9/ApplyGradientDescentApplyGradientDescent
Variable_9GradientDescent_2/learning_rate1gradients_2/Add_4_grad/tuple/control_dependency_1*
_output_shapes

:
*
_class
loc:@Variable_9*
T0*
use_locking( 
�
9GradientDescent_2/update_Variable_10/ApplyGradientDescentApplyGradientDescentVariable_10GradientDescent_2/learning_rate4gradients_2/MatMul_5_grad/tuple/control_dependency_1*
_output_shapes

:
*
_class
loc:@Variable_10*
T0*
use_locking( 
�
9GradientDescent_2/update_Variable_11/ApplyGradientDescentApplyGradientDescentVariable_11GradientDescent_2/learning_rate1gradients_2/Add_5_grad/tuple/control_dependency_1*
_class
loc:@Variable_11*
_output_shapes

:*
T0*
use_locking( 
�
GradientDescent_2NoOp9^GradientDescent_2/update_Variable_8/ApplyGradientDescent9^GradientDescent_2/update_Variable_9/ApplyGradientDescent:^GradientDescent_2/update_Variable_10/ApplyGradientDescent:^GradientDescent_2/update_Variable_11/ApplyGradientDescent""�
trainable_variables��
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0"E
train_op9
7
GradientDescent
GradientDescent_1
GradientDescent_2"�
	variables��
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0�@��