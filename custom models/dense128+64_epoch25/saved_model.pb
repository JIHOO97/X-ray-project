??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??

?
conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_51/kernel
}
$conv2d_51/kernel/Read/ReadVariableOpReadVariableOpconv2d_51/kernel*&
_output_shapes
: *
dtype0
t
conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_51/bias
m
"conv2d_51/bias/Read/ReadVariableOpReadVariableOpconv2d_51/bias*
_output_shapes
: *
dtype0
?
conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
: *
dtype0
?
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
: *
dtype0
|
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?* 
shared_namedense_38/kernel
u
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel* 
_output_shapes
:
?H?*
dtype0
s
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_38/bias
l
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes	
:?*
dtype0
|
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_39/kernel
u
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel* 
_output_shapes
:
??*
dtype0
s
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_39/bias
l
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes	
:?*
dtype0
{
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@* 
shared_namedense_40/kernel
t
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes
:	?@*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:@*
dtype0
z
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

:@*
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_51/kernel/m
?
+Adam/conv2d_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_51/bias/m
{
)Adam/conv2d_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_52/kernel/m
?
+Adam/conv2d_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_52/bias/m
{
)Adam/conv2d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_53/kernel/m
?
+Adam/conv2d_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_53/bias/m
{
)Adam/conv2d_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?*'
shared_nameAdam/dense_38/kernel/m
?
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m* 
_output_shapes
:
?H?*
dtype0
?
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_38/bias/m
z
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_39/kernel/m
?
*Adam/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_39/bias/m
z
(Adam/dense_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_40/kernel/m
?
*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_41/kernel/m
?
*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_51/kernel/v
?
+Adam/conv2d_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_51/bias/v
{
)Adam/conv2d_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_52/kernel/v
?
+Adam/conv2d_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_52/bias/v
{
)Adam/conv2d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_53/kernel/v
?
+Adam/conv2d_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_53/bias/v
{
)Adam/conv2d_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?*'
shared_nameAdam/dense_38/kernel/v
?
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v* 
_output_shapes
:
?H?*
dtype0
?
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_38/bias/v
z
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_39/kernel/v
?
*Adam/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_39/bias/v
z
(Adam/dense_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_40/kernel/v
?
*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_41/kernel/v
?
*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?R
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Q
value?QB?Q B?Q
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
R
"regularization_losses
#	variables
$trainable_variables
%	keras_api
h

&kernel
'bias
(regularization_losses
)	variables
*trainable_variables
+	keras_api
R
,regularization_losses
-	variables
.trainable_variables
/	keras_api
R
0regularization_losses
1	variables
2trainable_variables
3	keras_api
h

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
h

:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
h

@kernel
Abias
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
h

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
?
Liter

Mbeta_1

Nbeta_2
	Odecay
Plearning_ratem?m?m?m?&m?'m?4m?5m?:m?;m?@m?Am?Fm?Gm?v?v?v?v?&v?'v?4v?5v?:v?;v?@v?Av?Fv?Gv?
 
f
0
1
2
3
&4
'5
46
57
:8
;9
@10
A11
F12
G13
f
0
1
2
3
&4
'5
46
57
:8
;9
@10
A11
F12
G13
?
regularization_losses

Qlayers
Rlayer_regularization_losses
	variables
Snon_trainable_variables
trainable_variables
Tmetrics
Ulayer_metrics
 
\Z
VARIABLE_VALUEconv2d_51/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_51/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

Vlayers
Wlayer_regularization_losses
	variables
Xnon_trainable_variables
trainable_variables
Ymetrics
Zlayer_metrics
 
 
 
?
regularization_losses

[layers
\layer_regularization_losses
	variables
]non_trainable_variables
trainable_variables
^metrics
_layer_metrics
\Z
VARIABLE_VALUEconv2d_52/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_52/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

`layers
alayer_regularization_losses
	variables
bnon_trainable_variables
 trainable_variables
cmetrics
dlayer_metrics
 
 
 
?
"regularization_losses

elayers
flayer_regularization_losses
#	variables
gnon_trainable_variables
$trainable_variables
hmetrics
ilayer_metrics
\Z
VARIABLE_VALUEconv2d_53/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_53/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

&0
'1

&0
'1
?
(regularization_losses

jlayers
klayer_regularization_losses
)	variables
lnon_trainable_variables
*trainable_variables
mmetrics
nlayer_metrics
 
 
 
?
,regularization_losses

olayers
player_regularization_losses
-	variables
qnon_trainable_variables
.trainable_variables
rmetrics
slayer_metrics
 
 
 
?
0regularization_losses

tlayers
ulayer_regularization_losses
1	variables
vnon_trainable_variables
2trainable_variables
wmetrics
xlayer_metrics
[Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_38/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
?
6regularization_losses

ylayers
zlayer_regularization_losses
7	variables
{non_trainable_variables
8trainable_variables
|metrics
}layer_metrics
[Y
VARIABLE_VALUEdense_39/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_39/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
?
<regularization_losses

~layers
layer_regularization_losses
=	variables
?non_trainable_variables
>trainable_variables
?metrics
?layer_metrics
[Y
VARIABLE_VALUEdense_40/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_40/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

@0
A1

@0
A1
?
Bregularization_losses
?layers
 ?layer_regularization_losses
C	variables
?non_trainable_variables
Dtrainable_variables
?metrics
?layer_metrics
[Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_41/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1

F0
G1
?
Hregularization_losses
?layers
 ?layer_regularization_losses
I	variables
?non_trainable_variables
Jtrainable_variables
?metrics
?layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
N
0
1
2
3
4
5
6
7
	8

9
10
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_51/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_51/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_52/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_52/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_53/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_53/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_39/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_39/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_40/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_51/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_51/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_52/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_52/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_53/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_53/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_39/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_39/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_40/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_18Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_18conv2d_51/kernelconv2d_51/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_46499
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_51/kernel/Read/ReadVariableOp"conv2d_51/bias/Read/ReadVariableOp$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_51/kernel/m/Read/ReadVariableOp)Adam/conv2d_51/bias/m/Read/ReadVariableOp+Adam/conv2d_52/kernel/m/Read/ReadVariableOp)Adam/conv2d_52/bias/m/Read/ReadVariableOp+Adam/conv2d_53/kernel/m/Read/ReadVariableOp)Adam/conv2d_53/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp*Adam/dense_39/kernel/m/Read/ReadVariableOp(Adam/dense_39/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp+Adam/conv2d_51/kernel/v/Read/ReadVariableOp)Adam/conv2d_51/bias/v/Read/ReadVariableOp+Adam/conv2d_52/kernel/v/Read/ReadVariableOp)Adam/conv2d_52/bias/v/Read/ReadVariableOp+Adam/conv2d_53/kernel/v/Read/ReadVariableOp)Adam/conv2d_53/bias/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp*Adam/dense_39/kernel/v/Read/ReadVariableOp(Adam/dense_39/bias/v/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_47068
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_51/kernelconv2d_51/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_51/kernel/mAdam/conv2d_51/bias/mAdam/conv2d_52/kernel/mAdam/conv2d_52/bias/mAdam/conv2d_53/kernel/mAdam/conv2d_53/bias/mAdam/dense_38/kernel/mAdam/dense_38/bias/mAdam/dense_39/kernel/mAdam/dense_39/bias/mAdam/dense_40/kernel/mAdam/dense_40/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/mAdam/conv2d_51/kernel/vAdam/conv2d_51/bias/vAdam/conv2d_52/kernel/vAdam/conv2d_52/bias/vAdam/conv2d_53/kernel/vAdam/conv2d_53/bias/vAdam/dense_38/kernel/vAdam/dense_38/bias/vAdam/dense_39/kernel/vAdam/dense_39/bias/vAdam/dense_40/kernel/vAdam/dense_40/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_47231??	
?
?
D__inference_conv2d_51_layer_call_and_return_conditional_losses_45973

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_46006

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????HH :W S
/
_output_shapes
:?????????HH 
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_53_layer_call_fn_46791

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_460292
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????"" :W S
/
_output_shapes
:?????????"" 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_52_layer_call_fn_46730

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_459962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????HH 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_45920

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_46796

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_flatten_17_layer_call_fn_46806

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_17_layer_call_and_return_conditional_losses_460372
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_dense_39_layer_call_fn_46841

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_39_layer_call_and_return_conditional_losses_460672
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_51_layer_call_fn_46690

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_459732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_46756

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_46029

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????"" :W S
/
_output_shapes
:?????????"" 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_46019

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????"" 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????$$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$$ 
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_52_layer_call_fn_46751

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_460062
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????HH :W S
/
_output_shapes
:?????????HH 
 
_user_specified_nameinputs
?
?
-__inference_sequential_17_layer_call_fn_46139
input_18!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:
?H?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:@

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_461082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_18
?
?
#__inference_signature_wrapper_46499
input_18!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:
?H?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:@

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_458892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_18
?
?
-__inference_sequential_17_layer_call_fn_46565

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:
?H?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:@

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_463082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?N
?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46623

inputsB
(conv2d_51_conv2d_readvariableop_resource: 7
)conv2d_51_biasadd_readvariableop_resource: B
(conv2d_52_conv2d_readvariableop_resource:  7
)conv2d_52_biasadd_readvariableop_resource: B
(conv2d_53_conv2d_readvariableop_resource:  7
)conv2d_53_biasadd_readvariableop_resource: ;
'dense_38_matmul_readvariableop_resource:
?H?7
(dense_38_biasadd_readvariableop_resource:	?;
'dense_39_matmul_readvariableop_resource:
??7
(dense_39_biasadd_readvariableop_resource:	?:
'dense_40_matmul_readvariableop_resource:	?@6
(dense_40_biasadd_readvariableop_resource:@9
'dense_41_matmul_readvariableop_resource:@6
(dense_41_biasadd_readvariableop_resource:
identity?? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_51/Conv2D/ReadVariableOp?
conv2d_51/Conv2DConv2Dinputs'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_51/Conv2D?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_51/BiasAdd/ReadVariableOp?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_51/BiasAdd?
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_51/Relu?
max_pooling2d_51/MaxPoolMaxPoolconv2d_51/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_51/MaxPool?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_52/Conv2D/ReadVariableOp?
conv2d_52/Conv2DConv2D!max_pooling2d_51/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2
conv2d_52/Conv2D?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_52/BiasAdd/ReadVariableOp?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_52/Relu?
max_pooling2d_52/MaxPoolMaxPoolconv2d_52/Relu:activations:0*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_53/Relu?
max_pooling2d_53/MaxPoolMaxPoolconv2d_53/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPoolu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
flatten_17/Const?
flatten_17/ReshapeReshape!max_pooling2d_53/MaxPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:??????????H2
flatten_17/Reshape?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMulflatten_17/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/BiasAddt
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_38/Relu?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/BiasAddt
dense_39/ReluReludense_39/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_39/Relu?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02 
dense_40/MatMul/ReadVariableOp?
dense_40/MatMulMatMuldense_39/Relu:activations:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_40/MatMul?
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_40/BiasAdd/ReadVariableOp?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_40/BiasAdds
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_40/Relu?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_41/MatMul/ReadVariableOp?
dense_41/MatMulMatMuldense_40/Relu:activations:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_41/MatMul?
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_41/BiasAdd/ReadVariableOp?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_41/BiasAdd|
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_41/Softmaxu
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_45942

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_46716

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_dense_40_layer_call_and_return_conditional_losses_46084

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_38_layer_call_and_return_conditional_losses_46050

inputs2
matmul_readvariableop_resource:
?H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_46761

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????HH :W S
/
_output_shapes
:?????????HH 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46458
input_18)
conv2d_51_46418: 
conv2d_51_46420: )
conv2d_52_46424:  
conv2d_52_46426: )
conv2d_53_46430:  
conv2d_53_46432: "
dense_38_46437:
?H?
dense_38_46439:	?"
dense_39_46442:
??
dense_39_46444:	?!
dense_40_46447:	?@
dense_40_46449:@ 
dense_41_46452:@
dense_41_46454:
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallinput_18conv2d_51_46418conv2d_51_46420*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_459732#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_459832"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_46424conv2d_52_46426*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_459962#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_460062"
 max_pooling2d_52/PartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_53_46430conv2d_53_46432*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_460192#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_460292"
 max_pooling2d_53/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_17_layer_call_and_return_conditional_losses_460372
flatten_17/PartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_38_46437dense_38_46439*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_38_layer_call_and_return_conditional_losses_460502"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_46442dense_39_46444*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_39_layer_call_and_return_conditional_losses_460672"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_46447dense_40_46449*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_40_layer_call_and_return_conditional_losses_460842"
 dense_40/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_46452dense_41_46454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_41_layer_call_and_return_conditional_losses_461012"
 dense_41/StatefulPartitionedCall?
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_18
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_46741

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????HH 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
a
E__inference_flatten_17_layer_call_and_return_conditional_losses_46812

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????H2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_45898

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_dense_38_layer_call_fn_46821

inputs
unknown:
?H?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_38_layer_call_and_return_conditional_losses_460502
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
C__inference_dense_41_layer_call_and_return_conditional_losses_46892

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_53_layer_call_fn_46770

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_460192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????"" 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????$$ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$$ 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46415
input_18)
conv2d_51_46375: 
conv2d_51_46377: )
conv2d_52_46381:  
conv2d_52_46383: )
conv2d_53_46387:  
conv2d_53_46389: "
dense_38_46394:
?H?
dense_38_46396:	?"
dense_39_46399:
??
dense_39_46401:	?!
dense_40_46404:	?@
dense_40_46406:@ 
dense_41_46409:@
dense_41_46411:
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallinput_18conv2d_51_46375conv2d_51_46377*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_459732#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_459832"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_46381conv2d_52_46383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_459962#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_460062"
 max_pooling2d_52/PartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_53_46387conv2d_53_46389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_460192#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_460292"
 max_pooling2d_53/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_17_layer_call_and_return_conditional_losses_460372
flatten_17/PartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_38_46394dense_38_46396*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_38_layer_call_and_return_conditional_losses_460502"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_46399dense_39_46401*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_39_layer_call_and_return_conditional_losses_460672"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_46404dense_40_46406*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_40_layer_call_and_return_conditional_losses_460842"
 dense_40/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_46409dense_41_46411*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_41_layer_call_and_return_conditional_losses_461012"
 dense_41/StatefulPartitionedCall?
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_18
?
?
(__inference_dense_41_layer_call_fn_46881

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_41_layer_call_and_return_conditional_losses_461012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
C__inference_dense_40_layer_call_and_return_conditional_losses_46872

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_51_layer_call_fn_46711

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_459832
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
C__inference_dense_39_layer_call_and_return_conditional_losses_46852

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?h
?
__inference__traced_save_47068
file_prefix/
+savev2_conv2d_51_kernel_read_readvariableop-
)savev2_conv2d_51_bias_read_readvariableop/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_51_kernel_m_read_readvariableop4
0savev2_adam_conv2d_51_bias_m_read_readvariableop6
2savev2_adam_conv2d_52_kernel_m_read_readvariableop4
0savev2_adam_conv2d_52_bias_m_read_readvariableop6
2savev2_adam_conv2d_53_kernel_m_read_readvariableop4
0savev2_adam_conv2d_53_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop5
1savev2_adam_dense_39_kernel_m_read_readvariableop3
/savev2_adam_dense_39_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableop6
2savev2_adam_conv2d_51_kernel_v_read_readvariableop4
0savev2_adam_conv2d_51_bias_v_read_readvariableop6
2savev2_adam_conv2d_52_kernel_v_read_readvariableop4
0savev2_adam_conv2d_52_bias_v_read_readvariableop6
2savev2_adam_conv2d_53_kernel_v_read_readvariableop4
0savev2_adam_conv2d_53_bias_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop5
1savev2_adam_dense_39_kernel_v_read_readvariableop3
/savev2_adam_dense_39_bias_v_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_51_kernel_read_readvariableop)savev2_conv2d_51_bias_read_readvariableop+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_51_kernel_m_read_readvariableop0savev2_adam_conv2d_51_bias_m_read_readvariableop2savev2_adam_conv2d_52_kernel_m_read_readvariableop0savev2_adam_conv2d_52_bias_m_read_readvariableop2savev2_adam_conv2d_53_kernel_m_read_readvariableop0savev2_adam_conv2d_53_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop1savev2_adam_dense_39_kernel_m_read_readvariableop/savev2_adam_dense_39_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop2savev2_adam_conv2d_51_kernel_v_read_readvariableop0savev2_adam_conv2d_51_bias_v_read_readvariableop2savev2_adam_conv2d_52_kernel_v_read_readvariableop0savev2_adam_conv2d_52_bias_v_read_readvariableop2savev2_adam_conv2d_53_kernel_v_read_readvariableop0savev2_adam_conv2d_53_bias_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop1savev2_adam_dense_39_kernel_v_read_readvariableop/savev2_adam_dense_39_bias_v_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : :  : :
?H?:?:
??:?:	?@:@:@:: : : : : : : : : : : :  : :  : :
?H?:?:
??:?:	?@:@:@:: : :  : :  : :
?H?:?:
??:?:	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :&"
 
_output_shapes
:
?H?:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :&"
 
_output_shapes
:
?H?:!

_output_shapes	
:?:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:%"!

_output_shapes
:	?@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
:  : )

_output_shapes
: :,*(
&
_output_shapes
:  : +

_output_shapes
: :&,"
 
_output_shapes
:
?H?:!-

_output_shapes	
:?:&."
 
_output_shapes
:
??:!/

_output_shapes	
:?:%0!

_output_shapes
:	?@: 1

_output_shapes
:@:$2 

_output_shapes

:@: 3

_output_shapes
::4

_output_shapes
: 
?N
?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46681

inputsB
(conv2d_51_conv2d_readvariableop_resource: 7
)conv2d_51_biasadd_readvariableop_resource: B
(conv2d_52_conv2d_readvariableop_resource:  7
)conv2d_52_biasadd_readvariableop_resource: B
(conv2d_53_conv2d_readvariableop_resource:  7
)conv2d_53_biasadd_readvariableop_resource: ;
'dense_38_matmul_readvariableop_resource:
?H?7
(dense_38_biasadd_readvariableop_resource:	?;
'dense_39_matmul_readvariableop_resource:
??7
(dense_39_biasadd_readvariableop_resource:	?:
'dense_40_matmul_readvariableop_resource:	?@6
(dense_40_biasadd_readvariableop_resource:@9
'dense_41_matmul_readvariableop_resource:@6
(dense_41_biasadd_readvariableop_resource:
identity?? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_51/Conv2D/ReadVariableOp?
conv2d_51/Conv2DConv2Dinputs'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_51/Conv2D?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_51/BiasAdd/ReadVariableOp?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_51/BiasAdd?
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_51/Relu?
max_pooling2d_51/MaxPoolMaxPoolconv2d_51/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_51/MaxPool?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_52/Conv2D/ReadVariableOp?
conv2d_52/Conv2DConv2D!max_pooling2d_51/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2
conv2d_52/Conv2D?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_52/BiasAdd/ReadVariableOp?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_52/Relu?
max_pooling2d_52/MaxPoolMaxPoolconv2d_52/Relu:activations:0*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_53/Relu?
max_pooling2d_53/MaxPoolMaxPoolconv2d_53/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPoolu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
flatten_17/Const?
flatten_17/ReshapeReshape!max_pooling2d_53/MaxPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:??????????H2
flatten_17/Reshape?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMulflatten_17/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/BiasAddt
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_38/Relu?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/BiasAddt
dense_39/ReluReludense_39/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_39/Relu?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02 
dense_40/MatMul/ReadVariableOp?
dense_40/MatMulMatMuldense_39/Relu:activations:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_40/MatMul?
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_40/BiasAdd/ReadVariableOp?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_40/BiasAdds
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_40/Relu?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_41/MatMul/ReadVariableOp?
dense_41/MatMulMatMuldense_40/Relu:activations:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_41/MatMul?
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_41/BiasAdd/ReadVariableOp?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_41/BiasAdd|
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_41/Softmaxu
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_52_layer_call_fn_46746

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_459202
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?d
?
 __inference__wrapped_model_45889
input_18P
6sequential_17_conv2d_51_conv2d_readvariableop_resource: E
7sequential_17_conv2d_51_biasadd_readvariableop_resource: P
6sequential_17_conv2d_52_conv2d_readvariableop_resource:  E
7sequential_17_conv2d_52_biasadd_readvariableop_resource: P
6sequential_17_conv2d_53_conv2d_readvariableop_resource:  E
7sequential_17_conv2d_53_biasadd_readvariableop_resource: I
5sequential_17_dense_38_matmul_readvariableop_resource:
?H?E
6sequential_17_dense_38_biasadd_readvariableop_resource:	?I
5sequential_17_dense_39_matmul_readvariableop_resource:
??E
6sequential_17_dense_39_biasadd_readvariableop_resource:	?H
5sequential_17_dense_40_matmul_readvariableop_resource:	?@D
6sequential_17_dense_40_biasadd_readvariableop_resource:@G
5sequential_17_dense_41_matmul_readvariableop_resource:@D
6sequential_17_dense_41_biasadd_readvariableop_resource:
identity??.sequential_17/conv2d_51/BiasAdd/ReadVariableOp?-sequential_17/conv2d_51/Conv2D/ReadVariableOp?.sequential_17/conv2d_52/BiasAdd/ReadVariableOp?-sequential_17/conv2d_52/Conv2D/ReadVariableOp?.sequential_17/conv2d_53/BiasAdd/ReadVariableOp?-sequential_17/conv2d_53/Conv2D/ReadVariableOp?-sequential_17/dense_38/BiasAdd/ReadVariableOp?,sequential_17/dense_38/MatMul/ReadVariableOp?-sequential_17/dense_39/BiasAdd/ReadVariableOp?,sequential_17/dense_39/MatMul/ReadVariableOp?-sequential_17/dense_40/BiasAdd/ReadVariableOp?,sequential_17/dense_40/MatMul/ReadVariableOp?-sequential_17/dense_41/BiasAdd/ReadVariableOp?,sequential_17/dense_41/MatMul/ReadVariableOp?
-sequential_17/conv2d_51/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_17/conv2d_51/Conv2D/ReadVariableOp?
sequential_17/conv2d_51/Conv2DConv2Dinput_185sequential_17/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2 
sequential_17/conv2d_51/Conv2D?
.sequential_17/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_17/conv2d_51/BiasAdd/ReadVariableOp?
sequential_17/conv2d_51/BiasAddBiasAdd'sequential_17/conv2d_51/Conv2D:output:06sequential_17/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2!
sequential_17/conv2d_51/BiasAdd?
sequential_17/conv2d_51/ReluRelu(sequential_17/conv2d_51/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
sequential_17/conv2d_51/Relu?
&sequential_17/max_pooling2d_51/MaxPoolMaxPool*sequential_17/conv2d_51/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2(
&sequential_17/max_pooling2d_51/MaxPool?
-sequential_17/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_17/conv2d_52/Conv2D/ReadVariableOp?
sequential_17/conv2d_52/Conv2DConv2D/sequential_17/max_pooling2d_51/MaxPool:output:05sequential_17/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2 
sequential_17/conv2d_52/Conv2D?
.sequential_17/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_17/conv2d_52/BiasAdd/ReadVariableOp?
sequential_17/conv2d_52/BiasAddBiasAdd'sequential_17/conv2d_52/Conv2D:output:06sequential_17/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2!
sequential_17/conv2d_52/BiasAdd?
sequential_17/conv2d_52/ReluRelu(sequential_17/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
sequential_17/conv2d_52/Relu?
&sequential_17/max_pooling2d_52/MaxPoolMaxPool*sequential_17/conv2d_52/Relu:activations:0*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2(
&sequential_17/max_pooling2d_52/MaxPool?
-sequential_17/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_17/conv2d_53/Conv2D/ReadVariableOp?
sequential_17/conv2d_53/Conv2DConv2D/sequential_17/max_pooling2d_52/MaxPool:output:05sequential_17/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2 
sequential_17/conv2d_53/Conv2D?
.sequential_17/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_17/conv2d_53/BiasAdd/ReadVariableOp?
sequential_17/conv2d_53/BiasAddBiasAdd'sequential_17/conv2d_53/Conv2D:output:06sequential_17/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2!
sequential_17/conv2d_53/BiasAdd?
sequential_17/conv2d_53/ReluRelu(sequential_17/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
sequential_17/conv2d_53/Relu?
&sequential_17/max_pooling2d_53/MaxPoolMaxPool*sequential_17/conv2d_53/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_17/max_pooling2d_53/MaxPool?
sequential_17/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
sequential_17/flatten_17/Const?
 sequential_17/flatten_17/ReshapeReshape/sequential_17/max_pooling2d_53/MaxPool:output:0'sequential_17/flatten_17/Const:output:0*
T0*(
_output_shapes
:??????????H2"
 sequential_17/flatten_17/Reshape?
,sequential_17/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_38_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02.
,sequential_17/dense_38/MatMul/ReadVariableOp?
sequential_17/dense_38/MatMulMatMul)sequential_17/flatten_17/Reshape:output:04sequential_17/dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_17/dense_38/MatMul?
-sequential_17/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_38_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_17/dense_38/BiasAdd/ReadVariableOp?
sequential_17/dense_38/BiasAddBiasAdd'sequential_17/dense_38/MatMul:product:05sequential_17/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_17/dense_38/BiasAdd?
sequential_17/dense_38/ReluRelu'sequential_17/dense_38/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_17/dense_38/Relu?
,sequential_17/dense_39/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_39_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_17/dense_39/MatMul/ReadVariableOp?
sequential_17/dense_39/MatMulMatMul)sequential_17/dense_38/Relu:activations:04sequential_17/dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_17/dense_39/MatMul?
-sequential_17/dense_39/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_39_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_17/dense_39/BiasAdd/ReadVariableOp?
sequential_17/dense_39/BiasAddBiasAdd'sequential_17/dense_39/MatMul:product:05sequential_17/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_17/dense_39/BiasAdd?
sequential_17/dense_39/ReluRelu'sequential_17/dense_39/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_17/dense_39/Relu?
,sequential_17/dense_40/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_40_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,sequential_17/dense_40/MatMul/ReadVariableOp?
sequential_17/dense_40/MatMulMatMul)sequential_17/dense_39/Relu:activations:04sequential_17/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_17/dense_40/MatMul?
-sequential_17/dense_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_17/dense_40/BiasAdd/ReadVariableOp?
sequential_17/dense_40/BiasAddBiasAdd'sequential_17/dense_40/MatMul:product:05sequential_17/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_17/dense_40/BiasAdd?
sequential_17/dense_40/ReluRelu'sequential_17/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_17/dense_40/Relu?
,sequential_17/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_17/dense_41/MatMul/ReadVariableOp?
sequential_17/dense_41/MatMulMatMul)sequential_17/dense_40/Relu:activations:04sequential_17/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_17/dense_41/MatMul?
-sequential_17/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_17/dense_41/BiasAdd/ReadVariableOp?
sequential_17/dense_41/BiasAddBiasAdd'sequential_17/dense_41/MatMul:product:05sequential_17/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_17/dense_41/BiasAdd?
sequential_17/dense_41/SoftmaxSoftmax'sequential_17/dense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_17/dense_41/Softmax?
IdentityIdentity(sequential_17/dense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp/^sequential_17/conv2d_51/BiasAdd/ReadVariableOp.^sequential_17/conv2d_51/Conv2D/ReadVariableOp/^sequential_17/conv2d_52/BiasAdd/ReadVariableOp.^sequential_17/conv2d_52/Conv2D/ReadVariableOp/^sequential_17/conv2d_53/BiasAdd/ReadVariableOp.^sequential_17/conv2d_53/Conv2D/ReadVariableOp.^sequential_17/dense_38/BiasAdd/ReadVariableOp-^sequential_17/dense_38/MatMul/ReadVariableOp.^sequential_17/dense_39/BiasAdd/ReadVariableOp-^sequential_17/dense_39/MatMul/ReadVariableOp.^sequential_17/dense_40/BiasAdd/ReadVariableOp-^sequential_17/dense_40/MatMul/ReadVariableOp.^sequential_17/dense_41/BiasAdd/ReadVariableOp-^sequential_17/dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2`
.sequential_17/conv2d_51/BiasAdd/ReadVariableOp.sequential_17/conv2d_51/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_51/Conv2D/ReadVariableOp-sequential_17/conv2d_51/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_52/BiasAdd/ReadVariableOp.sequential_17/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_52/Conv2D/ReadVariableOp-sequential_17/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_53/BiasAdd/ReadVariableOp.sequential_17/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_53/Conv2D/ReadVariableOp-sequential_17/conv2d_53/Conv2D/ReadVariableOp2^
-sequential_17/dense_38/BiasAdd/ReadVariableOp-sequential_17/dense_38/BiasAdd/ReadVariableOp2\
,sequential_17/dense_38/MatMul/ReadVariableOp,sequential_17/dense_38/MatMul/ReadVariableOp2^
-sequential_17/dense_39/BiasAdd/ReadVariableOp-sequential_17/dense_39/BiasAdd/ReadVariableOp2\
,sequential_17/dense_39/MatMul/ReadVariableOp,sequential_17/dense_39/MatMul/ReadVariableOp2^
-sequential_17/dense_40/BiasAdd/ReadVariableOp-sequential_17/dense_40/BiasAdd/ReadVariableOp2\
,sequential_17/dense_40/MatMul/ReadVariableOp,sequential_17/dense_40/MatMul/ReadVariableOp2^
-sequential_17/dense_41/BiasAdd/ReadVariableOp-sequential_17/dense_41/BiasAdd/ReadVariableOp2\
,sequential_17/dense_41/MatMul/ReadVariableOp,sequential_17/dense_41/MatMul/ReadVariableOp:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_18
?
?
C__inference_dense_41_layer_call_and_return_conditional_losses_46101

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_53_layer_call_fn_46786

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_459422
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_dense_40_layer_call_fn_46861

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_40_layer_call_and_return_conditional_losses_460842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_17_layer_call_fn_46532

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:
?H?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:@

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_461082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_dense_39_layer_call_and_return_conditional_losses_46067

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_46781

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????"" 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????$$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$$ 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_45996

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????HH 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_47231
file_prefix;
!assignvariableop_conv2d_51_kernel: /
!assignvariableop_1_conv2d_51_bias: =
#assignvariableop_2_conv2d_52_kernel:  /
!assignvariableop_3_conv2d_52_bias: =
#assignvariableop_4_conv2d_53_kernel:  /
!assignvariableop_5_conv2d_53_bias: 6
"assignvariableop_6_dense_38_kernel:
?H?/
 assignvariableop_7_dense_38_bias:	?6
"assignvariableop_8_dense_39_kernel:
??/
 assignvariableop_9_dense_39_bias:	?6
#assignvariableop_10_dense_40_kernel:	?@/
!assignvariableop_11_dense_40_bias:@5
#assignvariableop_12_dense_41_kernel:@/
!assignvariableop_13_dense_41_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: E
+assignvariableop_23_adam_conv2d_51_kernel_m: 7
)assignvariableop_24_adam_conv2d_51_bias_m: E
+assignvariableop_25_adam_conv2d_52_kernel_m:  7
)assignvariableop_26_adam_conv2d_52_bias_m: E
+assignvariableop_27_adam_conv2d_53_kernel_m:  7
)assignvariableop_28_adam_conv2d_53_bias_m: >
*assignvariableop_29_adam_dense_38_kernel_m:
?H?7
(assignvariableop_30_adam_dense_38_bias_m:	?>
*assignvariableop_31_adam_dense_39_kernel_m:
??7
(assignvariableop_32_adam_dense_39_bias_m:	?=
*assignvariableop_33_adam_dense_40_kernel_m:	?@6
(assignvariableop_34_adam_dense_40_bias_m:@<
*assignvariableop_35_adam_dense_41_kernel_m:@6
(assignvariableop_36_adam_dense_41_bias_m:E
+assignvariableop_37_adam_conv2d_51_kernel_v: 7
)assignvariableop_38_adam_conv2d_51_bias_v: E
+assignvariableop_39_adam_conv2d_52_kernel_v:  7
)assignvariableop_40_adam_conv2d_52_bias_v: E
+assignvariableop_41_adam_conv2d_53_kernel_v:  7
)assignvariableop_42_adam_conv2d_53_bias_v: >
*assignvariableop_43_adam_dense_38_kernel_v:
?H?7
(assignvariableop_44_adam_dense_38_bias_v:	?>
*assignvariableop_45_adam_dense_39_kernel_v:
??7
(assignvariableop_46_adam_dense_39_bias_v:	?=
*assignvariableop_47_adam_dense_40_kernel_v:	?@6
(assignvariableop_48_adam_dense_40_bias_v:@<
*assignvariableop_49_adam_dense_41_kernel_v:@6
(assignvariableop_50_adam_dense_41_bias_v:
identity_52??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_51_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_51_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_52_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_52_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_53_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_53_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_38_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_38_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_39_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_39_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_40_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_40_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_41_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_41_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_51_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_51_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_52_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_52_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_53_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_53_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_38_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_38_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_39_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_39_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_40_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_40_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_41_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_41_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_51_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_51_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_52_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_52_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_53_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_53_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_38_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_38_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_39_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_39_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_40_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_40_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_41_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_41_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51f
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_52?	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
g
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_45983

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_51_layer_call_fn_46706

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_458982
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_51_layer_call_and_return_conditional_losses_46701

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_17_layer_call_and_return_conditional_losses_46037

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????H2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46108

inputs)
conv2d_51_45974: 
conv2d_51_45976: )
conv2d_52_45997:  
conv2d_52_45999: )
conv2d_53_46020:  
conv2d_53_46022: "
dense_38_46051:
?H?
dense_38_46053:	?"
dense_39_46068:
??
dense_39_46070:	?!
dense_40_46085:	?@
dense_40_46087:@ 
dense_41_46102:@
dense_41_46104:
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_51_45974conv2d_51_45976*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_459732#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_459832"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_45997conv2d_52_45999*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_459962#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_460062"
 max_pooling2d_52/PartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_53_46020conv2d_53_46022*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_460192#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_460292"
 max_pooling2d_53/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_17_layer_call_and_return_conditional_losses_460372
flatten_17/PartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_38_46051dense_38_46053*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_38_layer_call_and_return_conditional_losses_460502"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_46068dense_39_46070*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_39_layer_call_and_return_conditional_losses_460672"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_46085dense_40_46087*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_40_layer_call_and_return_conditional_losses_460842"
 dense_40/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_46102dense_41_46104*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_41_layer_call_and_return_conditional_losses_461012"
 dense_41/StatefulPartitionedCall?
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_46721

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46308

inputs)
conv2d_51_46268: 
conv2d_51_46270: )
conv2d_52_46274:  
conv2d_52_46276: )
conv2d_53_46280:  
conv2d_53_46282: "
dense_38_46287:
?H?
dense_38_46289:	?"
dense_39_46292:
??
dense_39_46294:	?!
dense_40_46297:	?@
dense_40_46299:@ 
dense_41_46302:@
dense_41_46304:
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_51_46268conv2d_51_46270*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_459732#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_459832"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_46274conv2d_52_46276*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_459962#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_460062"
 max_pooling2d_52/PartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_53_46280conv2d_53_46282*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_460192#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_460292"
 max_pooling2d_53/PartitionedCall?
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_17_layer_call_and_return_conditional_losses_460372
flatten_17/PartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_38_46287dense_38_46289*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_38_layer_call_and_return_conditional_losses_460502"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_46292dense_39_46294*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_39_layer_call_and_return_conditional_losses_460672"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_46297dense_40_46299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_40_layer_call_and_return_conditional_losses_460842"
 dense_40/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_46302dense_41_46304*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_41_layer_call_and_return_conditional_losses_461012"
 dense_41/StatefulPartitionedCall?
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_17_layer_call_fn_46372
input_18!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:
?H?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:@

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_463082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_18
?
g
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_46801

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????"" :W S
/
_output_shapes
:?????????"" 
 
