??
?.?.
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%??8"
data_formatstringNHWC"
is_trainingbool(
?
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%??8"
data_formatstringNHWC"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	?
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
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
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02v1.10.0-0-g656e7a2b34??
y
imagesPlaceholder*
dtype0*$
shape:?????????  */
_output_shapes
:?????????  
b
targetsPlaceholder*
dtype0*
shape:?????????*#
_output_shapes
:?????????
R
dropout_probsPlaceholder*
dtype0*
shape:*
_output_shapes
:
?
*batch_normalization/gamma/Initializer/onesConst*
valueB*  ??*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
:
?
batch_normalization/gamma
VariableV2*
shape:*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
	container *
_output_shapes
:
?
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
:
?
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
*batch_normalization/beta/Initializer/zerosConst*
valueB*    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
:
?
batch_normalization/beta
VariableV2*
dtype0*
	container *
shape:*
shared_name *+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
:
?
batch_normalization/beta/readIdentitybatch_normalization/beta*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
1batch_normalization/moving_mean/Initializer/zerosConst*
valueB*    *2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
:
?
batch_normalization/moving_mean
VariableV2*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
	container *
shape:*
shared_name *
_output_shapes
:
?
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:
?
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
?
4batch_normalization/moving_variance/Initializer/onesConst*
valueB*  ??*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
:
?
#batch_normalization/moving_variance
VariableV2*
dtype0*
	container *
shape:*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
?
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
validate_shape(*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
?
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
?
"batch_normalization/FusedBatchNormFusedBatchNormimagesbatch_normalization/gamma/readbatch_normalization/beta/read$batch_normalization/moving_mean/read(batch_normalization/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:?????????  ::::
^
batch_normalization/ConstConst*
dtype0*
valueB
 *?p}?*
_output_shapes
: 
?
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"         @   * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
?
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *8J̽* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
?
,conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *8J?=* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
dtype0*
seed2 *

seed *&
_output_shapes
:@
?
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/kernel
VariableV2*
dtype0*
	container *
shape:@*
shared_name * 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:@
?
conv2d/bias
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
dtype0*
	container *
shape:@*
_output_shapes
:@
?
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:@
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:@
e
conv2d/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
?
conv2d/Conv2DConv2D"batch_normalization/FusedBatchNormconv2d/kernel/read*
paddingSAME*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*/
_output_shapes
:?????????  @
?
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:?????????  @
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:?????????  @
?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:?????????@
?
,batch_normalization_1/gamma/Initializer/onesConst*
valueB@*  ??*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
?
batch_normalization_1/gamma
VariableV2*
shape:@*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
	container *
_output_shapes
:@
?
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
use_locking(*
_output_shapes
:@
?
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:@
?
,batch_normalization_1/beta/Initializer/zerosConst*
dtype0*
valueB@*    *-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:@
?
batch_normalization_1/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
	container *
shape:@*
_output_shapes
:@
?
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@
?
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:@
?
3batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB@*    *4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@
?
!batch_normalization_1/moving_mean
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
	container *
shape:@*
_output_shapes
:@
?
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:@
?
6batch_normalization_1/moving_variance/Initializer/onesConst*
valueB@*  ??*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@
?
%batch_normalization_1/moving_variance
VariableV2*
shape:@*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
	container *
_output_shapes
:@
?
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:@
?
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:@
?
$batch_normalization_1/FusedBatchNormFusedBatchNormmax_pooling2d/MaxPool batch_normalization_1/gamma/readbatch_normalization_1/beta/read&batch_normalization_1/moving_mean/read*batch_normalization_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:?????????@:@:@:@:@
`
batch_normalization_1/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   ?   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
?
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *?[q?*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *?[q=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*
dtype0*
seed2 *

seed *'
_output_shapes
:@?
?
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
conv2d_1/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_1/kernel*
dtype0*
	container *
shape:@?*'
_output_shapes
:@?
?
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*'
_output_shapes
:@?
?
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
conv2d_1/bias/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes	
:?
?
conv2d_1/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_1/bias*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes	
:?
u
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes	
:?
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
conv2d_1/Conv2DConv2D$batch_normalization_1/FusedBatchNormconv2d_1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:??????????
?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:??????????
b
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*0
_output_shapes
:??????????
?
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:??????????
?
,batch_normalization_2/gamma/Initializer/onesConst*
dtype0*
valueB?*  ??*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
batch_normalization_2/gamma
VariableV2*
dtype0*
	container *
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes	
:?
?
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
,batch_normalization_2/beta/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_2/beta
VariableV2*
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
	container *
_output_shapes	
:?
?
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes	
:?
?
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes	
:?
?
3batch_normalization_2/moving_mean/Initializer/zerosConst*
dtype0*
valueB?*    *4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes	
:?
?
!batch_normalization_2/moving_mean
VariableV2*
dtype0*
	container *
shape:?*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes	
:?
?
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes	
:?
?
6batch_normalization_2/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_2/moving_variance
VariableV2*
dtype0*
	container *
shape:?*
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes	
:?
?
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes	
:?
?
$batch_normalization_2/FusedBatchNormFusedBatchNormmax_pooling2d_1/MaxPool batch_normalization_2/gamma/readbatch_normalization_2/beta/read&batch_normalization_2/moving_mean/read*batch_normalization_2/moving_variance/read*
data_formatNHWC*
is_training( *
epsilon%o?:*
T0*L
_output_shapes:
8:??????????:?:?:?:?
`
batch_normalization_2/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?      *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
?
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *??̼*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *???<*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
dtype0*
seed2 *

seed *(
_output_shapes
:??
?
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
conv2d_2/kernel
VariableV2*"
_class
loc:@conv2d_2/kernel*
dtype0*
	container *
shape:??*
shared_name *(
_output_shapes
:??
?
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*(
_output_shapes
:??
?
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
conv2d_2/bias/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes	
:?
?
conv2d_2/bias
VariableV2*
shape:?*
shared_name * 
_class
loc:@conv2d_2/bias*
dtype0*
	container *
_output_shapes	
:?
?
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes	
:?
u
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:?
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
conv2d_2/Conv2DConv2D$batch_normalization_2/FusedBatchNormconv2d_2/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:??????????
?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:??????????
b
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*0
_output_shapes
:??????????
?
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:??????????
?
,batch_normalization_3/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_3/gamma
VariableV2*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:?
?
,batch_normalization_3/beta/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_3/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:?
?
3batch_normalization_3/moving_mean/Initializer/zerosConst*
valueB?*    *4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:?
?
!batch_normalization_3/moving_mean
VariableV2*
dtype0*
	container *
shape:?*
shared_name *4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:?
?
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:?
?
6batch_normalization_3/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_3/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes	
:?
?
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes	
:?
?
$batch_normalization_3/FusedBatchNormFusedBatchNormmax_pooling2d_2/MaxPool batch_normalization_3/gamma/readbatch_normalization_3/beta/read&batch_normalization_3/moving_mean/read*batch_normalization_3/moving_variance/read*
data_formatNHWC*
is_training( *
epsilon%o?:*
T0*L
_output_shapes:
8:??????????:?:?:?:?
`
batch_normalization_3/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
?
.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *?А?*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
?
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *?А<*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
?
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
conv2d_3/kernel
VariableV2*
shape:??*
shared_name *"
_class
loc:@conv2d_3/kernel*
dtype0*
	container *(
_output_shapes
:??
?
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*(
_output_shapes
:??
?
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
conv2d_3/bias/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes	
:?
?
conv2d_3/bias
VariableV2*
dtype0*
	container *
shape:?*
shared_name * 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
?
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:?
u
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
conv2d_3/Conv2DConv2D$batch_normalization_3/FusedBatchNormconv2d_3/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*0
_output_shapes
:??????????
?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:??????????
b
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*0
_output_shapes
:??????????
?
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:??????????
?
,batch_normalization_4/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_4/gamma
VariableV2*
dtype0*
	container *
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes	
:?
?
"batch_normalization_4/gamma/AssignAssignbatch_normalization_4/gamma,batch_normalization_4/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?
?
 batch_normalization_4/gamma/readIdentitybatch_normalization_4/gamma*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes	
:?
?
,batch_normalization_4/beta/Initializer/zerosConst*
dtype0*
valueB?*    *-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
batch_normalization_4/beta
VariableV2*
dtype0*
	container *
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
!batch_normalization_4/beta/AssignAssignbatch_normalization_4/beta,batch_normalization_4/beta/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
batch_normalization_4/beta/readIdentitybatch_normalization_4/beta*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
3batch_normalization_4/moving_mean/Initializer/zerosConst*
valueB?*    *4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes	
:?
?
!batch_normalization_4/moving_mean
VariableV2*
dtype0*
	container *
shape:?*
shared_name *4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes	
:?
?
(batch_normalization_4/moving_mean/AssignAssign!batch_normalization_4/moving_mean3batch_normalization_4/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:?
?
&batch_normalization_4/moving_mean/readIdentity!batch_normalization_4/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes	
:?
?
6batch_normalization_4/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_4/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
,batch_normalization_4/moving_variance/AssignAssign%batch_normalization_4/moving_variance6batch_normalization_4/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:?
?
*batch_normalization_4/moving_variance/readIdentity%batch_normalization_4/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes	
:?
?
$batch_normalization_4/FusedBatchNormFusedBatchNormmax_pooling2d_3/MaxPool batch_normalization_4/gamma/readbatch_normalization_4/beta/read&batch_normalization_4/moving_mean/read*batch_normalization_4/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:??????????:?:?:?:?
`
batch_normalization_4/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
q
flatten/ShapeShape$batch_normalization_4/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0*
_output_shapes
: 
b
flatten/Reshape/shape/1Const*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
?
flatten/ReshapeReshape$batch_normalization_4/FusedBatchNormflatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   ?   *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
?
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *AW?*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *AW=*
_class
loc:@dense/kernel*
_output_shapes
: 
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@dense/kernel*
dtype0*
seed2 * 
_output_shapes
:
??
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
dense/kernel
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape:
??* 
_output_shapes
:
??
?
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
??
w
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
dense/bias/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:?
?

dense/bias
VariableV2*
dtype0*
	container *
shape:?*
shared_name *
_class
loc:@dense/bias*
_output_shapes	
:?
?
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
?
dense/MatMulMatMulflatten/Reshapedense/kernel/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:??????????
?
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:??????????
[
dropout/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:??????????
?
,batch_normalization_5/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_5/gamma
VariableV2*.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
"batch_normalization_5/gamma/AssignAssignbatch_normalization_5/gamma,batch_normalization_5/gamma/Initializer/ones*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:?
?
 batch_normalization_5/gamma/readIdentitybatch_normalization_5/gamma*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:?
?
,batch_normalization_5/beta/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_5/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
!batch_normalization_5/beta/AssignAssignbatch_normalization_5/beta,batch_normalization_5/beta/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:?
?
batch_normalization_5/beta/readIdentitybatch_normalization_5/beta*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:?
?
3batch_normalization_5/moving_mean/Initializer/zerosConst*
valueB?*    *4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
_output_shapes	
:?
?
!batch_normalization_5/moving_mean
VariableV2*
shape:?*
shared_name *4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
	container *
_output_shapes	
:?
?
(batch_normalization_5/moving_mean/AssignAssign!batch_normalization_5/moving_mean3batch_normalization_5/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:?
?
&batch_normalization_5/moving_mean/readIdentity!batch_normalization_5/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:?
?
6batch_normalization_5/moving_variance/Initializer/onesConst*
dtype0*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:?
?
%batch_normalization_5/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
,batch_normalization_5/moving_variance/AssignAssign%batch_normalization_5/moving_variance6batch_normalization_5/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:?
?
*batch_normalization_5/moving_variance/readIdentity%batch_normalization_5/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:?
j
%batch_normalization_5/batchnorm/add/yConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
#batch_normalization_5/batchnorm/addAdd*batch_normalization_5/moving_variance/read%batch_normalization_5/batchnorm/add/y*
T0*
_output_shapes	
:?
y
%batch_normalization_5/batchnorm/RsqrtRsqrt#batch_normalization_5/batchnorm/add*
T0*
_output_shapes	
:?
?
#batch_normalization_5/batchnorm/mulMul%batch_normalization_5/batchnorm/Rsqrt batch_normalization_5/gamma/read*
T0*
_output_shapes	
:?
?
%batch_normalization_5/batchnorm/mul_1Muldropout/Identity#batch_normalization_5/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
%batch_normalization_5/batchnorm/mul_2Mul&batch_normalization_5/moving_mean/read#batch_normalization_5/batchnorm/mul*
T0*
_output_shapes	
:?
?
#batch_normalization_5/batchnorm/subSubbatch_normalization_5/beta/read%batch_normalization_5/batchnorm/mul_2*
T0*
_output_shapes	
:?
?
%batch_normalization_5/batchnorm/add_1Add%batch_normalization_5/batchnorm/mul_1#batch_normalization_5/batchnorm/sub*
T0*(
_output_shapes
:??????????
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"?      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
?
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *   ?*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2 *

seed * 
_output_shapes
:
??
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:
??*
shared_name * 
_output_shapes
:
??
?
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
??
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
dense_1/bias/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:?
?
dense_1/bias
VariableV2*
_class
loc:@dense_1/bias*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:?
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:?
?
dense_1/MatMulMatMul%batch_normalization_5/batchnorm/add_1dense_1/kernel/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:??????????
?
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:??????????
_
dropout_1/IdentityIdentitydense_1/Relu*
T0*(
_output_shapes
:??????????
?
,batch_normalization_6/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_6/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
"batch_normalization_6/gamma/AssignAssignbatch_normalization_6/gamma,batch_normalization_6/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:?
?
 batch_normalization_6/gamma/readIdentitybatch_normalization_6/gamma*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:?
?
,batch_normalization_6/beta/Initializer/zerosConst*
dtype0*
valueB?*    *-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
batch_normalization_6/beta
VariableV2*-
_class#
!loc:@batch_normalization_6/beta*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
!batch_normalization_6/beta/AssignAssignbatch_normalization_6/beta,batch_normalization_6/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:?
?
batch_normalization_6/beta/readIdentitybatch_normalization_6/beta*
T0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
3batch_normalization_6/moving_mean/Initializer/zerosConst*
valueB?*    *4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0*
_output_shapes	
:?
?
!batch_normalization_6/moving_mean
VariableV2*
dtype0*
	container *
shape:?*
shared_name *4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes	
:?
?
(batch_normalization_6/moving_mean/AssignAssign!batch_normalization_6/moving_mean3batch_normalization_6/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:?
?
&batch_normalization_6/moving_mean/readIdentity!batch_normalization_6/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes	
:?
?
6batch_normalization_6/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_6/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
,batch_normalization_6/moving_variance/AssignAssign%batch_normalization_6/moving_variance6batch_normalization_6/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
*batch_normalization_6/moving_variance/readIdentity%batch_normalization_6/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes	
:?
j
%batch_normalization_6/batchnorm/add/yConst*
dtype0*
valueB
 *o?:*
_output_shapes
: 
?
#batch_normalization_6/batchnorm/addAdd*batch_normalization_6/moving_variance/read%batch_normalization_6/batchnorm/add/y*
T0*
_output_shapes	
:?
y
%batch_normalization_6/batchnorm/RsqrtRsqrt#batch_normalization_6/batchnorm/add*
T0*
_output_shapes	
:?
?
#batch_normalization_6/batchnorm/mulMul%batch_normalization_6/batchnorm/Rsqrt batch_normalization_6/gamma/read*
T0*
_output_shapes	
:?
?
%batch_normalization_6/batchnorm/mul_1Muldropout_1/Identity#batch_normalization_6/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
%batch_normalization_6/batchnorm/mul_2Mul&batch_normalization_6/moving_mean/read#batch_normalization_6/batchnorm/mul*
T0*
_output_shapes	
:?
?
#batch_normalization_6/batchnorm/subSubbatch_normalization_6/beta/read%batch_normalization_6/batchnorm/mul_2*
T0*
_output_shapes	
:?
?
%batch_normalization_6/batchnorm/add_1Add%batch_normalization_6/batchnorm/mul_1#batch_normalization_6/batchnorm/sub*
T0*(
_output_shapes
:??????????
?
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *!
_class
loc:@dense_2/kernel*
_output_shapes
:
?
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *???*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
?
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *??=*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
?
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*
dtype0*
seed2 *

seed * 
_output_shapes
:
??
?
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
?
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
dense_2/kernel
VariableV2*
dtype0*
	container *
shape:
??*
shared_name *!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
??
}
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
dense_2/bias/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:?
?
dense_2/bias
VariableV2*
dtype0*
	container *
shape:?*
shared_name *
_class
loc:@dense_2/bias*
_output_shapes	
:?
?
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
r
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:?
?
dense_2/MatMulMatMul%batch_normalization_6/batchnorm/add_1dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:??????????
?
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
X
dense_2/ReluReludense_2/BiasAdd*
T0*(
_output_shapes
:??????????
_
dropout_2/IdentityIdentitydense_2/Relu*
T0*(
_output_shapes
:??????????
?
,batch_normalization_7/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_7/gamma
VariableV2*
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
	container *
_output_shapes	
:?
?
"batch_normalization_7/gamma/AssignAssignbatch_normalization_7/gamma,batch_normalization_7/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
 batch_normalization_7/gamma/readIdentitybatch_normalization_7/gamma*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes	
:?
?
,batch_normalization_7/beta/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_7/beta
VariableV2*-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
!batch_normalization_7/beta/AssignAssignbatch_normalization_7/beta,batch_normalization_7/beta/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
batch_normalization_7/beta/readIdentitybatch_normalization_7/beta*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
3batch_normalization_7/moving_mean/Initializer/zerosConst*
dtype0*
valueB?*    *4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:?
?
!batch_normalization_7/moving_mean
VariableV2*
shape:?*
shared_name *4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0*
	container *
_output_shapes	
:?
?
(batch_normalization_7/moving_mean/AssignAssign!batch_normalization_7/moving_mean3batch_normalization_7/moving_mean/Initializer/zeros*
validate_shape(*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:?
?
&batch_normalization_7/moving_mean/readIdentity!batch_normalization_7/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:?
?
6batch_normalization_7/moving_variance/Initializer/onesConst*
dtype0*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes	
:?
?
%batch_normalization_7/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
,batch_normalization_7/moving_variance/AssignAssign%batch_normalization_7/moving_variance6batch_normalization_7/moving_variance/Initializer/ones*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes	
:?
?
*batch_normalization_7/moving_variance/readIdentity%batch_normalization_7/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes	
:?
j
%batch_normalization_7/batchnorm/add/yConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
#batch_normalization_7/batchnorm/addAdd*batch_normalization_7/moving_variance/read%batch_normalization_7/batchnorm/add/y*
T0*
_output_shapes	
:?
y
%batch_normalization_7/batchnorm/RsqrtRsqrt#batch_normalization_7/batchnorm/add*
T0*
_output_shapes	
:?
?
#batch_normalization_7/batchnorm/mulMul%batch_normalization_7/batchnorm/Rsqrt batch_normalization_7/gamma/read*
T0*
_output_shapes	
:?
?
%batch_normalization_7/batchnorm/mul_1Muldropout_2/Identity#batch_normalization_7/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
%batch_normalization_7/batchnorm/mul_2Mul&batch_normalization_7/moving_mean/read#batch_normalization_7/batchnorm/mul*
T0*
_output_shapes	
:?
?
#batch_normalization_7/batchnorm/subSubbatch_normalization_7/beta/read%batch_normalization_7/batchnorm/mul_2*
T0*
_output_shapes	
:?
?
%batch_normalization_7/batchnorm/add_1Add%batch_normalization_7/batchnorm/mul_1#batch_normalization_7/batchnorm/sub*
T0*(
_output_shapes
:??????????
?
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:
?
-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *  ??*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
?
-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *  ?=*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
?
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
?
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
dense_3/kernel
VariableV2*
dtype0*
	container *
shape:
??*
shared_name *!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:
??
}
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
.dense_3/bias/Initializer/zeros/shape_as_tensorConst*
valueB:?*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
?
$dense_3/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
: 
?
dense_3/bias/Initializer/zerosFill.dense_3/bias/Initializer/zeros/shape_as_tensor$dense_3/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
dense_3/bias
VariableV2*
_class
loc:@dense_3/bias*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
r
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
dense_3/MatMulMatMul%batch_normalization_7/batchnorm/add_1dense_3/kernel/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:??????????
?
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:??????????
X
dense_3/ReluReludense_3/BiasAdd*
T0*(
_output_shapes
:??????????
_
dropout_3/IdentityIdentitydense_3/Relu*
T0*(
_output_shapes
:??????????
?
<batch_normalization_8/gamma/Initializer/ones/shape_as_tensorConst*
dtype0*
valueB:?*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes
:
?
2batch_normalization_8/gamma/Initializer/ones/ConstConst*
valueB
 *  ??*.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
_output_shapes
: 
?
,batch_normalization_8/gamma/Initializer/onesFill<batch_normalization_8/gamma/Initializer/ones/shape_as_tensor2batch_normalization_8/gamma/Initializer/ones/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
batch_normalization_8/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
"batch_normalization_8/gamma/AssignAssignbatch_normalization_8/gamma,batch_normalization_8/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
 batch_normalization_8/gamma/readIdentitybatch_normalization_8/gamma*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
<batch_normalization_8/beta/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB:?*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes
:
?
2batch_normalization_8/beta/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
_output_shapes
: 
?
,batch_normalization_8/beta/Initializer/zerosFill<batch_normalization_8/beta/Initializer/zeros/shape_as_tensor2batch_normalization_8/beta/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
batch_normalization_8/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
!batch_normalization_8/beta/AssignAssignbatch_normalization_8/beta,batch_normalization_8/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_8/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
batch_normalization_8/beta/readIdentitybatch_normalization_8/beta*
T0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
Cbatch_normalization_8/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:?*4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0*
_output_shapes
:
?
9batch_normalization_8/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0*
_output_shapes
: 
?
3batch_normalization_8/moving_mean/Initializer/zerosFillCbatch_normalization_8/moving_mean/Initializer/zeros/shape_as_tensor9batch_normalization_8/moving_mean/Initializer/zeros/Const*
T0*

index_type0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes	
:?
?
!batch_normalization_8/moving_mean
VariableV2*
shape:?*
shared_name *4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0*
	container *
_output_shapes	
:?
?
(batch_normalization_8/moving_mean/AssignAssign!batch_normalization_8/moving_mean3batch_normalization_8/moving_mean/Initializer/zeros*
validate_shape(*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes	
:?
?
&batch_normalization_8/moving_mean/readIdentity!batch_normalization_8/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes	
:?
?
Fbatch_normalization_8/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:?*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0*
_output_shapes
:
?
<batch_normalization_8/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0*
_output_shapes
: 
?
6batch_normalization_8/moving_variance/Initializer/onesFillFbatch_normalization_8/moving_variance/Initializer/ones/shape_as_tensor<batch_normalization_8/moving_variance/Initializer/ones/Const*
T0*

index_type0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes	
:?
?
%batch_normalization_8/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
,batch_normalization_8/moving_variance/AssignAssign%batch_normalization_8/moving_variance6batch_normalization_8/moving_variance/Initializer/ones*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes	
:?
?
*batch_normalization_8/moving_variance/readIdentity%batch_normalization_8/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes	
:?
j
%batch_normalization_8/batchnorm/add/yConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
#batch_normalization_8/batchnorm/addAdd*batch_normalization_8/moving_variance/read%batch_normalization_8/batchnorm/add/y*
T0*
_output_shapes	
:?
y
%batch_normalization_8/batchnorm/RsqrtRsqrt#batch_normalization_8/batchnorm/add*
T0*
_output_shapes	
:?
?
#batch_normalization_8/batchnorm/mulMul%batch_normalization_8/batchnorm/Rsqrt batch_normalization_8/gamma/read*
T0*
_output_shapes	
:?
?
%batch_normalization_8/batchnorm/mul_1Muldropout_3/Identity#batch_normalization_8/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
%batch_normalization_8/batchnorm/mul_2Mul&batch_normalization_8/moving_mean/read#batch_normalization_8/batchnorm/mul*
T0*
_output_shapes	
:?
?
#batch_normalization_8/batchnorm/subSubbatch_normalization_8/beta/read%batch_normalization_8/batchnorm/mul_2*
T0*
_output_shapes	
:?
?
%batch_normalization_8/batchnorm/add_1Add%batch_normalization_8/batchnorm/mul_1#batch_normalization_8/batchnorm/sub*
T0*(
_output_shapes
:??????????
?
/dense_4/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
:
?
-dense_4/kernel/Initializer/random_uniform/minConst*
valueB
 *???*!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
?
-dense_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *??=*!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
?
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
?
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
dense_4/kernel
VariableV2*!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape:	?
*
shared_name *
_output_shapes
:	?

?
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

|
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
dense_4/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_4/bias*
dtype0*
_output_shapes
:

?
dense_4/bias
VariableV2*
dtype0*
	container *
shape:
*
shared_name *
_class
loc:@dense_4/bias*
_output_shapes
:

?
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
use_locking(*
_output_shapes
:

q
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:

?
dense_4/MatMulMatMul%batch_normalization_8/batchnorm/add_1dense_4/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:?????????

?
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:?????????

S
probsSoftmaxdense_4/BiasAdd*
T0*'
_output_shapes
:?????????

p
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapetargets*
T0*
out_type0*
_output_shapes
:
?
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdense_4/BiasAddtargets*
T0*
Tlabels0*6
_output_shapes$
":?????????:?????????

O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
?
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:?????????
?
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
?
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
?
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:?????????

?
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*?
message??Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:?????????

?
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:?????????
?
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:?????????

?
*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:

?
/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul+^gradients/dense_4/BiasAdd_grad/BiasAddGrad
?
7gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:?????????

?
9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_4/BiasAdd_grad/BiasAddGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

?
$gradients/dense_4/MatMul_grad/MatMulMatMul7gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:??????????
?
&gradients/dense_4/MatMul_grad/MatMul_1MatMul%batch_normalization_8/batchnorm/add_17gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	?

?
.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
?
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1*
_output_shapes
:	?

?
:gradients/batch_normalization_8/batchnorm/add_1_grad/ShapeShape%batch_normalization_8/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_8/batchnorm/add_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_8/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_8/batchnorm/add_1_grad/Shape<gradients/batch_normalization_8/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_8/batchnorm/add_1_grad/SumSum6gradients/dense_4/MatMul_grad/tuple/control_dependencyJgradients/batch_normalization_8/batchnorm/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
<gradients/batch_normalization_8/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_8/batchnorm/add_1_grad/Sum:gradients/batch_normalization_8/batchnorm/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_8/batchnorm/add_1_grad/Sum_1Sum6gradients/dense_4/MatMul_grad/tuple/control_dependencyLgradients/batch_normalization_8/batchnorm/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
>gradients/batch_normalization_8/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_8/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_8/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_8/batchnorm/add_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_8/batchnorm/add_1_grad/Reshape?^gradients/batch_normalization_8/batchnorm/add_1_grad/Reshape_1
?
Mgradients/batch_normalization_8/batchnorm/add_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_8/batchnorm/add_1_grad/ReshapeF^gradients/batch_normalization_8/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_8/batchnorm/add_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_8/batchnorm/add_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_8/batchnorm/add_1_grad/Reshape_1F^gradients/batch_normalization_8/batchnorm/add_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_8/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
:gradients/batch_normalization_8/batchnorm/mul_1_grad/ShapeShapedropout_3/Identity*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_8/batchnorm/mul_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_8/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_8/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_8/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_8/batchnorm/mul_1_grad/MulMulMgradients/batch_normalization_8/batchnorm/add_1_grad/tuple/control_dependency#batch_normalization_8/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
8gradients/batch_normalization_8/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_8/batchnorm/mul_1_grad/MulJgradients/batch_normalization_8/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
<gradients/batch_normalization_8/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_8/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_8/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_8/batchnorm/mul_1_grad/Mul_1Muldropout_3/IdentityMgradients/batch_normalization_8/batchnorm/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_8/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_8/batchnorm/mul_1_grad/Mul_1Lgradients/batch_normalization_8/batchnorm/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
>gradients/batch_normalization_8/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_8/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_8/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_8/batchnorm/mul_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_8/batchnorm/mul_1_grad/Reshape?^gradients/batch_normalization_8/batchnorm/mul_1_grad/Reshape_1
?
Mgradients/batch_normalization_8/batchnorm/mul_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_8/batchnorm/mul_1_grad/ReshapeF^gradients/batch_normalization_8/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_8/batchnorm/mul_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_8/batchnorm/mul_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_8/batchnorm/mul_1_grad/Reshape_1F^gradients/batch_normalization_8/batchnorm/mul_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_8/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:?
?
6gradients/batch_normalization_8/batchnorm/sub_grad/NegNegOgradients/batch_normalization_8/batchnorm/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_8/batchnorm/sub_grad/tuple/group_depsNoOpP^gradients/batch_normalization_8/batchnorm/add_1_grad/tuple/control_dependency_17^gradients/batch_normalization_8/batchnorm/sub_grad/Neg
?
Kgradients/batch_normalization_8/batchnorm/sub_grad/tuple/control_dependencyIdentityOgradients/batch_normalization_8/batchnorm/add_1_grad/tuple/control_dependency_1D^gradients/batch_normalization_8/batchnorm/sub_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_8/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
Mgradients/batch_normalization_8/batchnorm/sub_grad/tuple/control_dependency_1Identity6gradients/batch_normalization_8/batchnorm/sub_grad/NegD^gradients/batch_normalization_8/batchnorm/sub_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_8/batchnorm/sub_grad/Neg*
_output_shapes	
:?
?
8gradients/batch_normalization_8/batchnorm/mul_2_grad/MulMulMgradients/batch_normalization_8/batchnorm/sub_grad/tuple/control_dependency_1#batch_normalization_8/batchnorm/mul*
T0*
_output_shapes	
:?
?
:gradients/batch_normalization_8/batchnorm/mul_2_grad/Mul_1MulMgradients/batch_normalization_8/batchnorm/sub_grad/tuple/control_dependency_1&batch_normalization_8/moving_mean/read*
T0*
_output_shapes	
:?
?
Egradients/batch_normalization_8/batchnorm/mul_2_grad/tuple/group_depsNoOp9^gradients/batch_normalization_8/batchnorm/mul_2_grad/Mul;^gradients/batch_normalization_8/batchnorm/mul_2_grad/Mul_1
?
Mgradients/batch_normalization_8/batchnorm/mul_2_grad/tuple/control_dependencyIdentity8gradients/batch_normalization_8/batchnorm/mul_2_grad/MulF^gradients/batch_normalization_8/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_8/batchnorm/mul_2_grad/Mul*
_output_shapes	
:?
?
Ogradients/batch_normalization_8/batchnorm/mul_2_grad/tuple/control_dependency_1Identity:gradients/batch_normalization_8/batchnorm/mul_2_grad/Mul_1F^gradients/batch_normalization_8/batchnorm/mul_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization_8/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:?
?
$gradients/dense_3/Relu_grad/ReluGradReluGradMgradients/batch_normalization_8/batchnorm/mul_1_grad/tuple/control_dependencydense_3/Relu*
T0*(
_output_shapes
:??????????
?
gradients/AddNAddNOgradients/batch_normalization_8/batchnorm/mul_1_grad/tuple/control_dependency_1Ogradients/batch_normalization_8/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*Q
_classG
ECloc:@gradients/batch_normalization_8/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes	
:?
?
6gradients/batch_normalization_8/batchnorm/mul_grad/MulMulgradients/AddN batch_normalization_8/gamma/read*
T0*
_output_shapes	
:?
?
8gradients/batch_normalization_8/batchnorm/mul_grad/Mul_1Mulgradients/AddN%batch_normalization_8/batchnorm/Rsqrt*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_8/batchnorm/mul_grad/tuple/group_depsNoOp7^gradients/batch_normalization_8/batchnorm/mul_grad/Mul9^gradients/batch_normalization_8/batchnorm/mul_grad/Mul_1
?
Kgradients/batch_normalization_8/batchnorm/mul_grad/tuple/control_dependencyIdentity6gradients/batch_normalization_8/batchnorm/mul_grad/MulD^gradients/batch_normalization_8/batchnorm/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_8/batchnorm/mul_grad/Mul*
_output_shapes	
:?
?
Mgradients/batch_normalization_8/batchnorm/mul_grad/tuple/control_dependency_1Identity8gradients/batch_normalization_8/batchnorm/mul_grad/Mul_1D^gradients/batch_normalization_8/batchnorm/mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_8/batchnorm/mul_grad/Mul_1*
_output_shapes	
:?
?
*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_3/BiasAdd_grad/BiasAddGrad%^gradients/dense_3/Relu_grad/ReluGrad
?
7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_3/Relu_grad/ReluGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/Relu_grad/ReluGrad*(
_output_shapes
:??????????
?
9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:??????????
?
&gradients/dense_3/MatMul_grad/MatMul_1MatMul%batch_normalization_7/batchnorm/add_17gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:
??
?
.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
?
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1* 
_output_shapes
:
??
?
:gradients/batch_normalization_7/batchnorm/add_1_grad/ShapeShape%batch_normalization_7/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_7/batchnorm/add_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_7/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_7/batchnorm/add_1_grad/Shape<gradients/batch_normalization_7/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_7/batchnorm/add_1_grad/SumSum6gradients/dense_3/MatMul_grad/tuple/control_dependencyJgradients/batch_normalization_7/batchnorm/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
<gradients/batch_normalization_7/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_7/batchnorm/add_1_grad/Sum:gradients/batch_normalization_7/batchnorm/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_7/batchnorm/add_1_grad/Sum_1Sum6gradients/dense_3/MatMul_grad/tuple/control_dependencyLgradients/batch_normalization_7/batchnorm/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
>gradients/batch_normalization_7/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_7/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_7/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_7/batchnorm/add_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_7/batchnorm/add_1_grad/Reshape?^gradients/batch_normalization_7/batchnorm/add_1_grad/Reshape_1
?
Mgradients/batch_normalization_7/batchnorm/add_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_7/batchnorm/add_1_grad/ReshapeF^gradients/batch_normalization_7/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_7/batchnorm/add_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_7/batchnorm/add_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_7/batchnorm/add_1_grad/Reshape_1F^gradients/batch_normalization_7/batchnorm/add_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_7/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
:gradients/batch_normalization_7/batchnorm/mul_1_grad/ShapeShapedropout_2/Identity*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_7/batchnorm/mul_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_7/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_7/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_7/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_7/batchnorm/mul_1_grad/MulMulMgradients/batch_normalization_7/batchnorm/add_1_grad/tuple/control_dependency#batch_normalization_7/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
8gradients/batch_normalization_7/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_7/batchnorm/mul_1_grad/MulJgradients/batch_normalization_7/batchnorm/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
<gradients/batch_normalization_7/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_7/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_7/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_7/batchnorm/mul_1_grad/Mul_1Muldropout_2/IdentityMgradients/batch_normalization_7/batchnorm/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_7/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_7/batchnorm/mul_1_grad/Mul_1Lgradients/batch_normalization_7/batchnorm/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
>gradients/batch_normalization_7/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_7/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_7/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_7/batchnorm/mul_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_7/batchnorm/mul_1_grad/Reshape?^gradients/batch_normalization_7/batchnorm/mul_1_grad/Reshape_1
?
Mgradients/batch_normalization_7/batchnorm/mul_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_7/batchnorm/mul_1_grad/ReshapeF^gradients/batch_normalization_7/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_7/batchnorm/mul_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_7/batchnorm/mul_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_7/batchnorm/mul_1_grad/Reshape_1F^gradients/batch_normalization_7/batchnorm/mul_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_7/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:?
?
6gradients/batch_normalization_7/batchnorm/sub_grad/NegNegOgradients/batch_normalization_7/batchnorm/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_7/batchnorm/sub_grad/tuple/group_depsNoOpP^gradients/batch_normalization_7/batchnorm/add_1_grad/tuple/control_dependency_17^gradients/batch_normalization_7/batchnorm/sub_grad/Neg
?
Kgradients/batch_normalization_7/batchnorm/sub_grad/tuple/control_dependencyIdentityOgradients/batch_normalization_7/batchnorm/add_1_grad/tuple/control_dependency_1D^gradients/batch_normalization_7/batchnorm/sub_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_7/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
Mgradients/batch_normalization_7/batchnorm/sub_grad/tuple/control_dependency_1Identity6gradients/batch_normalization_7/batchnorm/sub_grad/NegD^gradients/batch_normalization_7/batchnorm/sub_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_7/batchnorm/sub_grad/Neg*
_output_shapes	
:?
?
8gradients/batch_normalization_7/batchnorm/mul_2_grad/MulMulMgradients/batch_normalization_7/batchnorm/sub_grad/tuple/control_dependency_1#batch_normalization_7/batchnorm/mul*
T0*
_output_shapes	
:?
?
:gradients/batch_normalization_7/batchnorm/mul_2_grad/Mul_1MulMgradients/batch_normalization_7/batchnorm/sub_grad/tuple/control_dependency_1&batch_normalization_7/moving_mean/read*
T0*
_output_shapes	
:?
?
Egradients/batch_normalization_7/batchnorm/mul_2_grad/tuple/group_depsNoOp9^gradients/batch_normalization_7/batchnorm/mul_2_grad/Mul;^gradients/batch_normalization_7/batchnorm/mul_2_grad/Mul_1
?
Mgradients/batch_normalization_7/batchnorm/mul_2_grad/tuple/control_dependencyIdentity8gradients/batch_normalization_7/batchnorm/mul_2_grad/MulF^gradients/batch_normalization_7/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_7/batchnorm/mul_2_grad/Mul*
_output_shapes	
:?
?
Ogradients/batch_normalization_7/batchnorm/mul_2_grad/tuple/control_dependency_1Identity:gradients/batch_normalization_7/batchnorm/mul_2_grad/Mul_1F^gradients/batch_normalization_7/batchnorm/mul_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization_7/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:?
?
$gradients/dense_2/Relu_grad/ReluGradReluGradMgradients/batch_normalization_7/batchnorm/mul_1_grad/tuple/control_dependencydense_2/Relu*
T0*(
_output_shapes
:??????????
?
gradients/AddN_1AddNOgradients/batch_normalization_7/batchnorm/mul_1_grad/tuple/control_dependency_1Ogradients/batch_normalization_7/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*Q
_classG
ECloc:@gradients/batch_normalization_7/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes	
:?
?
6gradients/batch_normalization_7/batchnorm/mul_grad/MulMulgradients/AddN_1 batch_normalization_7/gamma/read*
T0*
_output_shapes	
:?
?
8gradients/batch_normalization_7/batchnorm/mul_grad/Mul_1Mulgradients/AddN_1%batch_normalization_7/batchnorm/Rsqrt*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_7/batchnorm/mul_grad/tuple/group_depsNoOp7^gradients/batch_normalization_7/batchnorm/mul_grad/Mul9^gradients/batch_normalization_7/batchnorm/mul_grad/Mul_1
?
Kgradients/batch_normalization_7/batchnorm/mul_grad/tuple/control_dependencyIdentity6gradients/batch_normalization_7/batchnorm/mul_grad/MulD^gradients/batch_normalization_7/batchnorm/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_7/batchnorm/mul_grad/Mul*
_output_shapes	
:?
?
Mgradients/batch_normalization_7/batchnorm/mul_grad/tuple/control_dependency_1Identity8gradients/batch_normalization_7/batchnorm/mul_grad/Mul_1D^gradients/batch_normalization_7/batchnorm/mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_7/batchnorm/mul_grad/Mul_1*
_output_shapes	
:?
?
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_2/BiasAdd_grad/BiasAddGrad%^gradients/dense_2/Relu_grad/ReluGrad
?
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_2/Relu_grad/ReluGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Relu_grad/ReluGrad*(
_output_shapes
:??????????
?
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:??????????
?
&gradients/dense_2/MatMul_grad/MatMul_1MatMul%batch_normalization_6/batchnorm/add_17gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( * 
_output_shapes
:
??
?
.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
?
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1* 
_output_shapes
:
??
?
:gradients/batch_normalization_6/batchnorm/add_1_grad/ShapeShape%batch_normalization_6/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/add_1_grad/Shape<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_6/batchnorm/add_1_grad/SumSum6gradients/dense_2/MatMul_grad/tuple/control_dependencyJgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
<gradients/batch_normalization_6/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/add_1_grad/Sum:gradients/batch_normalization_6/batchnorm/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_6/batchnorm/add_1_grad/Sum_1Sum6gradients/dense_2/MatMul_grad/tuple/control_dependencyLgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
>gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape?^gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1
?
Mgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/add_1_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
:gradients/batch_normalization_6/batchnorm/mul_1_grad/ShapeShapedropout_1/Identity*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_6/batchnorm/mul_1_grad/MulMulMgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency#batch_normalization_6/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
8gradients/batch_normalization_6/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_6/batchnorm/mul_1_grad/MulJgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
<gradients/batch_normalization_6/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_6/batchnorm/mul_1_grad/Mul_1Muldropout_1/IdentityMgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_6/batchnorm/mul_1_grad/Mul_1Lgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
>gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape?^gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1
?
Mgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/mul_1_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:?
?
6gradients/batch_normalization_6/batchnorm/sub_grad/NegNegOgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_depsNoOpP^gradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_17^gradients/batch_normalization_6/batchnorm/sub_grad/Neg
?
Kgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependencyIdentityOgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1D^gradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
Mgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1Identity6gradients/batch_normalization_6/batchnorm/sub_grad/NegD^gradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_6/batchnorm/sub_grad/Neg*
_output_shapes	
:?
?
8gradients/batch_normalization_6/batchnorm/mul_2_grad/MulMulMgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1#batch_normalization_6/batchnorm/mul*
T0*
_output_shapes	
:?
?
:gradients/batch_normalization_6/batchnorm/mul_2_grad/Mul_1MulMgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1&batch_normalization_6/moving_mean/read*
T0*
_output_shapes	
:?
?
Egradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_depsNoOp9^gradients/batch_normalization_6/batchnorm/mul_2_grad/Mul;^gradients/batch_normalization_6/batchnorm/mul_2_grad/Mul_1
?
Mgradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependencyIdentity8gradients/batch_normalization_6/batchnorm/mul_2_grad/MulF^gradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_6/batchnorm/mul_2_grad/Mul*
_output_shapes	
:?
?
Ogradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency_1Identity:gradients/batch_normalization_6/batchnorm/mul_2_grad/Mul_1F^gradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization_6/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:?
?
$gradients/dense_1/Relu_grad/ReluGradReluGradMgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependencydense_1/Relu*
T0*(
_output_shapes
:??????????
?
gradients/AddN_2AddNOgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependency_1Ogradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes	
:?
?
6gradients/batch_normalization_6/batchnorm/mul_grad/MulMulgradients/AddN_2 batch_normalization_6/gamma/read*
T0*
_output_shapes	
:?
?
8gradients/batch_normalization_6/batchnorm/mul_grad/Mul_1Mulgradients/AddN_2%batch_normalization_6/batchnorm/Rsqrt*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_depsNoOp7^gradients/batch_normalization_6/batchnorm/mul_grad/Mul9^gradients/batch_normalization_6/batchnorm/mul_grad/Mul_1
?
Kgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependencyIdentity6gradients/batch_normalization_6/batchnorm/mul_grad/MulD^gradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_6/batchnorm/mul_grad/Mul*
_output_shapes	
:?
?
Mgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency_1Identity8gradients/batch_normalization_6/batchnorm/mul_grad/Mul_1D^gradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_6/batchnorm/mul_grad/Mul_1*
_output_shapes	
:?
?
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_1/BiasAdd_grad/BiasAddGrad%^gradients/dense_1/Relu_grad/ReluGrad
?
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_1/Relu_grad/ReluGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:??????????
?
9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:??????????
?
&gradients/dense_1/MatMul_grad/MatMul_1MatMul%batch_normalization_5/batchnorm/add_17gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:
??
?
.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
?
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
??
?
:gradients/batch_normalization_5/batchnorm/add_1_grad/ShapeShape%batch_normalization_5/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_5/batchnorm/add_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_5/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_5/batchnorm/add_1_grad/Shape<gradients/batch_normalization_5/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_5/batchnorm/add_1_grad/SumSum6gradients/dense_1/MatMul_grad/tuple/control_dependencyJgradients/batch_normalization_5/batchnorm/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
<gradients/batch_normalization_5/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_5/batchnorm/add_1_grad/Sum:gradients/batch_normalization_5/batchnorm/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_5/batchnorm/add_1_grad/Sum_1Sum6gradients/dense_1/MatMul_grad/tuple/control_dependencyLgradients/batch_normalization_5/batchnorm/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
>gradients/batch_normalization_5/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_5/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_5/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_5/batchnorm/add_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_5/batchnorm/add_1_grad/Reshape?^gradients/batch_normalization_5/batchnorm/add_1_grad/Reshape_1
?
Mgradients/batch_normalization_5/batchnorm/add_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_5/batchnorm/add_1_grad/ReshapeF^gradients/batch_normalization_5/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_5/batchnorm/add_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_5/batchnorm/add_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_5/batchnorm/add_1_grad/Reshape_1F^gradients/batch_normalization_5/batchnorm/add_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_5/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
:gradients/batch_normalization_5/batchnorm/mul_1_grad/ShapeShapedropout/Identity*
T0*
out_type0*
_output_shapes
:
?
<gradients/batch_normalization_5/batchnorm/mul_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
Jgradients/batch_normalization_5/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_5/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_5/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
8gradients/batch_normalization_5/batchnorm/mul_1_grad/MulMulMgradients/batch_normalization_5/batchnorm/add_1_grad/tuple/control_dependency#batch_normalization_5/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
8gradients/batch_normalization_5/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_5/batchnorm/mul_1_grad/MulJgradients/batch_normalization_5/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
<gradients/batch_normalization_5/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_5/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_5/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_5/batchnorm/mul_1_grad/Mul_1Muldropout/IdentityMgradients/batch_normalization_5/batchnorm/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
:gradients/batch_normalization_5/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_5/batchnorm/mul_1_grad/Mul_1Lgradients/batch_normalization_5/batchnorm/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
>gradients/batch_normalization_5/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_5/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_5/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
Egradients/batch_normalization_5/batchnorm/mul_1_grad/tuple/group_depsNoOp=^gradients/batch_normalization_5/batchnorm/mul_1_grad/Reshape?^gradients/batch_normalization_5/batchnorm/mul_1_grad/Reshape_1
?
Mgradients/batch_normalization_5/batchnorm/mul_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_5/batchnorm/mul_1_grad/ReshapeF^gradients/batch_normalization_5/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_5/batchnorm/mul_1_grad/Reshape*(
_output_shapes
:??????????
?
Ogradients/batch_normalization_5/batchnorm/mul_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_5/batchnorm/mul_1_grad/Reshape_1F^gradients/batch_normalization_5/batchnorm/mul_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_5/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:?
?
6gradients/batch_normalization_5/batchnorm/sub_grad/NegNegOgradients/batch_normalization_5/batchnorm/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_5/batchnorm/sub_grad/tuple/group_depsNoOpP^gradients/batch_normalization_5/batchnorm/add_1_grad/tuple/control_dependency_17^gradients/batch_normalization_5/batchnorm/sub_grad/Neg
?
Kgradients/batch_normalization_5/batchnorm/sub_grad/tuple/control_dependencyIdentityOgradients/batch_normalization_5/batchnorm/add_1_grad/tuple/control_dependency_1D^gradients/batch_normalization_5/batchnorm/sub_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_5/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:?
?
Mgradients/batch_normalization_5/batchnorm/sub_grad/tuple/control_dependency_1Identity6gradients/batch_normalization_5/batchnorm/sub_grad/NegD^gradients/batch_normalization_5/batchnorm/sub_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_5/batchnorm/sub_grad/Neg*
_output_shapes	
:?
?
8gradients/batch_normalization_5/batchnorm/mul_2_grad/MulMulMgradients/batch_normalization_5/batchnorm/sub_grad/tuple/control_dependency_1#batch_normalization_5/batchnorm/mul*
T0*
_output_shapes	
:?
?
:gradients/batch_normalization_5/batchnorm/mul_2_grad/Mul_1MulMgradients/batch_normalization_5/batchnorm/sub_grad/tuple/control_dependency_1&batch_normalization_5/moving_mean/read*
T0*
_output_shapes	
:?
?
Egradients/batch_normalization_5/batchnorm/mul_2_grad/tuple/group_depsNoOp9^gradients/batch_normalization_5/batchnorm/mul_2_grad/Mul;^gradients/batch_normalization_5/batchnorm/mul_2_grad/Mul_1
?
Mgradients/batch_normalization_5/batchnorm/mul_2_grad/tuple/control_dependencyIdentity8gradients/batch_normalization_5/batchnorm/mul_2_grad/MulF^gradients/batch_normalization_5/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_5/batchnorm/mul_2_grad/Mul*
_output_shapes	
:?
?
Ogradients/batch_normalization_5/batchnorm/mul_2_grad/tuple/control_dependency_1Identity:gradients/batch_normalization_5/batchnorm/mul_2_grad/Mul_1F^gradients/batch_normalization_5/batchnorm/mul_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization_5/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:?
?
"gradients/dense/Relu_grad/ReluGradReluGradMgradients/batch_normalization_5/batchnorm/mul_1_grad/tuple/control_dependency
dense/Relu*
T0*(
_output_shapes
:??????????
?
gradients/AddN_3AddNOgradients/batch_normalization_5/batchnorm/mul_1_grad/tuple/control_dependency_1Ogradients/batch_normalization_5/batchnorm/mul_2_grad/tuple/control_dependency_1*
N*
T0*Q
_classG
ECloc:@gradients/batch_normalization_5/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:?
?
6gradients/batch_normalization_5/batchnorm/mul_grad/MulMulgradients/AddN_3 batch_normalization_5/gamma/read*
T0*
_output_shapes	
:?
?
8gradients/batch_normalization_5/batchnorm/mul_grad/Mul_1Mulgradients/AddN_3%batch_normalization_5/batchnorm/Rsqrt*
T0*
_output_shapes	
:?
?
Cgradients/batch_normalization_5/batchnorm/mul_grad/tuple/group_depsNoOp7^gradients/batch_normalization_5/batchnorm/mul_grad/Mul9^gradients/batch_normalization_5/batchnorm/mul_grad/Mul_1
?
Kgradients/batch_normalization_5/batchnorm/mul_grad/tuple/control_dependencyIdentity6gradients/batch_normalization_5/batchnorm/mul_grad/MulD^gradients/batch_normalization_5/batchnorm/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_5/batchnorm/mul_grad/Mul*
_output_shapes	
:?
?
Mgradients/batch_normalization_5/batchnorm/mul_grad/tuple/control_dependency_1Identity8gradients/batch_normalization_5/batchnorm/mul_grad/Mul_1D^gradients/batch_normalization_5/batchnorm/mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization_5/batchnorm/mul_grad/Mul_1*
_output_shapes	
:?
?
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:?
?
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp)^gradients/dense/BiasAdd_grad/BiasAddGrad#^gradients/dense/Relu_grad/ReluGrad
?
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Relu_grad/ReluGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/Relu_grad/ReluGrad*(
_output_shapes
:??????????
?
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:??????????
?
$gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
??
?
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
?
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1* 
_output_shapes
:
??
?
$gradients/flatten/Reshape_grad/ShapeShape$batch_normalization_4/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
?
&gradients/flatten/Reshape_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependency$gradients/flatten/Reshape_grad/Shape*
T0*
Tshape0*0
_output_shapes
:??????????
q
gradients/zeros_like_1	ZerosLike&batch_normalization_4/FusedBatchNorm:1*
T0*
_output_shapes	
:?
q
gradients/zeros_like_2	ZerosLike&batch_normalization_4/FusedBatchNorm:2*
T0*
_output_shapes	
:?
q
gradients/zeros_like_3	ZerosLike&batch_normalization_4/FusedBatchNorm:3*
T0*
_output_shapes	
:?
q
gradients/zeros_like_4	ZerosLike&batch_normalization_4/FusedBatchNorm:4*
T0*
_output_shapes	
:?
?
Fgradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad&gradients/flatten/Reshape_grad/Reshapemax_pooling2d_3/MaxPool batch_normalization_4/gamma/read&batch_normalization_4/moving_mean/read*batch_normalization_4/moving_variance/read*
data_formatNHWC*
is_training( *
epsilon%o?:*
T0*L
_output_shapes:
8:??????????:?:?:?:?
?
Dgradients/batch_normalization_4/FusedBatchNorm_grad/tuple/group_depsNoOpG^gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad
?
Lgradients/batch_normalization_4/FusedBatchNorm_grad/tuple/control_dependencyIdentityFgradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGradE^gradients/batch_normalization_4/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad*0
_output_shapes
:??????????
?
Ngradients/batch_normalization_4/FusedBatchNorm_grad/tuple/control_dependency_1IdentityHgradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad:1E^gradients/batch_normalization_4/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes	
:?
?
Ngradients/batch_normalization_4/FusedBatchNorm_grad/tuple/control_dependency_2IdentityHgradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad:2E^gradients/batch_normalization_4/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes	
:?
?
2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d_3/MaxPoolLgradients/batch_normalization_4/FusedBatchNorm_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*
T0*0
_output_shapes
:??????????
?
%gradients/conv2d_3/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*0
_output_shapes
:??????????
?
+gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
0gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp,^gradients/conv2d_3/BiasAdd_grad/BiasAddGrad&^gradients/conv2d_3/Relu_grad/ReluGrad
?
8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_3/Relu_grad/ReluGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_3/Relu_grad/ReluGrad*0
_output_shapes
:??????????
?
:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_3/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeN$batch_normalization_3/FusedBatchNormconv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
?
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/kernel/read8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
paddingSAME*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*0
_output_shapes
:??????????
?
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter$batch_normalization_3/FusedBatchNorm'gradients/conv2d_3/Conv2D_grad/ShapeN:18gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:??
?
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp4^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
?
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:??????????
?
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:??
q
gradients/zeros_like_5	ZerosLike&batch_normalization_3/FusedBatchNorm:1*
T0*
_output_shapes	
:?
q
gradients/zeros_like_6	ZerosLike&batch_normalization_3/FusedBatchNorm:2*
T0*
_output_shapes	
:?
q
gradients/zeros_like_7	ZerosLike&batch_normalization_3/FusedBatchNorm:3*
T0*
_output_shapes	
:?
q
gradients/zeros_like_8	ZerosLike&batch_normalization_3/FusedBatchNorm:4*
T0*
_output_shapes	
:?
?
Fgradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencymax_pooling2d_2/MaxPool batch_normalization_3/gamma/read&batch_normalization_3/moving_mean/read*batch_normalization_3/moving_variance/read*
T0*
data_formatNHWC*
is_training( *
epsilon%o?:*L
_output_shapes:
8:??????????:?:?:?:?
?
Dgradients/batch_normalization_3/FusedBatchNorm_grad/tuple/group_depsNoOpG^gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad
?
Lgradients/batch_normalization_3/FusedBatchNorm_grad/tuple/control_dependencyIdentityFgradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGradE^gradients/batch_normalization_3/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad*0
_output_shapes
:??????????
?
Ngradients/batch_normalization_3/FusedBatchNorm_grad/tuple/control_dependency_1IdentityHgradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad:1E^gradients/batch_normalization_3/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes	
:?
?
Ngradients/batch_normalization_3/FusedBatchNorm_grad/tuple/control_dependency_2IdentityHgradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad:2E^gradients/batch_normalization_3/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes	
:?
?
2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_2/Relumax_pooling2d_2/MaxPoolLgradients/batch_normalization_3/FusedBatchNorm_grad/tuple/control_dependency*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC*0
_output_shapes
:??????????
?
%gradients/conv2d_2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_2/Relu*
T0*0
_output_shapes
:??????????
?
+gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
0gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp,^gradients/conv2d_2/BiasAdd_grad/BiasAddGrad&^gradients/conv2d_2/Relu_grad/ReluGrad
?
8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_2/Relu_grad/ReluGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_2/Relu_grad/ReluGrad*0
_output_shapes
:??????????
?
:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeN$batch_normalization_2/FusedBatchNormconv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
?
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/read8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0*0
_output_shapes
:??????????
?
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter$batch_normalization_2/FusedBatchNorm'gradients/conv2d_2/Conv2D_grad/ShapeN:18gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:??
?
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
?
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:??????????
?
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:??
q
gradients/zeros_like_9	ZerosLike&batch_normalization_2/FusedBatchNorm:1*
T0*
_output_shapes	
:?
r
gradients/zeros_like_10	ZerosLike&batch_normalization_2/FusedBatchNorm:2*
T0*
_output_shapes	
:?
r
gradients/zeros_like_11	ZerosLike&batch_normalization_2/FusedBatchNorm:3*
T0*
_output_shapes	
:?
r
gradients/zeros_like_12	ZerosLike&batch_normalization_2/FusedBatchNorm:4*
T0*
_output_shapes	
:?
?
Fgradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencymax_pooling2d_1/MaxPool batch_normalization_2/gamma/read&batch_normalization_2/moving_mean/read*batch_normalization_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:??????????:?:?:?:?
?
Dgradients/batch_normalization_2/FusedBatchNorm_grad/tuple/group_depsNoOpG^gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad
?
Lgradients/batch_normalization_2/FusedBatchNorm_grad/tuple/control_dependencyIdentityFgradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGradE^gradients/batch_normalization_2/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad*0
_output_shapes
:??????????
?
Ngradients/batch_normalization_2/FusedBatchNorm_grad/tuple/control_dependency_1IdentityHgradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad:1E^gradients/batch_normalization_2/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes	
:?
?
Ngradients/batch_normalization_2/FusedBatchNorm_grad/tuple/control_dependency_2IdentityHgradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad:2E^gradients/batch_normalization_2/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes	
:?
?
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d_1/MaxPoolLgradients/batch_normalization_2/FusedBatchNorm_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*
T0*0
_output_shapes
:??????????
?
%gradients/conv2d_1/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_1/Relu*
T0*0
_output_shapes
:??????????
?
+gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
0gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp,^gradients/conv2d_1/BiasAdd_grad/BiasAddGrad&^gradients/conv2d_1/Relu_grad/ReluGrad
?
8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_1/Relu_grad/ReluGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_1/Relu_grad/ReluGrad*0
_output_shapes
:??????????
?
:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
%gradients/conv2d_1/Conv2D_grad/ShapeNShapeN$batch_normalization_1/FusedBatchNormconv2d_1/kernel/read*
N*
T0*
out_type0* 
_output_shapes
::
?
2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/read8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*/
_output_shapes
:?????????@
?
3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter$batch_normalization_1/FusedBatchNorm'gradients/conv2d_1/Conv2D_grad/ShapeN:18gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0*'
_output_shapes
:@?
?
/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOp4^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput
?
7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????@
?
9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@?
q
gradients/zeros_like_13	ZerosLike&batch_normalization_1/FusedBatchNorm:1*
T0*
_output_shapes
:@
q
gradients/zeros_like_14	ZerosLike&batch_normalization_1/FusedBatchNorm:2*
T0*
_output_shapes
:@
q
gradients/zeros_like_15	ZerosLike&batch_normalization_1/FusedBatchNorm:3*
T0*
_output_shapes
:@
q
gradients/zeros_like_16	ZerosLike&batch_normalization_1/FusedBatchNorm:4*
T0*
_output_shapes
:@
?
Fgradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencymax_pooling2d/MaxPool batch_normalization_1/gamma/read&batch_normalization_1/moving_mean/read*batch_normalization_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:?????????@:@:@:@:@
?
Dgradients/batch_normalization_1/FusedBatchNorm_grad/tuple/group_depsNoOpG^gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad
?
Lgradients/batch_normalization_1/FusedBatchNorm_grad/tuple/control_dependencyIdentityFgradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGradE^gradients/batch_normalization_1/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:?????????@
?
Ngradients/batch_normalization_1/FusedBatchNorm_grad/tuple/control_dependency_1IdentityHgradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad:1E^gradients/batch_normalization_1/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:@
?
Ngradients/batch_normalization_1/FusedBatchNorm_grad/tuple/control_dependency_2IdentityHgradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad:2E^gradients/batch_normalization_1/FusedBatchNorm_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:@
?
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d/Relumax_pooling2d/MaxPoolLgradients/batch_normalization_1/FusedBatchNorm_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*
T0*/
_output_shapes
:?????????  @
?
#gradients/conv2d/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d/Relu*
T0*/
_output_shapes
:?????????  @
?
)gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
?
.gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp*^gradients/conv2d/BiasAdd_grad/BiasAddGrad$^gradients/conv2d/Relu_grad/ReluGrad
?
6gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity#gradients/conv2d/Relu_grad/ReluGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:?????????  @
?
8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/conv2d/BiasAdd_grad/BiasAddGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
?
#gradients/conv2d/Conv2D_grad/ShapeNShapeN"batch_normalization/FusedBatchNormconv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
?
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/read6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:?????????  
?
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter"batch_normalization/FusedBatchNorm%gradients/conv2d/Conv2D_grad/ShapeN:16gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*&
_output_shapes
:@
?
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput
?
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????  
?
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@
o
gradients/zeros_like_17	ZerosLike$batch_normalization/FusedBatchNorm:1*
T0*
_output_shapes
:
o
gradients/zeros_like_18	ZerosLike$batch_normalization/FusedBatchNorm:2*
T0*
_output_shapes
:
o
gradients/zeros_like_19	ZerosLike$batch_normalization/FusedBatchNorm:3*
T0*
_output_shapes
:
o
gradients/zeros_like_20	ZerosLike$batch_normalization/FusedBatchNorm:4*
T0*
_output_shapes
:
?
Dgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad5gradients/conv2d/Conv2D_grad/tuple/control_dependencyimagesbatch_normalization/gamma/read$batch_normalization/moving_mean/read(batch_normalization/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:?????????  ::::
?
Bgradients/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpE^gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
?
Jgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityDgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradC^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:?????????  
?
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
?
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
?
beta1_power/initial_valueConst*
valueB
 *fff?*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
?
beta1_power
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
dtype0*
	container *
shape: *
_output_shapes
: 
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
use_locking(*
_output_shapes
: 
w
beta1_power/readIdentitybeta1_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
?
beta2_power/initial_valueConst*
valueB
 *w??*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
?
beta2_power
VariableV2*+
_class!
loc:@batch_normalization/beta*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
w
beta2_power/readIdentitybeta2_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
?
0batch_normalization/gamma/Adam/Initializer/zerosConst*
valueB*    *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
:
?
batch_normalization/gamma/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
%batch_normalization/gamma/Adam/AssignAssignbatch_normalization/gamma/Adam0batch_normalization/gamma/Adam/Initializer/zeros*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(*
_output_shapes
:
?
#batch_normalization/gamma/Adam/readIdentitybatch_normalization/gamma/Adam*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
2batch_normalization/gamma/Adam_1/Initializer/zerosConst*
valueB*    *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
:
?
 batch_normalization/gamma/Adam_1
VariableV2*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
	container *
shape:*
shared_name *
_output_shapes
:
?
'batch_normalization/gamma/Adam_1/AssignAssign batch_normalization/gamma/Adam_12batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
:
?
%batch_normalization/gamma/Adam_1/readIdentity batch_normalization/gamma/Adam_1*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
/batch_normalization/beta/Adam/Initializer/zerosConst*
dtype0*
valueB*    *+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
batch_normalization/beta/Adam
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
dtype0*
	container *
shape:*
_output_shapes
:
?
$batch_normalization/beta/Adam/AssignAssignbatch_normalization/beta/Adam/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
:
?
"batch_normalization/beta/Adam/readIdentitybatch_normalization/beta/Adam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
1batch_normalization/beta/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
batch_normalization/beta/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
&batch_normalization/beta/Adam_1/AssignAssignbatch_normalization/beta/Adam_11batch_normalization/beta/Adam_1/Initializer/zeros*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
use_locking(*
_output_shapes
:
?
$batch_normalization/beta/Adam_1/readIdentitybatch_normalization/beta/Adam_1*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
4conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*%
valueB"         @   * 
_class
loc:@conv2d/kernel*
_output_shapes
:
?
*conv2d/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    * 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
$conv2d/kernel/Adam/Initializer/zerosFill4conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor*conv2d/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/kernel/Adam
VariableV2* 
_class
loc:@conv2d/kernel*
dtype0*
	container *
shape:@*
shared_name *&
_output_shapes
:@
?
conv2d/kernel/Adam/AssignAssignconv2d/kernel/Adam$conv2d/kernel/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:@
?
conv2d/kernel/Adam/readIdentityconv2d/kernel/Adam*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
6conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*%
valueB"         @   * 
_class
loc:@conv2d/kernel*
_output_shapes
:
?
,conv2d/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
?
&conv2d/kernel/Adam_1/Initializer/zerosFill6conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor,conv2d/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:@*
shared_name * 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/kernel/Adam_1/AssignAssignconv2d/kernel/Adam_1&conv2d/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
conv2d/kernel/Adam_1/readIdentityconv2d/kernel/Adam_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
"conv2d/bias/Adam/Initializer/zerosConst*
dtype0*
valueB@*    *
_class
loc:@conv2d/bias*
_output_shapes
:@
?
conv2d/bias/Adam
VariableV2*
_class
loc:@conv2d/bias*
dtype0*
	container *
shape:@*
shared_name *
_output_shapes
:@
?
conv2d/bias/Adam/AssignAssignconv2d/bias/Adam"conv2d/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:@
x
conv2d/bias/Adam/readIdentityconv2d/bias/Adam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:@
?
$conv2d/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:@
?
conv2d/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
dtype0*
	container *
shape:@*
_output_shapes
:@
?
conv2d/bias/Adam_1/AssignAssignconv2d/bias/Adam_1$conv2d/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:@
|
conv2d/bias/Adam_1/readIdentityconv2d/bias/Adam_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:@
?
2batch_normalization_1/gamma/Adam/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
?
 batch_normalization_1/gamma/Adam
VariableV2*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
	container *
shape:@*
shared_name *
_output_shapes
:@
?
'batch_normalization_1/gamma/Adam/AssignAssign batch_normalization_1/gamma/Adam2batch_normalization_1/gamma/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@
?
%batch_normalization_1/gamma/Adam/readIdentity batch_normalization_1/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:@
?
4batch_normalization_1/gamma/Adam_1/Initializer/zerosConst*
dtype0*
valueB@*    *.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:@
?
"batch_normalization_1/gamma/Adam_1
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
	container *
shape:@*
_output_shapes
:@
?
)batch_normalization_1/gamma/Adam_1/AssignAssign"batch_normalization_1/gamma/Adam_14batch_normalization_1/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@
?
'batch_normalization_1/gamma/Adam_1/readIdentity"batch_normalization_1/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:@
?
1batch_normalization_1/beta/Adam/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:@
?
batch_normalization_1/beta/Adam
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
	container *
shape:@*
_output_shapes
:@
?
&batch_normalization_1/beta/Adam/AssignAssignbatch_normalization_1/beta/Adam1batch_normalization_1/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@
?
$batch_normalization_1/beta/Adam/readIdentitybatch_normalization_1/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:@
?
3batch_normalization_1/beta/Adam_1/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:@
?
!batch_normalization_1/beta/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
	container *
shape:@*
_output_shapes
:@
?
(batch_normalization_1/beta/Adam_1/AssignAssign!batch_normalization_1/beta/Adam_13batch_normalization_1/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@
?
&batch_normalization_1/beta/Adam_1/readIdentity!batch_normalization_1/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:@
?
6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   ?   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
?
,conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
?
&conv2d_1/kernel/Adam/Initializer/zerosFill6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
conv2d_1/kernel/Adam
VariableV2*"
_class
loc:@conv2d_1/kernel*
dtype0*
	container *
shape:@?*
shared_name *'
_output_shapes
:@?
?
conv2d_1/kernel/Adam/AssignAssignconv2d_1/kernel/Adam&conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*'
_output_shapes
:@?
?
conv2d_1/kernel/Adam/readIdentityconv2d_1/kernel/Adam*
T0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   ?   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
?
.conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
?
(conv2d_1/kernel/Adam_1/Initializer/zerosFill8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
conv2d_1/kernel/Adam_1
VariableV2*"
_class
loc:@conv2d_1/kernel*
dtype0*
	container *
shape:@?*
shared_name *'
_output_shapes
:@?
?
conv2d_1/kernel/Adam_1/AssignAssignconv2d_1/kernel/Adam_1(conv2d_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
conv2d_1/kernel/Adam_1/readIdentityconv2d_1/kernel/Adam_1*
T0*"
_class
loc:@conv2d_1/kernel*'
_output_shapes
:@?
?
$conv2d_1/bias/Adam/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes	
:?
?
conv2d_1/bias/Adam
VariableV2*
shape:?*
shared_name * 
_class
loc:@conv2d_1/bias*
dtype0*
	container *
_output_shapes	
:?
?
conv2d_1/bias/Adam/AssignAssignconv2d_1/bias/Adam$conv2d_1/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes	
:?

conv2d_1/bias/Adam/readIdentityconv2d_1/bias/Adam*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes	
:?
?
&conv2d_1/bias/Adam_1/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes	
:?
?
conv2d_1/bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv2d_1/bias*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
conv2d_1/bias/Adam_1/AssignAssignconv2d_1/bias/Adam_1&conv2d_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes	
:?
?
conv2d_1/bias/Adam_1/readIdentityconv2d_1/bias/Adam_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes	
:?
?
2batch_normalization_2/gamma/Adam/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes	
:?
?
 batch_normalization_2/gamma/Adam
VariableV2*
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
	container *
_output_shapes	
:?
?
'batch_normalization_2/gamma/Adam/AssignAssign batch_normalization_2/gamma/Adam2batch_normalization_2/gamma/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes	
:?
?
%batch_normalization_2/gamma/Adam/readIdentity batch_normalization_2/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
4batch_normalization_2/gamma/Adam_1/Initializer/zerosConst*
dtype0*
valueB?*    *.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
"batch_normalization_2/gamma/Adam_1
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
)batch_normalization_2/gamma/Adam_1/AssignAssign"batch_normalization_2/gamma/Adam_14batch_normalization_2/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes	
:?
?
'batch_normalization_2/gamma/Adam_1/readIdentity"batch_normalization_2/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
1batch_normalization_2/beta/Adam/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_2/beta/Adam
VariableV2*-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
&batch_normalization_2/beta/Adam/AssignAssignbatch_normalization_2/beta/Adam1batch_normalization_2/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes	
:?
?
$batch_normalization_2/beta/Adam/readIdentitybatch_normalization_2/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes	
:?
?
3batch_normalization_2/beta/Adam_1/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes	
:?
?
!batch_normalization_2/beta/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
(batch_normalization_2/beta/Adam_1/AssignAssign!batch_normalization_2/beta/Adam_13batch_normalization_2/beta/Adam_1/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
&batch_normalization_2/beta/Adam_1/readIdentity!batch_normalization_2/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes	
:?
?
6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      ?      *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
?
,conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
&conv2d_2/kernel/Adam/Initializer/zerosFill6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
conv2d_2/kernel/Adam
VariableV2*"
_class
loc:@conv2d_2/kernel*
dtype0*
	container *
shape:??*
shared_name *(
_output_shapes
:??
?
conv2d_2/kernel/Adam/AssignAssignconv2d_2/kernel/Adam&conv2d_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*(
_output_shapes
:??
?
conv2d_2/kernel/Adam/readIdentityconv2d_2/kernel/Adam*
T0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      ?      *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
?
.conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
?
(conv2d_2/kernel/Adam_1/Initializer/zerosFill8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
conv2d_2/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@conv2d_2/kernel*
dtype0*
	container *
shape:??*(
_output_shapes
:??
?
conv2d_2/kernel/Adam_1/AssignAssignconv2d_2/kernel/Adam_1(conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*(
_output_shapes
:??
?
conv2d_2/kernel/Adam_1/readIdentityconv2d_2/kernel/Adam_1*
T0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
$conv2d_2/bias/Adam/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes	
:?
?
conv2d_2/bias/Adam
VariableV2* 
_class
loc:@conv2d_2/bias*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
conv2d_2/bias/Adam/AssignAssignconv2d_2/bias/Adam$conv2d_2/bias/Adam/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?

conv2d_2/bias/Adam/readIdentityconv2d_2/bias/Adam*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:?
?
&conv2d_2/bias/Adam_1/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes	
:?
?
conv2d_2/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:?*
shared_name * 
_class
loc:@conv2d_2/bias*
_output_shapes	
:?
?
conv2d_2/bias/Adam_1/AssignAssignconv2d_2/bias/Adam_1&conv2d_2/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:?
?
conv2d_2/bias/Adam_1/readIdentityconv2d_2/bias/Adam_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:?
?
2batch_normalization_3/gamma/Adam/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes	
:?
?
 batch_normalization_3/gamma/Adam
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
'batch_normalization_3/gamma/Adam/AssignAssign batch_normalization_3/gamma/Adam2batch_normalization_3/gamma/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:?
?
%batch_normalization_3/gamma/Adam/readIdentity batch_normalization_3/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:?
?
4batch_normalization_3/gamma/Adam_1/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes	
:?
?
"batch_normalization_3/gamma/Adam_1
VariableV2*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
)batch_normalization_3/gamma/Adam_1/AssignAssign"batch_normalization_3/gamma/Adam_14batch_normalization_3/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?
?
'batch_normalization_3/gamma/Adam_1/readIdentity"batch_normalization_3/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:?
?
1batch_normalization_3/beta/Adam/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_3/beta/Adam
VariableV2*
dtype0*
	container *
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:?
?
&batch_normalization_3/beta/Adam/AssignAssignbatch_normalization_3/beta/Adam1batch_normalization_3/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:?
?
$batch_normalization_3/beta/Adam/readIdentitybatch_normalization_3/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:?
?
3batch_normalization_3/beta/Adam_1/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes	
:?
?
!batch_normalization_3/beta/Adam_1
VariableV2*
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
	container *
_output_shapes	
:?
?
(batch_normalization_3/beta/Adam_1/AssignAssign!batch_normalization_3/beta/Adam_13batch_normalization_3/beta/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:?
?
&batch_normalization_3/beta/Adam_1/readIdentity!batch_normalization_3/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:?
?
6conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
?
,conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
?
&conv2d_3/kernel/Adam/Initializer/zerosFill6conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
conv2d_3/kernel/Adam
VariableV2*
shape:??*
shared_name *"
_class
loc:@conv2d_3/kernel*
dtype0*
	container *(
_output_shapes
:??
?
conv2d_3/kernel/Adam/AssignAssignconv2d_3/kernel/Adam&conv2d_3/kernel/Adam/Initializer/zeros*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*
use_locking(*(
_output_shapes
:??
?
conv2d_3/kernel/Adam/readIdentityconv2d_3/kernel/Adam*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
8conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
?
.conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
?
(conv2d_3/kernel/Adam_1/Initializer/zerosFill8conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
conv2d_3/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:??*
shared_name *"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
conv2d_3/kernel/Adam_1/AssignAssignconv2d_3/kernel/Adam_1(conv2d_3/kernel/Adam_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*
use_locking(*(
_output_shapes
:??
?
conv2d_3/kernel/Adam_1/readIdentityconv2d_3/kernel/Adam_1*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
$conv2d_3/bias/Adam/Initializer/zerosConst*
dtype0*
valueB?*    * 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
?
conv2d_3/bias/Adam
VariableV2*
shape:?*
shared_name * 
_class
loc:@conv2d_3/bias*
dtype0*
	container *
_output_shapes	
:?
?
conv2d_3/bias/Adam/AssignAssignconv2d_3/bias/Adam$conv2d_3/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?

conv2d_3/bias/Adam/readIdentityconv2d_3/bias/Adam*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
?
&conv2d_3/bias/Adam_1/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes	
:?
?
conv2d_3/bias/Adam_1
VariableV2*
shape:?*
shared_name * 
_class
loc:@conv2d_3/bias*
dtype0*
	container *
_output_shapes	
:?
?
conv2d_3/bias/Adam_1/AssignAssignconv2d_3/bias/Adam_1&conv2d_3/bias/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
conv2d_3/bias/Adam_1/readIdentityconv2d_3/bias/Adam_1*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
?
2batch_normalization_4/gamma/Adam/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
_output_shapes	
:?
?
 batch_normalization_4/gamma/Adam
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
'batch_normalization_4/gamma/Adam/AssignAssign batch_normalization_4/gamma/Adam2batch_normalization_4/gamma/Adam/Initializer/zeros*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
%batch_normalization_4/gamma/Adam/readIdentity batch_normalization_4/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes	
:?
?
4batch_normalization_4/gamma/Adam_1/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
_output_shapes	
:?
?
"batch_normalization_4/gamma/Adam_1
VariableV2*.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
)batch_normalization_4/gamma/Adam_1/AssignAssign"batch_normalization_4/gamma/Adam_14batch_normalization_4/gamma/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes	
:?
?
'batch_normalization_4/gamma/Adam_1/readIdentity"batch_normalization_4/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes	
:?
?
1batch_normalization_4/beta/Adam/Initializer/zerosConst*
dtype0*
valueB?*    *-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
batch_normalization_4/beta/Adam
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_4/beta*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
&batch_normalization_4/beta/Adam/AssignAssignbatch_normalization_4/beta/Adam1batch_normalization_4/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?
?
$batch_normalization_4/beta/Adam/readIdentitybatch_normalization_4/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
3batch_normalization_4/beta/Adam_1/Initializer/zerosConst*
dtype0*
valueB?*    *-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
!batch_normalization_4/beta/Adam_1
VariableV2*
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_4/beta*
dtype0*
	container *
_output_shapes	
:?
?
(batch_normalization_4/beta/Adam_1/AssignAssign!batch_normalization_4/beta/Adam_13batch_normalization_4/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?
?
&batch_normalization_4/beta/Adam_1/readIdentity!batch_normalization_4/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   ?   *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
?
)dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
?
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
dense/kernel/Adam
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape:
??* 
_output_shapes
:
??
?
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
??
?
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   ?   *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
?
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
?
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
dense/kernel/Adam_1
VariableV2*
shape:
??*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container * 
_output_shapes
:
??
?
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
??
?
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
!dense/bias/Adam/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:?
?
dense/bias/Adam
VariableV2*
_class
loc:@dense/bias*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
v
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
?
#dense/bias/Adam_1/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:?
?
dense/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
z
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
?
2batch_normalization_5/gamma/Adam/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
_output_shapes	
:?
?
 batch_normalization_5/gamma/Adam
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
'batch_normalization_5/gamma/Adam/AssignAssign batch_normalization_5/gamma/Adam2batch_normalization_5/gamma/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:?
?
%batch_normalization_5/gamma/Adam/readIdentity batch_normalization_5/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:?
?
4batch_normalization_5/gamma/Adam_1/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
_output_shapes	
:?
?
"batch_normalization_5/gamma/Adam_1
VariableV2*
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
	container *
_output_shapes	
:?
?
)batch_normalization_5/gamma/Adam_1/AssignAssign"batch_normalization_5/gamma/Adam_14batch_normalization_5/gamma/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:?
?
'batch_normalization_5/gamma/Adam_1/readIdentity"batch_normalization_5/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:?
?
1batch_normalization_5/beta/Adam/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_5/beta/Adam
VariableV2*
dtype0*
	container *
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:?
?
&batch_normalization_5/beta/Adam/AssignAssignbatch_normalization_5/beta/Adam1batch_normalization_5/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?
?
$batch_normalization_5/beta/Adam/readIdentitybatch_normalization_5/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:?
?
3batch_normalization_5/beta/Adam_1/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes	
:?
?
!batch_normalization_5/beta/Adam_1
VariableV2*-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
(batch_normalization_5/beta/Adam_1/AssignAssign!batch_normalization_5/beta/Adam_13batch_normalization_5/beta/Adam_1/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
&batch_normalization_5/beta/Adam_1/readIdentity!batch_normalization_5/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:?
?
5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"?      *!
_class
loc:@dense_1/kernel*
_output_shapes
:
?
+dense_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
dense_1/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:
??* 
_output_shapes
:
??
?
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
??
?
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"?      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
?
-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
dense_1/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:
??* 
_output_shapes
:
??
?
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
??
?
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
#dense_1/bias/Adam/Initializer/zerosConst*
dtype0*
valueB?*    *
_class
loc:@dense_1/bias*
_output_shapes	
:?
?
dense_1/bias/Adam
VariableV2*
shape:?*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container *
_output_shapes	
:?
?
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:?
|
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:?
?
%dense_1/bias/Adam_1/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:?
?
dense_1/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:?*
shared_name *
_class
loc:@dense_1/bias*
_output_shapes	
:?
?
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:?
?
2batch_normalization_6/gamma/Adam/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
_output_shapes	
:?
?
 batch_normalization_6/gamma/Adam
VariableV2*.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
	container *
shape:?*
shared_name *
_output_shapes	
:?
?
'batch_normalization_6/gamma/Adam/AssignAssign batch_normalization_6/gamma/Adam2batch_normalization_6/gamma/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:?
?
%batch_normalization_6/gamma/Adam/readIdentity batch_normalization_6/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:?
?
4batch_normalization_6/gamma/Adam_1/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
_output_shapes	
:?
?
"batch_normalization_6/gamma/Adam_1
VariableV2*
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
	container *
_output_shapes	
:?
?
)batch_normalization_6/gamma/Adam_1/AssignAssign"batch_normalization_6/gamma/Adam_14batch_normalization_6/gamma/Adam_1/Initializer/zeros*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
'batch_normalization_6/gamma/Adam_1/readIdentity"batch_normalization_6/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:?
?
1batch_normalization_6/beta/Adam/Initializer/zerosConst*
dtype0*
valueB?*    *-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
batch_normalization_6/beta/Adam
VariableV2*
dtype0*
	container *
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
&batch_normalization_6/beta/Adam/AssignAssignbatch_normalization_6/beta/Adam1batch_normalization_6/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:?
?
$batch_normalization_6/beta/Adam/readIdentitybatch_normalization_6/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
3batch_normalization_6/beta/Adam_1/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_6/beta*
dtype0*
_output_shapes	
:?
?
!batch_normalization_6/beta/Adam_1
VariableV2*
dtype0*
	container *
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
(batch_normalization_6/beta/Adam_1/AssignAssign!batch_normalization_6/beta/Adam_13batch_normalization_6/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:?
?
&batch_normalization_6/beta/Adam_1/readIdentity!batch_normalization_6/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:
?
+dense_2/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *!
_class
loc:@dense_2/kernel*
_output_shapes
: 
?
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
dense_2/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:
??* 
_output_shapes
:
??
?
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:
??
?
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"      *!
_class
loc:@dense_2/kernel*
_output_shapes
:
?
-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
?
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
dense_2/kernel/Adam_1
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:
??*
shared_name * 
_output_shapes
:
??
?
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:
??
?
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
#dense_2/bias/Adam/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:?
?
dense_2/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes	
:?
|
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:?
?
%dense_2/bias/Adam_1/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:?
?
dense_2/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:?*
shared_name *
_class
loc:@dense_2/bias*
_output_shapes	
:?
?
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes	
:?
?
dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:?
?
2batch_normalization_7/gamma/Adam/Initializer/zerosConst*
dtype0*
valueB?*    *.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes	
:?
?
 batch_normalization_7/gamma/Adam
VariableV2*
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
	container *
_output_shapes	
:?
?
'batch_normalization_7/gamma/Adam/AssignAssign batch_normalization_7/gamma/Adam2batch_normalization_7/gamma/Adam/Initializer/zeros*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
%batch_normalization_7/gamma/Adam/readIdentity batch_normalization_7/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes	
:?
?
4batch_normalization_7/gamma/Adam_1/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
_output_shapes	
:?
?
"batch_normalization_7/gamma/Adam_1
VariableV2*
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
	container *
_output_shapes	
:?
?
)batch_normalization_7/gamma/Adam_1/AssignAssign"batch_normalization_7/gamma/Adam_14batch_normalization_7/gamma/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes	
:?
?
'batch_normalization_7/gamma/Adam_1/readIdentity"batch_normalization_7/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes	
:?
?
1batch_normalization_7/beta/Adam/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_7/beta/Adam
VariableV2*
dtype0*
	container *
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
&batch_normalization_7/beta/Adam/AssignAssignbatch_normalization_7/beta/Adam1batch_normalization_7/beta/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
$batch_normalization_7/beta/Adam/readIdentitybatch_normalization_7/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
3batch_normalization_7/beta/Adam_1/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
_output_shapes	
:?
?
!batch_normalization_7/beta/Adam_1
VariableV2*
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
	container *
_output_shapes	
:?
?
(batch_normalization_7/beta/Adam_1/AssignAssign!batch_normalization_7/beta/Adam_13batch_normalization_7/beta/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
&batch_normalization_7/beta/Adam_1/readIdentity!batch_normalization_7/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"      *!
_class
loc:@dense_3/kernel*
_output_shapes
:
?
+dense_3/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
?
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
dense_3/kernel/Adam
VariableV2*!
_class
loc:@dense_3/kernel*
dtype0*
	container *
shape:
??*
shared_name * 
_output_shapes
:
??
?
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:
??
?
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:
?
-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
?
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
dense_3/kernel/Adam_1
VariableV2*!
_class
loc:@dense_3/kernel*
dtype0*
	container *
shape:
??*
shared_name * 
_output_shapes
:
??
?
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:
??
?
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
3dense_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:?*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
?
)dense_3/bias/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@dense_3/bias*
_output_shapes
: 
?
#dense_3/bias/Adam/Initializer/zerosFill3dense_3/bias/Adam/Initializer/zeros/shape_as_tensor)dense_3/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
dense_3/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense_3/bias*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
|
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB:?*
_class
loc:@dense_3/bias*
_output_shapes
:
?
+dense_3/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
: 
?
%dense_3/bias/Adam_1/Initializer/zerosFill5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_3/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
dense_3/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense_3/bias*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes	
:?
?
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
Bbatch_normalization_8/gamma/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:?*.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
_output_shapes
:
?
8batch_normalization_8/gamma/Adam/Initializer/zeros/ConstConst*
valueB
 *    *.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
_output_shapes
: 
?
2batch_normalization_8/gamma/Adam/Initializer/zerosFillBbatch_normalization_8/gamma/Adam/Initializer/zeros/shape_as_tensor8batch_normalization_8/gamma/Adam/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
 batch_normalization_8/gamma/Adam
VariableV2*
shape:?*
shared_name *.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
	container *
_output_shapes	
:?
?
'batch_normalization_8/gamma/Adam/AssignAssign batch_normalization_8/gamma/Adam2batch_normalization_8/gamma/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
%batch_normalization_8/gamma/Adam/readIdentity batch_normalization_8/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
Dbatch_normalization_8/gamma/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB:?*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes
:
?
:batch_normalization_8/gamma/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
_output_shapes
: 
?
4batch_normalization_8/gamma/Adam_1/Initializer/zerosFillDbatch_normalization_8/gamma/Adam_1/Initializer/zeros/shape_as_tensor:batch_normalization_8/gamma/Adam_1/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
"batch_normalization_8/gamma/Adam_1
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
)batch_normalization_8/gamma/Adam_1/AssignAssign"batch_normalization_8/gamma/Adam_14batch_normalization_8/gamma/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
'batch_normalization_8/gamma/Adam_1/readIdentity"batch_normalization_8/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
Abatch_normalization_8/beta/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:?*-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
_output_shapes
:
?
7batch_normalization_8/beta/Adam/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
_output_shapes
: 
?
1batch_normalization_8/beta/Adam/Initializer/zerosFillAbatch_normalization_8/beta/Adam/Initializer/zeros/shape_as_tensor7batch_normalization_8/beta/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
batch_normalization_8/beta/Adam
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
	container *
shape:?*
_output_shapes	
:?
?
&batch_normalization_8/beta/Adam/AssignAssignbatch_normalization_8/beta/Adam1batch_normalization_8/beta/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
$batch_normalization_8/beta/Adam/readIdentitybatch_normalization_8/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
Cbatch_normalization_8/beta/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:?*-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
_output_shapes
:
?
9batch_normalization_8/beta/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
_output_shapes
: 
?
3batch_normalization_8/beta/Adam_1/Initializer/zerosFillCbatch_normalization_8/beta/Adam_1/Initializer/zeros/shape_as_tensor9batch_normalization_8/beta/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
!batch_normalization_8/beta/Adam_1
VariableV2*
dtype0*
	container *
shape:?*
shared_name *-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
(batch_normalization_8/beta/Adam_1/AssignAssign!batch_normalization_8/beta/Adam_13batch_normalization_8/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
&batch_normalization_8/beta/Adam_1/readIdentity!batch_normalization_8/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
:
?
+dense_4/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
?
%dense_4/kernel/Adam/Initializer/zerosFill5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_4/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
dense_4/kernel/Adam
VariableV2*
shape:	?
*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0*
	container *
_output_shapes
:	?

?
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	?

?
dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
:
?
-dense_4/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
?
'dense_4/kernel/Adam_1/Initializer/zerosFill7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_4/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
dense_4/kernel/Adam_1
VariableV2*!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape:	?
*
shared_name *
_output_shapes
:	?

?
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes
:	?

?
dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
#dense_4/bias/Adam/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_4/bias*
dtype0*
_output_shapes
:

?
dense_4/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense_4/bias*
dtype0*
	container *
shape:
*
_output_shapes
:

?
dense_4/bias/Adam/AssignAssigndense_4/bias/Adam#dense_4/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
use_locking(*
_output_shapes
:

{
dense_4/bias/Adam/readIdentitydense_4/bias/Adam*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:

?
%dense_4/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB
*    *
_class
loc:@dense_4/bias*
_output_shapes
:

?
dense_4/bias/Adam_1
VariableV2*
_class
loc:@dense_4/bias*
dtype0*
	container *
shape:
*
shared_name *
_output_shapes
:

?
dense_4/bias/Adam_1/AssignAssigndense_4/bias/Adam_1%dense_4/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
:


dense_4/bias/Adam_1/readIdentitydense_4/bias/Adam_1*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:

W
Adam/learning_rateConst*
dtype0*
valueB
 *o?:*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w??*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w?+2*
dtype0*
_output_shapes
: 
?
/Adam/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@batch_normalization/gamma*
use_nesterov( *
use_locking( *
_output_shapes
:
?
.Adam/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2*
use_nesterov( *
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
#Adam/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
!Adam/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv2d/bias*
use_nesterov( *
_output_shapes
:@
?
1Adam/update_batch_normalization_1/gamma/ApplyAdam	ApplyAdambatch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_1/FusedBatchNorm_grad/tuple/control_dependency_1*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_1/gamma*
use_nesterov( *
_output_shapes
:@
?
0Adam/update_batch_normalization_1/beta/ApplyAdam	ApplyAdambatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_1/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*-
_class#
!loc:@batch_normalization_1/beta*
use_nesterov( *
use_locking( *
_output_shapes
:@
?
%Adam/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_1/kernel*
use_nesterov( *
use_locking( *'
_output_shapes
:@?
?
#Adam/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_1/bias*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
1Adam/update_batch_normalization_2/gamma/ApplyAdam	ApplyAdambatch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_2/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
0Adam/update_batch_normalization_2/beta/ApplyAdam	ApplyAdambatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_2/FusedBatchNorm_grad/tuple/control_dependency_2*
use_nesterov( *
use_locking( *
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes	
:?
?
%Adam/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_2/kernel*
use_nesterov( *(
_output_shapes
:??
?
#Adam/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d_2/bias*
use_nesterov( *
_output_shapes	
:?
?
1Adam/update_batch_normalization_3/gamma/ApplyAdam	ApplyAdambatch_normalization_3/gamma batch_normalization_3/gamma/Adam"batch_normalization_3/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_3/FusedBatchNorm_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:?
?
0Adam/update_batch_normalization_3/beta/ApplyAdam	ApplyAdambatch_normalization_3/betabatch_normalization_3/beta/Adam!batch_normalization_3/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_3/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*-
_class#
!loc:@batch_normalization_3/beta*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
%Adam/update_conv2d_3/kernel/ApplyAdam	ApplyAdamconv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*
use_nesterov( *(
_output_shapes
:??
?
#Adam/update_conv2d_3/bias/ApplyAdam	ApplyAdamconv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv2d_3/bias*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
1Adam/update_batch_normalization_4/gamma/ApplyAdam	ApplyAdambatch_normalization_4/gamma batch_normalization_4/gamma/Adam"batch_normalization_4/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_4/FusedBatchNorm_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes	
:?
?
0Adam/update_batch_normalization_4/beta/ApplyAdam	ApplyAdambatch_normalization_4/betabatch_normalization_4/beta/Adam!batch_normalization_4/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients/batch_normalization_4/FusedBatchNorm_grad/tuple/control_dependency_2*
use_nesterov( *
use_locking( *
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/kernel*
use_nesterov( *
use_locking( * 
_output_shapes
:
??
?
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes	
:?
?
1Adam/update_batch_normalization_5/gamma/ApplyAdam	ApplyAdambatch_normalization_5/gamma batch_normalization_5/gamma/Adam"batch_normalization_5/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonMgradients/batch_normalization_5/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_5/gamma*
use_nesterov( *
_output_shapes	
:?
?
0Adam/update_batch_normalization_5/beta/ApplyAdam	ApplyAdambatch_normalization_5/betabatch_normalization_5/beta/Adam!batch_normalization_5/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization_5/batchnorm/sub_grad/tuple/control_dependency*
use_nesterov( *
use_locking( *
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:?
?
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( *
use_locking( * 
_output_shapes
:
??
?
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_1/bias*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
1Adam/update_batch_normalization_6/gamma/ApplyAdam	ApplyAdambatch_normalization_6/gamma batch_normalization_6/gamma/Adam"batch_normalization_6/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonMgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:?
?
0Adam/update_batch_normalization_6/beta/ApplyAdam	ApplyAdambatch_normalization_6/betabatch_normalization_6/beta/Adam!batch_normalization_6/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_6/beta*
use_nesterov( *
_output_shapes	
:?
?
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_2/kernel*
use_nesterov( * 
_output_shapes
:
??
?
"Adam/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_2/bias*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
1Adam/update_batch_normalization_7/gamma/ApplyAdam	ApplyAdambatch_normalization_7/gamma batch_normalization_7/gamma/Adam"batch_normalization_7/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonMgradients/batch_normalization_7/batchnorm/mul_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
0Adam/update_batch_normalization_7/beta/ApplyAdam	ApplyAdambatch_normalization_7/betabatch_normalization_7/beta/Adam!batch_normalization_7/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization_7/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_7/beta*
use_nesterov( *
_output_shapes	
:?
?
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_3/kernel*
use_nesterov( * 
_output_shapes
:
??
?
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
1Adam/update_batch_normalization_8/gamma/ApplyAdam	ApplyAdambatch_normalization_8/gamma batch_normalization_8/gamma/Adam"batch_normalization_8/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonMgradients/batch_normalization_8/batchnorm/mul_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
use_nesterov( *
use_locking( *
_output_shapes	
:?
?
0Adam/update_batch_normalization_8/beta/ApplyAdam	ApplyAdambatch_normalization_8/betabatch_normalization_8/beta/Adam!batch_normalization_8/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization_8/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_8/beta*
use_nesterov( *
_output_shapes	
:?
?
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
"Adam/update_dense_4/bias/ApplyAdam	ApplyAdamdense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_4/bias*
use_nesterov( *
use_locking( *
_output_shapes
:

?
Adam/mulMulbeta1_power/read
Adam/beta1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam1^Adam/update_batch_normalization_1/beta/ApplyAdam2^Adam/update_batch_normalization_1/gamma/ApplyAdam1^Adam/update_batch_normalization_2/beta/ApplyAdam2^Adam/update_batch_normalization_2/gamma/ApplyAdam1^Adam/update_batch_normalization_3/beta/ApplyAdam2^Adam/update_batch_normalization_3/gamma/ApplyAdam1^Adam/update_batch_normalization_4/beta/ApplyAdam2^Adam/update_batch_normalization_4/gamma/ApplyAdam1^Adam/update_batch_normalization_5/beta/ApplyAdam2^Adam/update_batch_normalization_5/gamma/ApplyAdam1^Adam/update_batch_normalization_6/beta/ApplyAdam2^Adam/update_batch_normalization_6/gamma/ApplyAdam1^Adam/update_batch_normalization_7/beta/ApplyAdam2^Adam/update_batch_normalization_7/gamma/ApplyAdam1^Adam/update_batch_normalization_8/beta/ApplyAdam2^Adam/update_batch_normalization_8/gamma/ApplyAdam"^Adam/update_conv2d/bias/ApplyAdam$^Adam/update_conv2d/kernel/ApplyAdam$^Adam/update_conv2d_1/bias/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam$^Adam/update_conv2d_2/bias/ApplyAdam&^Adam/update_conv2d_2/kernel/ApplyAdam$^Adam/update_conv2d_3/bias/ApplyAdam&^Adam/update_conv2d_3/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
?
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam1^Adam/update_batch_normalization_1/beta/ApplyAdam2^Adam/update_batch_normalization_1/gamma/ApplyAdam1^Adam/update_batch_normalization_2/beta/ApplyAdam2^Adam/update_batch_normalization_2/gamma/ApplyAdam1^Adam/update_batch_normalization_3/beta/ApplyAdam2^Adam/update_batch_normalization_3/gamma/ApplyAdam1^Adam/update_batch_normalization_4/beta/ApplyAdam2^Adam/update_batch_normalization_4/gamma/ApplyAdam1^Adam/update_batch_normalization_5/beta/ApplyAdam2^Adam/update_batch_normalization_5/gamma/ApplyAdam1^Adam/update_batch_normalization_6/beta/ApplyAdam2^Adam/update_batch_normalization_6/gamma/ApplyAdam1^Adam/update_batch_normalization_7/beta/ApplyAdam2^Adam/update_batch_normalization_7/gamma/ApplyAdam1^Adam/update_batch_normalization_8/beta/ApplyAdam2^Adam/update_batch_normalization_8/gamma/ApplyAdam"^Adam/update_conv2d/bias/ApplyAdam$^Adam/update_conv2d/kernel/ApplyAdam$^Adam/update_conv2d_1/bias/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam$^Adam/update_conv2d_2/bias/ApplyAdam&^Adam/update_conv2d_2/kernel/ApplyAdam$^Adam/update_conv2d_3/bias/ApplyAdam&^Adam/update_conv2d_3/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
?
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
?
AdamNoOp^Adam/Assign^Adam/Assign_1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam1^Adam/update_batch_normalization_1/beta/ApplyAdam2^Adam/update_batch_normalization_1/gamma/ApplyAdam1^Adam/update_batch_normalization_2/beta/ApplyAdam2^Adam/update_batch_normalization_2/gamma/ApplyAdam1^Adam/update_batch_normalization_3/beta/ApplyAdam2^Adam/update_batch_normalization_3/gamma/ApplyAdam1^Adam/update_batch_normalization_4/beta/ApplyAdam2^Adam/update_batch_normalization_4/gamma/ApplyAdam1^Adam/update_batch_normalization_5/beta/ApplyAdam2^Adam/update_batch_normalization_5/gamma/ApplyAdam1^Adam/update_batch_normalization_6/beta/ApplyAdam2^Adam/update_batch_normalization_6/gamma/ApplyAdam1^Adam/update_batch_normalization_7/beta/ApplyAdam2^Adam/update_batch_normalization_7/gamma/ApplyAdam1^Adam/update_batch_normalization_8/beta/ApplyAdam2^Adam/update_batch_normalization_8/gamma/ApplyAdam"^Adam/update_conv2d/bias/ApplyAdam$^Adam/update_conv2d/kernel/ApplyAdam$^Adam/update_conv2d_1/bias/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam$^Adam/update_conv2d_2/bias/ApplyAdam&^Adam/update_conv2d_2/kernel/ApplyAdam$^Adam/update_conv2d_3/bias/ApplyAdam&^Adam/update_conv2d_3/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam
?#
initNoOp%^batch_normalization/beta/Adam/Assign'^batch_normalization/beta/Adam_1/Assign ^batch_normalization/beta/Assign&^batch_normalization/gamma/Adam/Assign(^batch_normalization/gamma/Adam_1/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign'^batch_normalization_1/beta/Adam/Assign)^batch_normalization_1/beta/Adam_1/Assign"^batch_normalization_1/beta/Assign(^batch_normalization_1/gamma/Adam/Assign*^batch_normalization_1/gamma/Adam_1/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign'^batch_normalization_2/beta/Adam/Assign)^batch_normalization_2/beta/Adam_1/Assign"^batch_normalization_2/beta/Assign(^batch_normalization_2/gamma/Adam/Assign*^batch_normalization_2/gamma/Adam_1/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign'^batch_normalization_3/beta/Adam/Assign)^batch_normalization_3/beta/Adam_1/Assign"^batch_normalization_3/beta/Assign(^batch_normalization_3/gamma/Adam/Assign*^batch_normalization_3/gamma/Adam_1/Assign#^batch_normalization_3/gamma/Assign)^batch_normalization_3/moving_mean/Assign-^batch_normalization_3/moving_variance/Assign'^batch_normalization_4/beta/Adam/Assign)^batch_normalization_4/beta/Adam_1/Assign"^batch_normalization_4/beta/Assign(^batch_normalization_4/gamma/Adam/Assign*^batch_normalization_4/gamma/Adam_1/Assign#^batch_normalization_4/gamma/Assign)^batch_normalization_4/moving_mean/Assign-^batch_normalization_4/moving_variance/Assign'^batch_normalization_5/beta/Adam/Assign)^batch_normalization_5/beta/Adam_1/Assign"^batch_normalization_5/beta/Assign(^batch_normalization_5/gamma/Adam/Assign*^batch_normalization_5/gamma/Adam_1/Assign#^batch_normalization_5/gamma/Assign)^batch_normalization_5/moving_mean/Assign-^batch_normalization_5/moving_variance/Assign'^batch_normalization_6/beta/Adam/Assign)^batch_normalization_6/beta/Adam_1/Assign"^batch_normalization_6/beta/Assign(^batch_normalization_6/gamma/Adam/Assign*^batch_normalization_6/gamma/Adam_1/Assign#^batch_normalization_6/gamma/Assign)^batch_normalization_6/moving_mean/Assign-^batch_normalization_6/moving_variance/Assign'^batch_normalization_7/beta/Adam/Assign)^batch_normalization_7/beta/Adam_1/Assign"^batch_normalization_7/beta/Assign(^batch_normalization_7/gamma/Adam/Assign*^batch_normalization_7/gamma/Adam_1/Assign#^batch_normalization_7/gamma/Assign)^batch_normalization_7/moving_mean/Assign-^batch_normalization_7/moving_variance/Assign'^batch_normalization_8/beta/Adam/Assign)^batch_normalization_8/beta/Adam_1/Assign"^batch_normalization_8/beta/Assign(^batch_normalization_8/gamma/Adam/Assign*^batch_normalization_8/gamma/Adam_1/Assign#^batch_normalization_8/gamma/Assign)^batch_normalization_8/moving_mean/Assign-^batch_normalization_8/moving_variance/Assign^beta1_power/Assign^beta2_power/Assign^conv2d/bias/Adam/Assign^conv2d/bias/Adam_1/Assign^conv2d/bias/Assign^conv2d/kernel/Adam/Assign^conv2d/kernel/Adam_1/Assign^conv2d/kernel/Assign^conv2d_1/bias/Adam/Assign^conv2d_1/bias/Adam_1/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Adam/Assign^conv2d_1/kernel/Adam_1/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Adam/Assign^conv2d_2/bias/Adam_1/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Adam/Assign^conv2d_2/kernel/Adam_1/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Adam/Assign^conv2d_3/bias/Adam_1/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Adam/Assign^conv2d_3/kernel/Adam_1/Assign^conv2d_3/kernel/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense/bias/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_1/bias/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_2/bias/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/kernel/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign^dense_3/bias/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/kernel/Assign^dense_4/bias/Adam/Assign^dense_4/bias/Adam_1/Assign^dense_4/bias/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^dense_4/kernel/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B??Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/beta/AdamB!batch_normalization_4/beta/Adam_1Bbatch_normalization_4/gammaB batch_normalization_4/gamma/AdamB"batch_normalization_4/gamma/Adam_1B!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/beta/AdamB!batch_normalization_5/beta/Adam_1Bbatch_normalization_5/gammaB batch_normalization_5/gamma/AdamB"batch_normalization_5/gamma/Adam_1B!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/beta/AdamB!batch_normalization_6/beta/Adam_1Bbatch_normalization_6/gammaB batch_normalization_6/gamma/AdamB"batch_normalization_6/gamma/Adam_1B!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/beta/AdamB!batch_normalization_7/beta/Adam_1Bbatch_normalization_7/gammaB batch_normalization_7/gamma/AdamB"batch_normalization_7/gamma/Adam_1B!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/beta/AdamB!batch_normalization_8/beta/Adam_1Bbatch_normalization_8/gammaB batch_normalization_8/gamma/AdamB"batch_normalization_8/gamma/Adam_1B!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1*
dtype0*
_output_shapes	
:?
?
save/SaveV2/shape_and_slicesConst*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1batch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1batch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/betabatch_normalization_3/beta/Adam!batch_normalization_3/beta/Adam_1batch_normalization_3/gamma batch_normalization_3/gamma/Adam"batch_normalization_3/gamma/Adam_1!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebatch_normalization_4/betabatch_normalization_4/beta/Adam!batch_normalization_4/beta/Adam_1batch_normalization_4/gamma batch_normalization_4/gamma/Adam"batch_normalization_4/gamma/Adam_1!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancebatch_normalization_5/betabatch_normalization_5/beta/Adam!batch_normalization_5/beta/Adam_1batch_normalization_5/gamma batch_normalization_5/gamma/Adam"batch_normalization_5/gamma/Adam_1!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancebatch_normalization_6/betabatch_normalization_6/beta/Adam!batch_normalization_6/beta/Adam_1batch_normalization_6/gamma batch_normalization_6/gamma/Adam"batch_normalization_6/gamma/Adam_1!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancebatch_normalization_7/betabatch_normalization_7/beta/Adam!batch_normalization_7/beta/Adam_1batch_normalization_7/gamma batch_normalization_7/gamma/Adam"batch_normalization_7/gamma/Adam_1!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancebatch_normalization_8/betabatch_normalization_8/beta/Adam!batch_normalization_8/beta/Adam_1batch_normalization_8/gamma batch_normalization_8/gamma/Adam"batch_normalization_8/gamma/Adam_1!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancebeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1conv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1conv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1*?
dtypes?
?2?
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B??Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/beta/AdamB!batch_normalization_4/beta/Adam_1Bbatch_normalization_4/gammaB batch_normalization_4/gamma/AdamB"batch_normalization_4/gamma/Adam_1B!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/beta/AdamB!batch_normalization_5/beta/Adam_1Bbatch_normalization_5/gammaB batch_normalization_5/gamma/AdamB"batch_normalization_5/gamma/Adam_1B!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/beta/AdamB!batch_normalization_6/beta/Adam_1Bbatch_normalization_6/gammaB batch_normalization_6/gamma/AdamB"batch_normalization_6/gamma/Adam_1B!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/beta/AdamB!batch_normalization_7/beta/Adam_1Bbatch_normalization_7/gammaB batch_normalization_7/gamma/AdamB"batch_normalization_7/gamma/Adam_1B!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/beta/AdamB!batch_normalization_8/beta/Adam_1Bbatch_normalization_8/gammaB batch_normalization_8/gamma/AdamB"batch_normalization_8/gamma/Adam_1B!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1*
dtype0*
_output_shapes	
:?
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:?
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
dtypes?
?2?*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
?
save/AssignAssignbatch_normalization/betasave/RestoreV2*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
:
?
save/Assign_1Assignbatch_normalization/beta/Adamsave/RestoreV2:1*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
:
?
save/Assign_2Assignbatch_normalization/beta/Adam_1save/RestoreV2:2*
validate_shape(*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
save/Assign_3Assignbatch_normalization/gammasave/RestoreV2:3*
validate_shape(*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
save/Assign_4Assignbatch_normalization/gamma/Adamsave/RestoreV2:4*
validate_shape(*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
save/Assign_5Assign batch_normalization/gamma/Adam_1save/RestoreV2:5*
validate_shape(*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
save/Assign_6Assignbatch_normalization/moving_meansave/RestoreV2:6*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:
?
save/Assign_7Assign#batch_normalization/moving_variancesave/RestoreV2:7*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:
?
save/Assign_8Assignbatch_normalization_1/betasave/RestoreV2:8*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:@
?
save/Assign_9Assignbatch_normalization_1/beta/Adamsave/RestoreV2:9*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@
?
save/Assign_10Assign!batch_normalization_1/beta/Adam_1save/RestoreV2:10*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@
?
save/Assign_11Assignbatch_normalization_1/gammasave/RestoreV2:11*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_12Assign batch_normalization_1/gamma/Adamsave/RestoreV2:12*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_13Assign"batch_normalization_1/gamma/Adam_1save/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@
?
save/Assign_14Assign!batch_normalization_1/moving_meansave/RestoreV2:14*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:@
?
save/Assign_15Assign%batch_normalization_1/moving_variancesave/RestoreV2:15*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:@
?
save/Assign_16Assignbatch_normalization_2/betasave/RestoreV2:16*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_17Assignbatch_normalization_2/beta/Adamsave/RestoreV2:17*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes	
:?
?
save/Assign_18Assign!batch_normalization_2/beta/Adam_1save/RestoreV2:18*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_19Assignbatch_normalization_2/gammasave/RestoreV2:19*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
save/Assign_20Assign batch_normalization_2/gamma/Adamsave/RestoreV2:20*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_21Assign"batch_normalization_2/gamma/Adam_1save/RestoreV2:21*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
save/Assign_22Assign!batch_normalization_2/moving_meansave/RestoreV2:22*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_23Assign%batch_normalization_2/moving_variancesave/RestoreV2:23*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_24Assignbatch_normalization_3/betasave/RestoreV2:24*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_25Assignbatch_normalization_3/beta/Adamsave/RestoreV2:25*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:?
?
save/Assign_26Assign!batch_normalization_3/beta/Adam_1save/RestoreV2:26*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_27Assignbatch_normalization_3/gammasave/RestoreV2:27*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_28Assign batch_normalization_3/gamma/Adamsave/RestoreV2:28*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_29Assign"batch_normalization_3/gamma/Adam_1save/RestoreV2:29*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_30Assign!batch_normalization_3/moving_meansave/RestoreV2:30*
validate_shape(*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:?
?
save/Assign_31Assign%batch_normalization_3/moving_variancesave/RestoreV2:31*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_32Assignbatch_normalization_4/betasave/RestoreV2:32*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_33Assignbatch_normalization_4/beta/Adamsave/RestoreV2:33*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_34Assign!batch_normalization_4/beta/Adam_1save/RestoreV2:34*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_35Assignbatch_normalization_4/gammasave/RestoreV2:35*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_36Assign batch_normalization_4/gamma/Adamsave/RestoreV2:36*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_37Assign"batch_normalization_4/gamma/Adam_1save/RestoreV2:37*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_38Assign!batch_normalization_4/moving_meansave/RestoreV2:38*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_39Assign%batch_normalization_4/moving_variancesave/RestoreV2:39*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_40Assignbatch_normalization_5/betasave/RestoreV2:40*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_41Assignbatch_normalization_5/beta/Adamsave/RestoreV2:41*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_42Assign!batch_normalization_5/beta/Adam_1save/RestoreV2:42*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_43Assignbatch_normalization_5/gammasave/RestoreV2:43*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_44Assign batch_normalization_5/gamma/Adamsave/RestoreV2:44*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_45Assign"batch_normalization_5/gamma/Adam_1save/RestoreV2:45*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_46Assign!batch_normalization_5/moving_meansave/RestoreV2:46*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_47Assign%batch_normalization_5/moving_variancesave/RestoreV2:47*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_48Assignbatch_normalization_6/betasave/RestoreV2:48*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_49Assignbatch_normalization_6/beta/Adamsave/RestoreV2:49*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_50Assign!batch_normalization_6/beta/Adam_1save/RestoreV2:50*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_51Assignbatch_normalization_6/gammasave/RestoreV2:51*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_52Assign batch_normalization_6/gamma/Adamsave/RestoreV2:52*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_53Assign"batch_normalization_6/gamma/Adam_1save/RestoreV2:53*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_54Assign!batch_normalization_6/moving_meansave/RestoreV2:54*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_55Assign%batch_normalization_6/moving_variancesave/RestoreV2:55*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes	
:?
?
save/Assign_56Assignbatch_normalization_7/betasave/RestoreV2:56*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_57Assignbatch_normalization_7/beta/Adamsave/RestoreV2:57*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_58Assign!batch_normalization_7/beta/Adam_1save/RestoreV2:58*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_59Assignbatch_normalization_7/gammasave/RestoreV2:59*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_60Assign batch_normalization_7/gamma/Adamsave/RestoreV2:60*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_61Assign"batch_normalization_7/gamma/Adam_1save/RestoreV2:61*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes	
:?
?
save/Assign_62Assign!batch_normalization_7/moving_meansave/RestoreV2:62*
validate_shape(*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:?
?
save/Assign_63Assign%batch_normalization_7/moving_variancesave/RestoreV2:63*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_64Assignbatch_normalization_8/betasave/RestoreV2:64*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_65Assignbatch_normalization_8/beta/Adamsave/RestoreV2:65*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_66Assign!batch_normalization_8/beta/Adam_1save/RestoreV2:66*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_67Assignbatch_normalization_8/gammasave/RestoreV2:67*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_68Assign batch_normalization_8/gamma/Adamsave/RestoreV2:68*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_69Assign"batch_normalization_8/gamma/Adam_1save/RestoreV2:69*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_70Assign!batch_normalization_8/moving_meansave/RestoreV2:70*
validate_shape(*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes	
:?
?
save/Assign_71Assign%batch_normalization_8/moving_variancesave/RestoreV2:71*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_72Assignbeta1_powersave/RestoreV2:72*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
?
save/Assign_73Assignbeta2_powersave/RestoreV2:73*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
?
save/Assign_74Assignconv2d/biassave/RestoreV2:74*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:@
?
save/Assign_75Assignconv2d/bias/Adamsave/RestoreV2:75*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
use_locking(*
_output_shapes
:@
?
save/Assign_76Assignconv2d/bias/Adam_1save/RestoreV2:76*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:@
?
save/Assign_77Assignconv2d/kernelsave/RestoreV2:77*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:@
?
save/Assign_78Assignconv2d/kernel/Adamsave/RestoreV2:78*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
save/Assign_79Assignconv2d/kernel/Adam_1save/RestoreV2:79*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:@
?
save/Assign_80Assignconv2d_1/biassave/RestoreV2:80*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes	
:?
?
save/Assign_81Assignconv2d_1/bias/Adamsave/RestoreV2:81*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_82Assignconv2d_1/bias/Adam_1save/RestoreV2:82*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_83Assignconv2d_1/kernelsave/RestoreV2:83*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*
use_locking(*'
_output_shapes
:@?
?
save/Assign_84Assignconv2d_1/kernel/Adamsave/RestoreV2:84*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*'
_output_shapes
:@?
?
save/Assign_85Assignconv2d_1/kernel/Adam_1save/RestoreV2:85*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*
use_locking(*'
_output_shapes
:@?
?
save/Assign_86Assignconv2d_2/biassave/RestoreV2:86*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_87Assignconv2d_2/bias/Adamsave/RestoreV2:87*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_88Assignconv2d_2/bias/Adam_1save/RestoreV2:88*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:?
?
save/Assign_89Assignconv2d_2/kernelsave/RestoreV2:89*
validate_shape(*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
save/Assign_90Assignconv2d_2/kernel/Adamsave/RestoreV2:90*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*(
_output_shapes
:??
?
save/Assign_91Assignconv2d_2/kernel/Adam_1save/RestoreV2:91*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*
use_locking(*(
_output_shapes
:??
?
save/Assign_92Assignconv2d_3/biassave/RestoreV2:92*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
?
save/Assign_93Assignconv2d_3/bias/Adamsave/RestoreV2:93*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_94Assignconv2d_3/bias/Adam_1save/RestoreV2:94*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
?
save/Assign_95Assignconv2d_3/kernelsave/RestoreV2:95*
validate_shape(*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
save/Assign_96Assignconv2d_3/kernel/Adamsave/RestoreV2:96*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*
use_locking(*(
_output_shapes
:??
?
save/Assign_97Assignconv2d_3/kernel/Adam_1save/RestoreV2:97*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*(
_output_shapes
:??
?
save/Assign_98Assign
dense/biassave/RestoreV2:98*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_99Assigndense/bias/Adamsave/RestoreV2:99*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
?
save/Assign_100Assigndense/bias/Adam_1save/RestoreV2:100*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
?
save/Assign_101Assigndense/kernelsave/RestoreV2:101*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_102Assigndense/kernel/Adamsave/RestoreV2:102*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
save/Assign_103Assigndense/kernel/Adam_1save/RestoreV2:103*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_104Assigndense_1/biassave/RestoreV2:104*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_105Assigndense_1/bias/Adamsave/RestoreV2:105*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:?
?
save/Assign_106Assigndense_1/bias/Adam_1save/RestoreV2:106*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_107Assigndense_1/kernelsave/RestoreV2:107*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_108Assigndense_1/kernel/Adamsave/RestoreV2:108*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_109Assigndense_1/kernel/Adam_1save/RestoreV2:109*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_110Assigndense_2/biassave/RestoreV2:110*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_111Assigndense_2/bias/Adamsave/RestoreV2:111*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_112Assigndense_2/bias/Adam_1save/RestoreV2:112*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:?
?
save/Assign_113Assigndense_2/kernelsave/RestoreV2:113*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_114Assigndense_2/kernel/Adamsave/RestoreV2:114*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_115Assigndense_2/kernel/Adam_1save/RestoreV2:115*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
save/Assign_116Assigndense_3/biassave/RestoreV2:116*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_117Assigndense_3/bias/Adamsave/RestoreV2:117*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save/Assign_118Assigndense_3/bias/Adam_1save/RestoreV2:118*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:?
?
save/Assign_119Assigndense_3/kernelsave/RestoreV2:119*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
save/Assign_120Assigndense_3/kernel/Adamsave/RestoreV2:120*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
??
?
save/Assign_121Assigndense_3/kernel/Adam_1save/RestoreV2:121*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_122Assigndense_4/biassave/RestoreV2:122*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
:

?
save/Assign_123Assigndense_4/bias/Adamsave/RestoreV2:123*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:

?
save/Assign_124Assigndense_4/bias/Adam_1save/RestoreV2:124*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:

?
save/Assign_125Assigndense_4/kernelsave/RestoreV2:125*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
save/Assign_126Assigndense_4/kernel/Adamsave/RestoreV2:126*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	?

?
save/Assign_127Assigndense_4/kernel/Adam_1save/RestoreV2:127*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes
:	?

?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
?
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_094f10e1e6ca41c3a12ab590e8d011b6/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
?
save_1/SaveV2/tensor_namesConst"/device:CPU:0*?
value?B??Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/beta/AdamB!batch_normalization_4/beta/Adam_1Bbatch_normalization_4/gammaB batch_normalization_4/gamma/AdamB"batch_normalization_4/gamma/Adam_1B!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/beta/AdamB!batch_normalization_5/beta/Adam_1Bbatch_normalization_5/gammaB batch_normalization_5/gamma/AdamB"batch_normalization_5/gamma/Adam_1B!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/beta/AdamB!batch_normalization_6/beta/Adam_1Bbatch_normalization_6/gammaB batch_normalization_6/gamma/AdamB"batch_normalization_6/gamma/Adam_1B!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/beta/AdamB!batch_normalization_7/beta/Adam_1Bbatch_normalization_7/gammaB batch_normalization_7/gamma/AdamB"batch_normalization_7/gamma/Adam_1B!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/beta/AdamB!batch_normalization_8/beta/Adam_1Bbatch_normalization_8/gammaB batch_normalization_8/gamma/AdamB"batch_normalization_8/gamma/Adam_1B!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1*
dtype0*
_output_shapes	
:?
?
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1batch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1batch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/betabatch_normalization_3/beta/Adam!batch_normalization_3/beta/Adam_1batch_normalization_3/gamma batch_normalization_3/gamma/Adam"batch_normalization_3/gamma/Adam_1!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebatch_normalization_4/betabatch_normalization_4/beta/Adam!batch_normalization_4/beta/Adam_1batch_normalization_4/gamma batch_normalization_4/gamma/Adam"batch_normalization_4/gamma/Adam_1!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancebatch_normalization_5/betabatch_normalization_5/beta/Adam!batch_normalization_5/beta/Adam_1batch_normalization_5/gamma batch_normalization_5/gamma/Adam"batch_normalization_5/gamma/Adam_1!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancebatch_normalization_6/betabatch_normalization_6/beta/Adam!batch_normalization_6/beta/Adam_1batch_normalization_6/gamma batch_normalization_6/gamma/Adam"batch_normalization_6/gamma/Adam_1!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancebatch_normalization_7/betabatch_normalization_7/beta/Adam!batch_normalization_7/beta/Adam_1batch_normalization_7/gamma batch_normalization_7/gamma/Adam"batch_normalization_7/gamma/Adam_1!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancebatch_normalization_8/betabatch_normalization_8/beta/Adam!batch_normalization_8/beta/Adam_1batch_normalization_8/gamma batch_normalization_8/gamma/Adam"batch_normalization_8/gamma/Adam_1!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancebeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1conv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1conv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1"/device:CPU:0*?
dtypes?
?2?
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B??Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/beta/AdamB!batch_normalization_4/beta/Adam_1Bbatch_normalization_4/gammaB batch_normalization_4/gamma/AdamB"batch_normalization_4/gamma/Adam_1B!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/beta/AdamB!batch_normalization_5/beta/Adam_1Bbatch_normalization_5/gammaB batch_normalization_5/gamma/AdamB"batch_normalization_5/gamma/Adam_1B!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/beta/AdamB!batch_normalization_6/beta/Adam_1Bbatch_normalization_6/gammaB batch_normalization_6/gamma/AdamB"batch_normalization_6/gamma/Adam_1B!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/beta/AdamB!batch_normalization_7/beta/Adam_1Bbatch_normalization_7/gammaB batch_normalization_7/gamma/AdamB"batch_normalization_7/gamma/Adam_1B!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/beta/AdamB!batch_normalization_8/beta/Adam_1Bbatch_normalization_8/gammaB batch_normalization_8/gamma/AdamB"batch_normalization_8/gamma/Adam_1B!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1*
_output_shapes	
:?
?
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*?
dtypes?
?2?*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
?
save_1/AssignAssignbatch_normalization/betasave_1/RestoreV2*
validate_shape(*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
?
save_1/Assign_1Assignbatch_normalization/beta/Adamsave_1/RestoreV2:1*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
use_locking(*
_output_shapes
:
?
save_1/Assign_2Assignbatch_normalization/beta/Adam_1save_1/RestoreV2:2*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
:
?
save_1/Assign_3Assignbatch_normalization/gammasave_1/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
:
?
save_1/Assign_4Assignbatch_normalization/gamma/Adamsave_1/RestoreV2:4*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(*
_output_shapes
:
?
save_1/Assign_5Assign batch_normalization/gamma/Adam_1save_1/RestoreV2:5*
validate_shape(*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
?
save_1/Assign_6Assignbatch_normalization/moving_meansave_1/RestoreV2:6*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
use_locking(*
_output_shapes
:
?
save_1/Assign_7Assign#batch_normalization/moving_variancesave_1/RestoreV2:7*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:
?
save_1/Assign_8Assignbatch_normalization_1/betasave_1/RestoreV2:8*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
use_locking(*
_output_shapes
:@
?
save_1/Assign_9Assignbatch_normalization_1/beta/Adamsave_1/RestoreV2:9*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:@
?
save_1/Assign_10Assign!batch_normalization_1/beta/Adam_1save_1/RestoreV2:10*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_11Assignbatch_normalization_1/gammasave_1/RestoreV2:11*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
use_locking(*
_output_shapes
:@
?
save_1/Assign_12Assign batch_normalization_1/gamma/Adamsave_1/RestoreV2:12*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:@
?
save_1/Assign_13Assign"batch_normalization_1/gamma/Adam_1save_1/RestoreV2:13*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:@
?
save_1/Assign_14Assign!batch_normalization_1/moving_meansave_1/RestoreV2:14*
validate_shape(*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:@
?
save_1/Assign_15Assign%batch_normalization_1/moving_variancesave_1/RestoreV2:15*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:@
?
save_1/Assign_16Assignbatch_normalization_2/betasave_1/RestoreV2:16*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_17Assignbatch_normalization_2/beta/Adamsave_1/RestoreV2:17*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes	
:?
?
save_1/Assign_18Assign!batch_normalization_2/beta/Adam_1save_1/RestoreV2:18*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_19Assignbatch_normalization_2/gammasave_1/RestoreV2:19*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
save_1/Assign_20Assign batch_normalization_2/gamma/Adamsave_1/RestoreV2:20*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes	
:?
?
save_1/Assign_21Assign"batch_normalization_2/gamma/Adam_1save_1/RestoreV2:21*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_22Assign!batch_normalization_2/moving_meansave_1/RestoreV2:22*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_23Assign%batch_normalization_2/moving_variancesave_1/RestoreV2:23*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_24Assignbatch_normalization_3/betasave_1/RestoreV2:24*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_25Assignbatch_normalization_3/beta/Adamsave_1/RestoreV2:25*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_26Assign!batch_normalization_3/beta/Adam_1save_1/RestoreV2:26*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_27Assignbatch_normalization_3/gammasave_1/RestoreV2:27*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_28Assign batch_normalization_3/gamma/Adamsave_1/RestoreV2:28*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_29Assign"batch_normalization_3/gamma/Adam_1save_1/RestoreV2:29*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_30Assign!batch_normalization_3/moving_meansave_1/RestoreV2:30*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_31Assign%batch_normalization_3/moving_variancesave_1/RestoreV2:31*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_32Assignbatch_normalization_4/betasave_1/RestoreV2:32*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_33Assignbatch_normalization_4/beta/Adamsave_1/RestoreV2:33*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_34Assign!batch_normalization_4/beta/Adam_1save_1/RestoreV2:34*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:?
?
save_1/Assign_35Assignbatch_normalization_4/gammasave_1/RestoreV2:35*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_36Assign batch_normalization_4/gamma/Adamsave_1/RestoreV2:36*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_37Assign"batch_normalization_4/gamma/Adam_1save_1/RestoreV2:37*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_38Assign!batch_normalization_4/moving_meansave_1/RestoreV2:38*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_39Assign%batch_normalization_4/moving_variancesave_1/RestoreV2:39*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_40Assignbatch_normalization_5/betasave_1/RestoreV2:40*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_41Assignbatch_normalization_5/beta/Adamsave_1/RestoreV2:41*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_42Assign!batch_normalization_5/beta/Adam_1save_1/RestoreV2:42*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:?
?
save_1/Assign_43Assignbatch_normalization_5/gammasave_1/RestoreV2:43*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:?
?
save_1/Assign_44Assign batch_normalization_5/gamma/Adamsave_1/RestoreV2:44*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_45Assign"batch_normalization_5/gamma/Adam_1save_1/RestoreV2:45*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_46Assign!batch_normalization_5/moving_meansave_1/RestoreV2:46*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_47Assign%batch_normalization_5/moving_variancesave_1/RestoreV2:47*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_48Assignbatch_normalization_6/betasave_1/RestoreV2:48*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
save_1/Assign_49Assignbatch_normalization_6/beta/Adamsave_1/RestoreV2:49*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_50Assign!batch_normalization_6/beta/Adam_1save_1/RestoreV2:50*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:?
?
save_1/Assign_51Assignbatch_normalization_6/gammasave_1/RestoreV2:51*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:?
?
save_1/Assign_52Assign batch_normalization_6/gamma/Adamsave_1/RestoreV2:52*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_53Assign"batch_normalization_6/gamma/Adam_1save_1/RestoreV2:53*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:?
?
save_1/Assign_54Assign!batch_normalization_6/moving_meansave_1/RestoreV2:54*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_55Assign%batch_normalization_6/moving_variancesave_1/RestoreV2:55*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_56Assignbatch_normalization_7/betasave_1/RestoreV2:56*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_57Assignbatch_normalization_7/beta/Adamsave_1/RestoreV2:57*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_58Assign!batch_normalization_7/beta/Adam_1save_1/RestoreV2:58*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:?
?
save_1/Assign_59Assignbatch_normalization_7/gammasave_1/RestoreV2:59*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_60Assign batch_normalization_7/gamma/Adamsave_1/RestoreV2:60*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_61Assign"batch_normalization_7/gamma/Adam_1save_1/RestoreV2:61*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_62Assign!batch_normalization_7/moving_meansave_1/RestoreV2:62*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_63Assign%batch_normalization_7/moving_variancesave_1/RestoreV2:63*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_64Assignbatch_normalization_8/betasave_1/RestoreV2:64*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_65Assignbatch_normalization_8/beta/Adamsave_1/RestoreV2:65*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes	
:?
?
save_1/Assign_66Assign!batch_normalization_8/beta/Adam_1save_1/RestoreV2:66*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_67Assignbatch_normalization_8/gammasave_1/RestoreV2:67*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
save_1/Assign_68Assign batch_normalization_8/gamma/Adamsave_1/RestoreV2:68*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
save_1/Assign_69Assign"batch_normalization_8/gamma/Adam_1save_1/RestoreV2:69*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_8/gamma*
_output_shapes	
:?
?
save_1/Assign_70Assign!batch_normalization_8/moving_meansave_1/RestoreV2:70*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_71Assign%batch_normalization_8/moving_variancesave_1/RestoreV2:71*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes	
:?
?
save_1/Assign_72Assignbeta1_powersave_1/RestoreV2:72*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
?
save_1/Assign_73Assignbeta2_powersave_1/RestoreV2:73*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
?
save_1/Assign_74Assignconv2d/biassave_1/RestoreV2:74*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
use_locking(*
_output_shapes
:@
?
save_1/Assign_75Assignconv2d/bias/Adamsave_1/RestoreV2:75*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
use_locking(*
_output_shapes
:@
?
save_1/Assign_76Assignconv2d/bias/Adam_1save_1/RestoreV2:76*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_77Assignconv2d/kernelsave_1/RestoreV2:77*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*
use_locking(*&
_output_shapes
:@
?
save_1/Assign_78Assignconv2d/kernel/Adamsave_1/RestoreV2:78*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:@
?
save_1/Assign_79Assignconv2d/kernel/Adam_1save_1/RestoreV2:79*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:@
?
save_1/Assign_80Assignconv2d_1/biassave_1/RestoreV2:80*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_81Assignconv2d_1/bias/Adamsave_1/RestoreV2:81*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_82Assignconv2d_1/bias/Adam_1save_1/RestoreV2:82*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes	
:?
?
save_1/Assign_83Assignconv2d_1/kernelsave_1/RestoreV2:83*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*'
_output_shapes
:@?
?
save_1/Assign_84Assignconv2d_1/kernel/Adamsave_1/RestoreV2:84*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*'
_output_shapes
:@?
?
save_1/Assign_85Assignconv2d_1/kernel/Adam_1save_1/RestoreV2:85*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*'
_output_shapes
:@?
?
save_1/Assign_86Assignconv2d_2/biassave_1/RestoreV2:86*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_87Assignconv2d_2/bias/Adamsave_1/RestoreV2:87*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_88Assignconv2d_2/bias/Adam_1save_1/RestoreV2:88*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_89Assignconv2d_2/kernelsave_1/RestoreV2:89*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*
use_locking(*(
_output_shapes
:??
?
save_1/Assign_90Assignconv2d_2/kernel/Adamsave_1/RestoreV2:90*
validate_shape(*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*(
_output_shapes
:??
?
save_1/Assign_91Assignconv2d_2/kernel/Adam_1save_1/RestoreV2:91*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*
use_locking(*(
_output_shapes
:??
?
save_1/Assign_92Assignconv2d_3/biassave_1/RestoreV2:92*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_93Assignconv2d_3/bias/Adamsave_1/RestoreV2:93*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_94Assignconv2d_3/bias/Adam_1save_1/RestoreV2:94*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:?
?
save_1/Assign_95Assignconv2d_3/kernelsave_1/RestoreV2:95*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_96Assignconv2d_3/kernel/Adamsave_1/RestoreV2:96*
validate_shape(*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
save_1/Assign_97Assignconv2d_3/kernel/Adam_1save_1/RestoreV2:97*
validate_shape(*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:??
?
save_1/Assign_98Assign
dense/biassave_1/RestoreV2:98*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
?
save_1/Assign_99Assigndense/bias/Adamsave_1/RestoreV2:99*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias*
_output_shapes	
:?
?
save_1/Assign_100Assigndense/bias/Adam_1save_1/RestoreV2:100*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_101Assigndense/kernelsave_1/RestoreV2:101*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_102Assigndense/kernel/Adamsave_1/RestoreV2:102*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
??
?
save_1/Assign_103Assigndense/kernel/Adam_1save_1/RestoreV2:103*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_104Assigndense_1/biassave_1/RestoreV2:104*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_105Assigndense_1/bias/Adamsave_1/RestoreV2:105*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_106Assigndense_1/bias/Adam_1save_1/RestoreV2:106*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_107Assigndense_1/kernelsave_1/RestoreV2:107*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
??
?
save_1/Assign_108Assigndense_1/kernel/Adamsave_1/RestoreV2:108*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_109Assigndense_1/kernel/Adam_1save_1/RestoreV2:109*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
??
?
save_1/Assign_110Assigndense_2/biassave_1/RestoreV2:110*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:?
?
save_1/Assign_111Assigndense_2/bias/Adamsave_1/RestoreV2:111*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:?
?
save_1/Assign_112Assigndense_2/bias/Adam_1save_1/RestoreV2:112*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_113Assigndense_2/kernelsave_1/RestoreV2:113*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
??
?
save_1/Assign_114Assigndense_2/kernel/Adamsave_1/RestoreV2:114*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
save_1/Assign_115Assigndense_2/kernel/Adam_1save_1/RestoreV2:115*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_116Assigndense_3/biassave_1/RestoreV2:116*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_117Assigndense_3/bias/Adamsave_1/RestoreV2:117*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_118Assigndense_3/bias/Adam_1save_1/RestoreV2:118*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_119Assigndense_3/kernelsave_1/RestoreV2:119*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_120Assigndense_3/kernel/Adamsave_1/RestoreV2:120*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
??
?
save_1/Assign_121Assigndense_3/kernel/Adam_1save_1/RestoreV2:121*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_122Assigndense_4/biassave_1/RestoreV2:122*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
use_locking(*
_output_shapes
:

?
save_1/Assign_123Assigndense_4/bias/Adamsave_1/RestoreV2:123*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
use_locking(*
_output_shapes
:

?
save_1/Assign_124Assigndense_4/bias/Adam_1save_1/RestoreV2:124*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
:

?
save_1/Assign_125Assigndense_4/kernelsave_1/RestoreV2:125*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes
:	?

?
save_1/Assign_126Assigndense_4/kernel/Adamsave_1/RestoreV2:126*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes
:	?

?
save_1/Assign_127Assigndense_4/kernel/Adam_1save_1/RestoreV2:127*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	?

?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_12^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"??
	variables֓ғ
?
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
?
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
?
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
?
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
?
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
?
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
?
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
?
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
?
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
?
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
?
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:025batch_normalization_2/moving_mean/Initializer/zeros:0
?
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:028batch_normalization_2/moving_variance/Initializer/ones:0
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
?
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:08
?
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:08
?
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:025batch_normalization_3/moving_mean/Initializer/zeros:0
?
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:028batch_normalization_3/moving_variance/Initializer/ones:0
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
?
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02.batch_normalization_4/gamma/Initializer/ones:08
?
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02.batch_normalization_4/beta/Initializer/zeros:08
?
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign(batch_normalization_4/moving_mean/read:025batch_normalization_4/moving_mean/Initializer/zeros:0
?
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign,batch_normalization_4/moving_variance/read:028batch_normalization_4/moving_variance/Initializer/ones:0
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
?
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02.batch_normalization_5/gamma/Initializer/ones:08
?
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02.batch_normalization_5/beta/Initializer/zeros:08
?
#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign(batch_normalization_5/moving_mean/read:025batch_normalization_5/moving_mean/Initializer/zeros:0
?
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign,batch_normalization_5/moving_variance/read:028batch_normalization_5/moving_variance/Initializer/ones:0
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
?
batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign"batch_normalization_6/gamma/read:02.batch_normalization_6/gamma/Initializer/ones:08
?
batch_normalization_6/beta:0!batch_normalization_6/beta/Assign!batch_normalization_6/beta/read:02.batch_normalization_6/beta/Initializer/zeros:08
?
#batch_normalization_6/moving_mean:0(batch_normalization_6/moving_mean/Assign(batch_normalization_6/moving_mean/read:025batch_normalization_6/moving_mean/Initializer/zeros:0
?
'batch_normalization_6/moving_variance:0,batch_normalization_6/moving_variance/Assign,batch_normalization_6/moving_variance/read:028batch_normalization_6/moving_variance/Initializer/ones:0
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
?
batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign"batch_normalization_7/gamma/read:02.batch_normalization_7/gamma/Initializer/ones:08
?
batch_normalization_7/beta:0!batch_normalization_7/beta/Assign!batch_normalization_7/beta/read:02.batch_normalization_7/beta/Initializer/zeros:08
?
#batch_normalization_7/moving_mean:0(batch_normalization_7/moving_mean/Assign(batch_normalization_7/moving_mean/read:025batch_normalization_7/moving_mean/Initializer/zeros:0
?
'batch_normalization_7/moving_variance:0,batch_normalization_7/moving_variance/Assign,batch_normalization_7/moving_variance/read:028batch_normalization_7/moving_variance/Initializer/ones:0
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08
?
batch_normalization_8/gamma:0"batch_normalization_8/gamma/Assign"batch_normalization_8/gamma/read:02.batch_normalization_8/gamma/Initializer/ones:08
?
batch_normalization_8/beta:0!batch_normalization_8/beta/Assign!batch_normalization_8/beta/read:02.batch_normalization_8/beta/Initializer/zeros:08
?
#batch_normalization_8/moving_mean:0(batch_normalization_8/moving_mean/Assign(batch_normalization_8/moving_mean/read:025batch_normalization_8/moving_mean/Initializer/zeros:0
?
'batch_normalization_8/moving_variance:0,batch_normalization_8/moving_variance/Assign,batch_normalization_8/moving_variance/read:028batch_normalization_8/moving_variance/Initializer/ones:0
o
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:08
^
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
?
 batch_normalization/gamma/Adam:0%batch_normalization/gamma/Adam/Assign%batch_normalization/gamma/Adam/read:022batch_normalization/gamma/Adam/Initializer/zeros:0
?
"batch_normalization/gamma/Adam_1:0'batch_normalization/gamma/Adam_1/Assign'batch_normalization/gamma/Adam_1/read:024batch_normalization/gamma/Adam_1/Initializer/zeros:0
?
batch_normalization/beta/Adam:0$batch_normalization/beta/Adam/Assign$batch_normalization/beta/Adam/read:021batch_normalization/beta/Adam/Initializer/zeros:0
?
!batch_normalization/beta/Adam_1:0&batch_normalization/beta/Adam_1/Assign&batch_normalization/beta/Adam_1/read:023batch_normalization/beta/Adam_1/Initializer/zeros:0
t
conv2d/kernel/Adam:0conv2d/kernel/Adam/Assignconv2d/kernel/Adam/read:02&conv2d/kernel/Adam/Initializer/zeros:0
|
conv2d/kernel/Adam_1:0conv2d/kernel/Adam_1/Assignconv2d/kernel/Adam_1/read:02(conv2d/kernel/Adam_1/Initializer/zeros:0
l
conv2d/bias/Adam:0conv2d/bias/Adam/Assignconv2d/bias/Adam/read:02$conv2d/bias/Adam/Initializer/zeros:0
t
conv2d/bias/Adam_1:0conv2d/bias/Adam_1/Assignconv2d/bias/Adam_1/read:02&conv2d/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_1/gamma/Adam:0'batch_normalization_1/gamma/Adam/Assign'batch_normalization_1/gamma/Adam/read:024batch_normalization_1/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_1/gamma/Adam_1:0)batch_normalization_1/gamma/Adam_1/Assign)batch_normalization_1/gamma/Adam_1/read:026batch_normalization_1/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_1/beta/Adam:0&batch_normalization_1/beta/Adam/Assign&batch_normalization_1/beta/Adam/read:023batch_normalization_1/beta/Adam/Initializer/zeros:0
?
#batch_normalization_1/beta/Adam_1:0(batch_normalization_1/beta/Adam_1/Assign(batch_normalization_1/beta/Adam_1/read:025batch_normalization_1/beta/Adam_1/Initializer/zeros:0
|
conv2d_1/kernel/Adam:0conv2d_1/kernel/Adam/Assignconv2d_1/kernel/Adam/read:02(conv2d_1/kernel/Adam/Initializer/zeros:0
?
conv2d_1/kernel/Adam_1:0conv2d_1/kernel/Adam_1/Assignconv2d_1/kernel/Adam_1/read:02*conv2d_1/kernel/Adam_1/Initializer/zeros:0
t
conv2d_1/bias/Adam:0conv2d_1/bias/Adam/Assignconv2d_1/bias/Adam/read:02&conv2d_1/bias/Adam/Initializer/zeros:0
|
conv2d_1/bias/Adam_1:0conv2d_1/bias/Adam_1/Assignconv2d_1/bias/Adam_1/read:02(conv2d_1/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_2/gamma/Adam:0'batch_normalization_2/gamma/Adam/Assign'batch_normalization_2/gamma/Adam/read:024batch_normalization_2/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_2/gamma/Adam_1:0)batch_normalization_2/gamma/Adam_1/Assign)batch_normalization_2/gamma/Adam_1/read:026batch_normalization_2/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_2/beta/Adam:0&batch_normalization_2/beta/Adam/Assign&batch_normalization_2/beta/Adam/read:023batch_normalization_2/beta/Adam/Initializer/zeros:0
?
#batch_normalization_2/beta/Adam_1:0(batch_normalization_2/beta/Adam_1/Assign(batch_normalization_2/beta/Adam_1/read:025batch_normalization_2/beta/Adam_1/Initializer/zeros:0
|
conv2d_2/kernel/Adam:0conv2d_2/kernel/Adam/Assignconv2d_2/kernel/Adam/read:02(conv2d_2/kernel/Adam/Initializer/zeros:0
?
conv2d_2/kernel/Adam_1:0conv2d_2/kernel/Adam_1/Assignconv2d_2/kernel/Adam_1/read:02*conv2d_2/kernel/Adam_1/Initializer/zeros:0
t
conv2d_2/bias/Adam:0conv2d_2/bias/Adam/Assignconv2d_2/bias/Adam/read:02&conv2d_2/bias/Adam/Initializer/zeros:0
|
conv2d_2/bias/Adam_1:0conv2d_2/bias/Adam_1/Assignconv2d_2/bias/Adam_1/read:02(conv2d_2/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_3/gamma/Adam:0'batch_normalization_3/gamma/Adam/Assign'batch_normalization_3/gamma/Adam/read:024batch_normalization_3/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_3/gamma/Adam_1:0)batch_normalization_3/gamma/Adam_1/Assign)batch_normalization_3/gamma/Adam_1/read:026batch_normalization_3/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_3/beta/Adam:0&batch_normalization_3/beta/Adam/Assign&batch_normalization_3/beta/Adam/read:023batch_normalization_3/beta/Adam/Initializer/zeros:0
?
#batch_normalization_3/beta/Adam_1:0(batch_normalization_3/beta/Adam_1/Assign(batch_normalization_3/beta/Adam_1/read:025batch_normalization_3/beta/Adam_1/Initializer/zeros:0
|
conv2d_3/kernel/Adam:0conv2d_3/kernel/Adam/Assignconv2d_3/kernel/Adam/read:02(conv2d_3/kernel/Adam/Initializer/zeros:0
?
conv2d_3/kernel/Adam_1:0conv2d_3/kernel/Adam_1/Assignconv2d_3/kernel/Adam_1/read:02*conv2d_3/kernel/Adam_1/Initializer/zeros:0
t
conv2d_3/bias/Adam:0conv2d_3/bias/Adam/Assignconv2d_3/bias/Adam/read:02&conv2d_3/bias/Adam/Initializer/zeros:0
|
conv2d_3/bias/Adam_1:0conv2d_3/bias/Adam_1/Assignconv2d_3/bias/Adam_1/read:02(conv2d_3/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_4/gamma/Adam:0'batch_normalization_4/gamma/Adam/Assign'batch_normalization_4/gamma/Adam/read:024batch_normalization_4/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_4/gamma/Adam_1:0)batch_normalization_4/gamma/Adam_1/Assign)batch_normalization_4/gamma/Adam_1/read:026batch_normalization_4/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_4/beta/Adam:0&batch_normalization_4/beta/Adam/Assign&batch_normalization_4/beta/Adam/read:023batch_normalization_4/beta/Adam/Initializer/zeros:0
?
#batch_normalization_4/beta/Adam_1:0(batch_normalization_4/beta/Adam_1/Assign(batch_normalization_4/beta/Adam_1/read:025batch_normalization_4/beta/Adam_1/Initializer/zeros:0
p
dense/kernel/Adam:0dense/kernel/Adam/Assigndense/kernel/Adam/read:02%dense/kernel/Adam/Initializer/zeros:0
x
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assigndense/kernel/Adam_1/read:02'dense/kernel/Adam_1/Initializer/zeros:0
h
dense/bias/Adam:0dense/bias/Adam/Assigndense/bias/Adam/read:02#dense/bias/Adam/Initializer/zeros:0
p
dense/bias/Adam_1:0dense/bias/Adam_1/Assigndense/bias/Adam_1/read:02%dense/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_5/gamma/Adam:0'batch_normalization_5/gamma/Adam/Assign'batch_normalization_5/gamma/Adam/read:024batch_normalization_5/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_5/gamma/Adam_1:0)batch_normalization_5/gamma/Adam_1/Assign)batch_normalization_5/gamma/Adam_1/read:026batch_normalization_5/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_5/beta/Adam:0&batch_normalization_5/beta/Adam/Assign&batch_normalization_5/beta/Adam/read:023batch_normalization_5/beta/Adam/Initializer/zeros:0
?
#batch_normalization_5/beta/Adam_1:0(batch_normalization_5/beta/Adam_1/Assign(batch_normalization_5/beta/Adam_1/read:025batch_normalization_5/beta/Adam_1/Initializer/zeros:0
x
dense_1/kernel/Adam:0dense_1/kernel/Adam/Assigndense_1/kernel/Adam/read:02'dense_1/kernel/Adam/Initializer/zeros:0
?
dense_1/kernel/Adam_1:0dense_1/kernel/Adam_1/Assigndense_1/kernel/Adam_1/read:02)dense_1/kernel/Adam_1/Initializer/zeros:0
p
dense_1/bias/Adam:0dense_1/bias/Adam/Assigndense_1/bias/Adam/read:02%dense_1/bias/Adam/Initializer/zeros:0
x
dense_1/bias/Adam_1:0dense_1/bias/Adam_1/Assigndense_1/bias/Adam_1/read:02'dense_1/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_6/gamma/Adam:0'batch_normalization_6/gamma/Adam/Assign'batch_normalization_6/gamma/Adam/read:024batch_normalization_6/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_6/gamma/Adam_1:0)batch_normalization_6/gamma/Adam_1/Assign)batch_normalization_6/gamma/Adam_1/read:026batch_normalization_6/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_6/beta/Adam:0&batch_normalization_6/beta/Adam/Assign&batch_normalization_6/beta/Adam/read:023batch_normalization_6/beta/Adam/Initializer/zeros:0
?
#batch_normalization_6/beta/Adam_1:0(batch_normalization_6/beta/Adam_1/Assign(batch_normalization_6/beta/Adam_1/read:025batch_normalization_6/beta/Adam_1/Initializer/zeros:0
x
dense_2/kernel/Adam:0dense_2/kernel/Adam/Assigndense_2/kernel/Adam/read:02'dense_2/kernel/Adam/Initializer/zeros:0
?
dense_2/kernel/Adam_1:0dense_2/kernel/Adam_1/Assigndense_2/kernel/Adam_1/read:02)dense_2/kernel/Adam_1/Initializer/zeros:0
p
dense_2/bias/Adam:0dense_2/bias/Adam/Assigndense_2/bias/Adam/read:02%dense_2/bias/Adam/Initializer/zeros:0
x
dense_2/bias/Adam_1:0dense_2/bias/Adam_1/Assigndense_2/bias/Adam_1/read:02'dense_2/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_7/gamma/Adam:0'batch_normalization_7/gamma/Adam/Assign'batch_normalization_7/gamma/Adam/read:024batch_normalization_7/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_7/gamma/Adam_1:0)batch_normalization_7/gamma/Adam_1/Assign)batch_normalization_7/gamma/Adam_1/read:026batch_normalization_7/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_7/beta/Adam:0&batch_normalization_7/beta/Adam/Assign&batch_normalization_7/beta/Adam/read:023batch_normalization_7/beta/Adam/Initializer/zeros:0
?
#batch_normalization_7/beta/Adam_1:0(batch_normalization_7/beta/Adam_1/Assign(batch_normalization_7/beta/Adam_1/read:025batch_normalization_7/beta/Adam_1/Initializer/zeros:0
x
dense_3/kernel/Adam:0dense_3/kernel/Adam/Assigndense_3/kernel/Adam/read:02'dense_3/kernel/Adam/Initializer/zeros:0
?
dense_3/kernel/Adam_1:0dense_3/kernel/Adam_1/Assigndense_3/kernel/Adam_1/read:02)dense_3/kernel/Adam_1/Initializer/zeros:0
p
dense_3/bias/Adam:0dense_3/bias/Adam/Assigndense_3/bias/Adam/read:02%dense_3/bias/Adam/Initializer/zeros:0
x
dense_3/bias/Adam_1:0dense_3/bias/Adam_1/Assigndense_3/bias/Adam_1/read:02'dense_3/bias/Adam_1/Initializer/zeros:0
?
"batch_normalization_8/gamma/Adam:0'batch_normalization_8/gamma/Adam/Assign'batch_normalization_8/gamma/Adam/read:024batch_normalization_8/gamma/Adam/Initializer/zeros:0
?
$batch_normalization_8/gamma/Adam_1:0)batch_normalization_8/gamma/Adam_1/Assign)batch_normalization_8/gamma/Adam_1/read:026batch_normalization_8/gamma/Adam_1/Initializer/zeros:0
?
!batch_normalization_8/beta/Adam:0&batch_normalization_8/beta/Adam/Assign&batch_normalization_8/beta/Adam/read:023batch_normalization_8/beta/Adam/Initializer/zeros:0
?
#batch_normalization_8/beta/Adam_1:0(batch_normalization_8/beta/Adam_1/Assign(batch_normalization_8/beta/Adam_1/read:025batch_normalization_8/beta/Adam_1/Initializer/zeros:0
x
dense_4/kernel/Adam:0dense_4/kernel/Adam/Assigndense_4/kernel/Adam/read:02'dense_4/kernel/Adam/Initializer/zeros:0
?
dense_4/kernel/Adam_1:0dense_4/kernel/Adam_1/Assigndense_4/kernel/Adam_1/read:02)dense_4/kernel/Adam_1/Initializer/zeros:0
p
dense_4/bias/Adam:0dense_4/bias/Adam/Assigndense_4/bias/Adam/read:02%dense_4/bias/Adam/Initializer/zeros:0
x
dense_4/bias/Adam_1:0dense_4/bias/Adam_1/Assigndense_4/bias/Adam_1/read:02'dense_4/bias/Adam_1/Initializer/zeros:0"?$
trainable_variables?$?$
?
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
?
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
?
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
?
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
?
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
?
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
?
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:08
?
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
?
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02.batch_normalization_4/gamma/Initializer/ones:08
?
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02.batch_normalization_4/beta/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
?
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02.batch_normalization_5/gamma/Initializer/ones:08
?
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02.batch_normalization_5/beta/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
?
batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign"batch_normalization_6/gamma/read:02.batch_normalization_6/gamma/Initializer/ones:08
?
batch_normalization_6/beta:0!batch_normalization_6/beta/Assign!batch_normalization_6/beta/read:02.batch_normalization_6/beta/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
?
batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign"batch_normalization_7/gamma/read:02.batch_normalization_7/gamma/Initializer/ones:08
?
batch_normalization_7/beta:0!batch_normalization_7/beta/Assign!batch_normalization_7/beta/read:02.batch_normalization_7/beta/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08
?
batch_normalization_8/gamma:0"batch_normalization_8/gamma/Assign"batch_normalization_8/gamma/read:02.batch_normalization_8/gamma/Initializer/ones:08
?
batch_normalization_8/beta:0!batch_normalization_8/beta/Assign!batch_normalization_8/beta/read:02.batch_normalization_8/beta/Initializer/zeros:08
o
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:08
^
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:08"
train_op

Adam*?
serving_default?
3
images:0'
images:0?????????  
!
drop:0
dropout_probs:02
dense1:0&
dense_1/Relu:0??????????2
dense3:0&
dense_3/Relu:0??????????tensorflow/serving/predict