_user_specified_nameinputs
?
?
C__inference_dense_38_layer_call_and_return_conditional_losses_46832

inputs2
matmul_readvariableop_resource:
?H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
input_18;
serving_default_input_18:0???????????<
dense_410
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

&kernel
'bias
(regularization_losses
)	variables
*trainable_variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
,regularization_losses
-	variables
.trainable_variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0regularization_losses
1	variables
2trainable_variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

@kernel
Abias
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Liter

Mbeta_1

Nbeta_2
	Odecay
Plearning_ratem?m?m?m?&m?'m?4m?5m?:m?;m?@m?Am?Fm?Gm?v?v?v?v?&v?'v?4v?5v?:v?;v?@v?Av?Fv?Gv?"
	optimizer
 "
trackable_list_wrapper
?
0
1
2
3
&4
'5
46
57
:8
;9
@10
A11
F12
G13"
trackable_list_wrapper
?
0
1
2
3
&4
'5
46
57
:8
;9
@10
A11
F12
G13"
trackable_list_wrapper
?
regularization_losses

Qlayers
Rlayer_regularization_losses
	variables
Snon_trainable_variables
trainable_variables
Tmetrics
Ulayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_51/kernel
: 2conv2d_51/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

Vlayers
Wlayer_regularization_losses
	variables
Xnon_trainable_variables
trainable_variables
Ymetrics
Zlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses

[layers
\layer_regularization_losses
	variables
]non_trainable_variables
trainable_variables
^metrics
_layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_52/kernel
: 2conv2d_52/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

`layers
alayer_regularization_losses
	variables
bnon_trainable_variables
 trainable_variables
cmetrics
dlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
"regularization_losses

elayers
flayer_regularization_losses
#	variables
gnon_trainable_variables
$trainable_variables
hmetrics
ilayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_53/kernel
: 2conv2d_53/bias
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
(regularization_losses

jlayers
klayer_regularization_losses
)	variables
lnon_trainable_variables
*trainable_variables
mmetrics
nlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
,regularization_losses

olayers
player_regularization_losses
-	variables
qnon_trainable_variables
.trainable_variables
rmetrics
slayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
0regularization_losses

tlayers
ulayer_regularization_losses
1	variables
vnon_trainable_variables
2trainable_variables
wmetrics
xlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
?H?2dense_38/kernel
:?2dense_38/bias
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
6regularization_losses

ylayers
zlayer_regularization_losses
7	variables
{non_trainable_variables
8trainable_variables
|metrics
}layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_39/kernel
:?2dense_39/bias
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
<regularization_losses

~layers
layer_regularization_losses
=	variables
?non_trainable_variables
>trainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?@2dense_40/kernel
:@2dense_40/bias
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
Bregularization_losses
?layers
 ?layer_regularization_losses
C	variables
?non_trainable_variables
Dtrainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_41/kernel
:2dense_41/bias
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
Hregularization_losses
?layers
 ?layer_regularization_losses
I	variables
?non_trainable_variables
Jtrainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:- 2Adam/conv2d_51/kernel/m
!: 2Adam/conv2d_51/bias/m
/:-  2Adam/conv2d_52/kernel/m
!: 2Adam/conv2d_52/bias/m
/:-  2Adam/conv2d_53/kernel/m
!: 2Adam/conv2d_53/bias/m
(:&
?H?2Adam/dense_38/kernel/m
!:?2Adam/dense_38/bias/m
(:&
??2Adam/dense_39/kernel/m
!:?2Adam/dense_39/bias/m
':%	?@2Adam/dense_40/kernel/m
 :@2Adam/dense_40/bias/m
&:$@2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
/:- 2Adam/conv2d_51/kernel/v
!: 2Adam/conv2d_51/bias/v
/:-  2Adam/conv2d_52/kernel/v
!: 2Adam/conv2d_52/bias/v
/:-  2Adam/conv2d_53/kernel/v
!: 2Adam/conv2d_53/bias/v
(:&
?H?2Adam/dense_38/kernel/v
!:?2Adam/dense_38/bias/v
(:&
??2Adam/dense_39/kernel/v
!:?2Adam/dense_39/bias/v
':%	?@2Adam/dense_40/kernel/v
 :@2Adam/dense_40/bias/v
&:$@2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/v
?B?
 __inference__wrapped_model_45889input_18"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_sequential_17_layer_call_fn_46139
-__inference_sequential_17_layer_call_fn_46532
-__inference_sequential_17_layer_call_fn_46565
-__inference_sequential_17_layer_call_fn_46372?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46623
H__inference_sequential_17_layer_call_and_return_conditional_losses_46681
H__inference_sequential_17_layer_call_and_return_conditional_losses_46415
H__inference_sequential_17_layer_call_and_return_conditional_losses_46458?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_conv2d_51_layer_call_fn_46690?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_51_layer_call_and_return_conditional_losses_46701?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_51_layer_call_fn_46706
0__inference_max_pooling2d_51_layer_call_fn_46711?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_46716
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_46721?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_52_layer_call_fn_46730?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_46741?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_52_layer_call_fn_46746
0__inference_max_pooling2d_52_layer_call_fn_46751?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_46756
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_46761?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_53_layer_call_fn_46770?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_46781?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_53_layer_call_fn_46786
0__inference_max_pooling2d_53_layer_call_fn_46791?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_46796
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_46801?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_17_layer_call_fn_46806?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_17_layer_call_and_return_conditional_losses_46812?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_38_layer_call_fn_46821?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_38_layer_call_and_return_conditional_losses_46832?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_39_layer_call_fn_46841?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_39_layer_call_and_return_conditional_losses_46852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_40_layer_call_fn_46861?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_40_layer_call_and_return_conditional_losses_46872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_41_layer_call_fn_46881?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_41_layer_call_and_return_conditional_losses_46892?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_46499input_18"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_45889?&'45:;@AFG;?8
1?.
,?)
input_18???????????
? "3?0
.
dense_41"?
dense_41??????????
D__inference_conv2d_51_layer_call_and_return_conditional_losses_46701p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
)__inference_conv2d_51_layer_call_fn_46690c9?6
/?,
*?'
inputs???????????
? ""???????????? ?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_46741l7?4
-?*
(?%
inputs?????????JJ 
? "-?*
#? 
0?????????HH 
? ?
)__inference_conv2d_52_layer_call_fn_46730_7?4
-?*
(?%
inputs?????????JJ 
? " ??????????HH ?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_46781l&'7?4
-?*
(?%
inputs?????????$$ 
? "-?*
#? 
0?????????"" 
? ?
)__inference_conv2d_53_layer_call_fn_46770_&'7?4
-?*
(?%
inputs?????????$$ 
? " ??????????"" ?
C__inference_dense_38_layer_call_and_return_conditional_losses_46832^450?-
&?#
!?
inputs??????????H
? "&?#
?
0??????????
? }
(__inference_dense_38_layer_call_fn_46821Q450?-
&?#
!?
inputs??????????H
? "????????????
C__inference_dense_39_layer_call_and_return_conditional_losses_46852^:;0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_39_layer_call_fn_46841Q:;0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_40_layer_call_and_return_conditional_losses_46872]@A0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_40_layer_call_fn_46861P@A0?-
&?#
!?
inputs??????????
? "??????????@?
C__inference_dense_41_layer_call_and_return_conditional_losses_46892\FG/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_41_layer_call_fn_46881OFG/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_flatten_17_layer_call_and_return_conditional_losses_46812a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????H
? ?
*__inference_flatten_17_layer_call_fn_46806T7?4
-?*
(?%
inputs????????? 
? "???????????H?
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_46716?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_46721j9?6
/?,
*?'
inputs??????????? 
? "-?*
#? 
0?????????JJ 
? ?
0__inference_max_pooling2d_51_layer_call_fn_46706?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_51_layer_call_fn_46711]9?6
/?,
*?'
inputs??????????? 
? " ??????????JJ ?
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_46756?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_46761h7?4
-?*
(?%
inputs?????????HH 
? "-?*
#? 
0?????????$$ 
? ?
0__inference_max_pooling2d_52_layer_call_fn_46746?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_52_layer_call_fn_46751[7?4
-?*
(?%
inputs?????????HH 
? " ??????????$$ ?
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_46796?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_46801h7?4
-?*
(?%
inputs?????????"" 
? "-?*
#? 
0????????? 
? ?
0__inference_max_pooling2d_53_layer_call_fn_46786?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_53_layer_call_fn_46791[7?4
-?*
(?%
inputs?????????"" 
? " ?????????? ?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46415|&'45:;@AFGC?@
9?6
,?)
input_18???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46458|&'45:;@AFGC?@
9?6
,?)
input_18???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46623z&'45:;@AFGA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_17_layer_call_and_return_conditional_losses_46681z&'45:;@AFGA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_17_layer_call_fn_46139o&'45:;@AFGC?@
9?6
,?)
input_18???????????
p 

 
? "???????????
-__inference_sequential_17_layer_call_fn_46372o&'45:;@AFGC?@
9?6
,?)
input_18???????????
p

 
? "???????????
-__inference_sequential_17_layer_call_fn_46532m&'45:;@AFGA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_sequential_17_layer_call_fn_46565m&'45:;@AFGA?>
7?4
*?'
inputs???????????
p

 
? "???????????
#__inference_signature_wrapper_46499?&'45:;@AFGG?D
? 
=?:
8
input_18,?)
input_18???????????"3?0
.
dense_41"?
dense_41?????????