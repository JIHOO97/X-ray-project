??
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
conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_58/kernel
}
$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*&
_output_shapes
: *
dtype0
t
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_58/bias
m
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes
: *
dtype0
?
conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_59/kernel
}
$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_59/bias
m
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes
: *
dtype0
?
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
: *
dtype0
?
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
: *
dtype0
|
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_46/kernel
u
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel* 
_output_shapes
:
??*
dtype0
s
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_46/bias
l
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes	
:?*
dtype0
|
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_47/kernel
u
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel* 
_output_shapes
:
??*
dtype0
s
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_47/bias
l
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
_output_shapes	
:?*
dtype0
{
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@* 
shared_namedense_48/kernel
t
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes
:	?@*
dtype0
r
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_48/bias
k
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
_output_shapes
:@*
dtype0
z
dense_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_49/kernel
s
#dense_49/kernel/Read/ReadVariableOpReadVariableOpdense_49/kernel*
_output_shapes

:@*
dtype0
r
dense_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_49/bias
k
!dense_49/bias/Read/ReadVariableOpReadVariableOpdense_49/bias*
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
Adam/conv2d_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_58/kernel/m
?
+Adam/conv2d_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_58/bias/m
{
)Adam/conv2d_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_59/kernel/m
?
+Adam/conv2d_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_59/bias/m
{
)Adam/conv2d_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_60/kernel/m
?
+Adam/conv2d_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_60/bias/m
{
)Adam/conv2d_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_61/kernel/m
?
+Adam/conv2d_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_61/bias/m
{
)Adam/conv2d_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_46/kernel/m
?
*Adam/dense_46/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_46/bias/m
z
(Adam/dense_46/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_47/kernel/m
?
*Adam/dense_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_47/bias/m
z
(Adam/dense_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_48/kernel/m
?
*Adam/dense_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_48/bias/m
y
(Adam/dense_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_49/kernel/m
?
*Adam/dense_49/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_49/bias/m
y
(Adam/dense_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_58/kernel/v
?
+Adam/conv2d_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_58/bias/v
{
)Adam/conv2d_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_59/kernel/v
?
+Adam/conv2d_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_59/bias/v
{
)Adam/conv2d_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_60/kernel/v
?
+Adam/conv2d_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_60/bias/v
{
)Adam/conv2d_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_61/kernel/v
?
+Adam/conv2d_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_61/bias/v
{
)Adam/conv2d_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_46/kernel/v
?
*Adam/dense_46/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_46/bias/v
z
(Adam/dense_46/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_47/kernel/v
?
*Adam/dense_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_47/bias/v
z
(Adam/dense_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_48/kernel/v
?
*Adam/dense_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_48/bias/v
y
(Adam/dense_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_49/kernel/v
?
*Adam/dense_49/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_49/bias/v
y
(Adam/dense_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?]
value?\B?\ B?\
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
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
R
$regularization_losses
%	variables
&trainable_variables
'	keras_api
h

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
R
.regularization_losses
/	variables
0trainable_variables
1	keras_api
h

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
R
8regularization_losses
9	variables
:trainable_variables
;	keras_api
R
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
h

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
h

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
?
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem?m?m?m?(m?)m?2m?3m?@m?Am?Fm?Gm?Lm?Mm?Rm?Sm?v?v?v?v?(v?)v?2v?3v?@v?Av?Fv?Gv?Lv?Mv?Rv?Sv?
 
v
0
1
2
3
(4
)5
26
37
@8
A9
F10
G11
L12
M13
R14
S15
v
0
1
2
3
(4
)5
26
37
@8
A9
F10
G11
L12
M13
R14
S15
?
regularization_losses

]layers
^layer_regularization_losses
	variables
_non_trainable_variables
trainable_variables
`metrics
alayer_metrics
 
\Z
VARIABLE_VALUEconv2d_58/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_58/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

blayers
clayer_regularization_losses
	variables
dnon_trainable_variables
trainable_variables
emetrics
flayer_metrics
 
 
 
?
regularization_losses

glayers
hlayer_regularization_losses
	variables
inon_trainable_variables
trainable_variables
jmetrics
klayer_metrics
\Z
VARIABLE_VALUEconv2d_59/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_59/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
 regularization_losses

llayers
mlayer_regularization_losses
!	variables
nnon_trainable_variables
"trainable_variables
ometrics
player_metrics
 
 
 
?
$regularization_losses

qlayers
rlayer_regularization_losses
%	variables
snon_trainable_variables
&trainable_variables
tmetrics
ulayer_metrics
\Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
?
*regularization_losses

vlayers
wlayer_regularization_losses
+	variables
xnon_trainable_variables
,trainable_variables
ymetrics
zlayer_metrics
 
 
 
?
.regularization_losses

{layers
|layer_regularization_losses
/	variables
}non_trainable_variables
0trainable_variables
~metrics
layer_metrics
\Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
?
4regularization_losses
?layers
 ?layer_regularization_losses
5	variables
?non_trainable_variables
6trainable_variables
?metrics
?layer_metrics
 
 
 
?
8regularization_losses
?layers
 ?layer_regularization_losses
9	variables
?non_trainable_variables
:trainable_variables
?metrics
?layer_metrics
 
 
 
?
<regularization_losses
?layers
 ?layer_regularization_losses
=	variables
?non_trainable_variables
>trainable_variables
?metrics
?layer_metrics
[Y
VARIABLE_VALUEdense_46/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_46/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_47/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_47/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEdense_48/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_48/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
?
Nregularization_losses
?layers
 ?layer_regularization_losses
O	variables
?non_trainable_variables
Ptrainable_variables
?metrics
?layer_metrics
[Y
VARIABLE_VALUEdense_49/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_49/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

R0
S1
?
Tregularization_losses
?layers
 ?layer_regularization_losses
U	variables
?non_trainable_variables
Vtrainable_variables
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
^
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
11
12
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
VARIABLE_VALUEAdam/conv2d_58/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_58/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_59/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_59/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_60/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_61/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_46/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_46/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_47/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_47/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_48/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_48/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_49/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_49/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_58/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_58/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_59/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_59/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_60/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_61/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_46/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_46/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_47/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_47/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_48/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_48/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_49/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_49/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_20Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_20conv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/biasdense_48/kerneldense_48/biasdense_49/kerneldense_49/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_61851
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOp$conv2d_59/kernel/Read/ReadVariableOp"conv2d_59/bias/Read/ReadVariableOp$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOp#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOp#dense_49/kernel/Read/ReadVariableOp!dense_49/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_58/kernel/m/Read/ReadVariableOp)Adam/conv2d_58/bias/m/Read/ReadVariableOp+Adam/conv2d_59/kernel/m/Read/ReadVariableOp)Adam/conv2d_59/bias/m/Read/ReadVariableOp+Adam/conv2d_60/kernel/m/Read/ReadVariableOp)Adam/conv2d_60/bias/m/Read/ReadVariableOp+Adam/conv2d_61/kernel/m/Read/ReadVariableOp)Adam/conv2d_61/bias/m/Read/ReadVariableOp*Adam/dense_46/kernel/m/Read/ReadVariableOp(Adam/dense_46/bias/m/Read/ReadVariableOp*Adam/dense_47/kernel/m/Read/ReadVariableOp(Adam/dense_47/bias/m/Read/ReadVariableOp*Adam/dense_48/kernel/m/Read/ReadVariableOp(Adam/dense_48/bias/m/Read/ReadVariableOp*Adam/dense_49/kernel/m/Read/ReadVariableOp(Adam/dense_49/bias/m/Read/ReadVariableOp+Adam/conv2d_58/kernel/v/Read/ReadVariableOp)Adam/conv2d_58/bias/v/Read/ReadVariableOp+Adam/conv2d_59/kernel/v/Read/ReadVariableOp)Adam/conv2d_59/bias/v/Read/ReadVariableOp+Adam/conv2d_60/kernel/v/Read/ReadVariableOp)Adam/conv2d_60/bias/v/Read/ReadVariableOp+Adam/conv2d_61/kernel/v/Read/ReadVariableOp)Adam/conv2d_61/bias/v/Read/ReadVariableOp*Adam/dense_46/kernel/v/Read/ReadVariableOp(Adam/dense_46/bias/v/Read/ReadVariableOp*Adam/dense_47/kernel/v/Read/ReadVariableOp(Adam/dense_47/bias/v/Read/ReadVariableOp*Adam/dense_48/kernel/v/Read/ReadVariableOp(Adam/dense_48/bias/v/Read/ReadVariableOp*Adam/dense_49/kernel/v/Read/ReadVariableOp(Adam/dense_49/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
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
__inference__traced_save_62502
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/biasdense_48/kerneldense_48/biasdense_49/kerneldense_49/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_58/kernel/mAdam/conv2d_58/bias/mAdam/conv2d_59/kernel/mAdam/conv2d_59/bias/mAdam/conv2d_60/kernel/mAdam/conv2d_60/bias/mAdam/conv2d_61/kernel/mAdam/conv2d_61/bias/mAdam/dense_46/kernel/mAdam/dense_46/bias/mAdam/dense_47/kernel/mAdam/dense_47/bias/mAdam/dense_48/kernel/mAdam/dense_48/bias/mAdam/dense_49/kernel/mAdam/dense_49/bias/mAdam/conv2d_58/kernel/vAdam/conv2d_58/bias/vAdam/conv2d_59/kernel/vAdam/conv2d_59/bias/vAdam/conv2d_60/kernel/vAdam/conv2d_60/bias/vAdam/conv2d_61/kernel/vAdam/conv2d_61/bias/vAdam/dense_46/kernel/vAdam/dense_46/bias/vAdam/dense_47/kernel/vAdam/dense_47/bias/vAdam/dense_48/kernel/vAdam/dense_48/bias/vAdam/dense_49/kernel/vAdam/dense_49/bias/v*E
Tin>
<2:*
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
!__inference__traced_restore_62683??

?s
?
__inference__traced_save_62502
file_prefix/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop/
+savev2_conv2d_59_kernel_read_readvariableop-
)savev2_conv2d_59_bias_read_readvariableop/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop.
*savev2_dense_49_kernel_read_readvariableop,
(savev2_dense_49_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_58_kernel_m_read_readvariableop4
0savev2_adam_conv2d_58_bias_m_read_readvariableop6
2savev2_adam_conv2d_59_kernel_m_read_readvariableop4
0savev2_adam_conv2d_59_bias_m_read_readvariableop6
2savev2_adam_conv2d_60_kernel_m_read_readvariableop4
0savev2_adam_conv2d_60_bias_m_read_readvariableop6
2savev2_adam_conv2d_61_kernel_m_read_readvariableop4
0savev2_adam_conv2d_61_bias_m_read_readvariableop5
1savev2_adam_dense_46_kernel_m_read_readvariableop3
/savev2_adam_dense_46_bias_m_read_readvariableop5
1savev2_adam_dense_47_kernel_m_read_readvariableop3
/savev2_adam_dense_47_bias_m_read_readvariableop5
1savev2_adam_dense_48_kernel_m_read_readvariableop3
/savev2_adam_dense_48_bias_m_read_readvariableop5
1savev2_adam_dense_49_kernel_m_read_readvariableop3
/savev2_adam_dense_49_bias_m_read_readvariableop6
2savev2_adam_conv2d_58_kernel_v_read_readvariableop4
0savev2_adam_conv2d_58_bias_v_read_readvariableop6
2savev2_adam_conv2d_59_kernel_v_read_readvariableop4
0savev2_adam_conv2d_59_bias_v_read_readvariableop6
2savev2_adam_conv2d_60_kernel_v_read_readvariableop4
0savev2_adam_conv2d_60_bias_v_read_readvariableop6
2savev2_adam_conv2d_61_kernel_v_read_readvariableop4
0savev2_adam_conv2d_61_bias_v_read_readvariableop5
1savev2_adam_dense_46_kernel_v_read_readvariableop3
/savev2_adam_dense_46_bias_v_read_readvariableop5
1savev2_adam_dense_47_kernel_v_read_readvariableop3
/savev2_adam_dense_47_bias_v_read_readvariableop5
1savev2_adam_dense_48_kernel_v_read_readvariableop3
/savev2_adam_dense_48_bias_v_read_readvariableop5
1savev2_adam_dense_49_kernel_v_read_readvariableop3
/savev2_adam_dense_49_bias_v_read_readvariableop
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
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop+savev2_conv2d_59_kernel_read_readvariableop)savev2_conv2d_59_bias_read_readvariableop+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop*savev2_dense_49_kernel_read_readvariableop(savev2_dense_49_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_58_kernel_m_read_readvariableop0savev2_adam_conv2d_58_bias_m_read_readvariableop2savev2_adam_conv2d_59_kernel_m_read_readvariableop0savev2_adam_conv2d_59_bias_m_read_readvariableop2savev2_adam_conv2d_60_kernel_m_read_readvariableop0savev2_adam_conv2d_60_bias_m_read_readvariableop2savev2_adam_conv2d_61_kernel_m_read_readvariableop0savev2_adam_conv2d_61_bias_m_read_readvariableop1savev2_adam_dense_46_kernel_m_read_readvariableop/savev2_adam_dense_46_bias_m_read_readvariableop1savev2_adam_dense_47_kernel_m_read_readvariableop/savev2_adam_dense_47_bias_m_read_readvariableop1savev2_adam_dense_48_kernel_m_read_readvariableop/savev2_adam_dense_48_bias_m_read_readvariableop1savev2_adam_dense_49_kernel_m_read_readvariableop/savev2_adam_dense_49_bias_m_read_readvariableop2savev2_adam_conv2d_58_kernel_v_read_readvariableop0savev2_adam_conv2d_58_bias_v_read_readvariableop2savev2_adam_conv2d_59_kernel_v_read_readvariableop0savev2_adam_conv2d_59_bias_v_read_readvariableop2savev2_adam_conv2d_60_kernel_v_read_readvariableop0savev2_adam_conv2d_60_bias_v_read_readvariableop2savev2_adam_conv2d_61_kernel_v_read_readvariableop0savev2_adam_conv2d_61_bias_v_read_readvariableop1savev2_adam_dense_46_kernel_v_read_readvariableop/savev2_adam_dense_46_bias_v_read_readvariableop1savev2_adam_dense_47_kernel_v_read_readvariableop/savev2_adam_dense_47_bias_v_read_readvariableop1savev2_adam_dense_48_kernel_v_read_readvariableop/savev2_adam_dense_48_bias_v_read_readvariableop1savev2_adam_dense_49_kernel_v_read_readvariableop/savev2_adam_dense_49_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : :  : :  : :
??:?:
??:?:	?@:@:@:: : : : : : : : : : : :  : :  : :  : :
??:?:
??:?:	?@:@:@:: : :  : :  : :  : :
??:?:
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
: :,(
&
_output_shapes
:  : 

_output_shapes
: :&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :, (
&
_output_shapes
:  : !

_output_shapes
: :&""
 
_output_shapes
:
??:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:%&!

_output_shapes
:	?@: '

_output_shapes
:@:$( 

_output_shapes

:@: )

_output_shapes
::,*(
&
_output_shapes
: : +

_output_shapes
: :,,(
&
_output_shapes
:  : -

_output_shapes
: :,.(
&
_output_shapes
:  : /

_output_shapes
: :,0(
&
_output_shapes
:  : 1

_output_shapes
: :&2"
 
_output_shapes
:
??:!3

_output_shapes	
:?:&4"
 
_output_shapes
:
??:!5

_output_shapes	
:?:%6!

_output_shapes
:	?@: 7

_output_shapes
:@:$8 

_output_shapes

:@: 9

_output_shapes
:::

_output_shapes
: 
?
L
0__inference_max_pooling2d_61_layer_call_fn_62207

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
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_613282
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_dense_47_layer_call_fn_62257

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
C__inference_dense_47_layer_call_and_return_conditional_losses_613662
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
?
F
*__inference_flatten_19_layer_call_fn_62222

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_613362
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?Y
?
H__inference_sequential_19_layer_call_and_return_conditional_losses_62057

inputsB
(conv2d_58_conv2d_readvariableop_resource: 7
)conv2d_58_biasadd_readvariableop_resource: B
(conv2d_59_conv2d_readvariableop_resource:  7
)conv2d_59_biasadd_readvariableop_resource: B
(conv2d_60_conv2d_readvariableop_resource:  7
)conv2d_60_biasadd_readvariableop_resource: B
(conv2d_61_conv2d_readvariableop_resource:  7
)conv2d_61_biasadd_readvariableop_resource: ;
'dense_46_matmul_readvariableop_resource:
??7
(dense_46_biasadd_readvariableop_resource:	?;
'dense_47_matmul_readvariableop_resource:
??7
(dense_47_biasadd_readvariableop_resource:	?:
'dense_48_matmul_readvariableop_resource:	?@6
(dense_48_biasadd_readvariableop_resource:@9
'dense_49_matmul_readvariableop_resource:@6
(dense_49_biasadd_readvariableop_resource:
identity?? conv2d_58/BiasAdd/ReadVariableOp?conv2d_58/Conv2D/ReadVariableOp? conv2d_59/BiasAdd/ReadVariableOp?conv2d_59/Conv2D/ReadVariableOp? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_58/Conv2D/ReadVariableOp?
conv2d_58/Conv2DConv2Dinputs'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_58/Conv2D?
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_58/BiasAdd/ReadVariableOp?
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_58/BiasAdd?
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_58/Relu?
max_pooling2d_58/MaxPoolMaxPoolconv2d_58/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_58/MaxPool?
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_59/Conv2D/ReadVariableOp?
conv2d_59/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2
conv2d_59/Conv2D?
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_59/BiasAdd/ReadVariableOp?
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_59/BiasAdd~
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_59/Relu?
max_pooling2d_59/MaxPoolMaxPoolconv2d_59/Relu:activations:0*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_59/MaxPool?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_60/Conv2D/ReadVariableOp?
conv2d_60/Conv2DConv2D!max_pooling2d_59/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2
conv2d_60/Conv2D?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_60/BiasAdd~
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_60/Relu?
max_pooling2d_60/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_60/MaxPool?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2D!max_pooling2d_60/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_61/Relu?
max_pooling2d_61/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_61/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_19/Const?
flatten_19/ReshapeReshape!max_pooling2d_61/MaxPool:output:0flatten_19/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_19/Reshape?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_46/MatMul/ReadVariableOp?
dense_46/MatMulMatMulflatten_19/Reshape:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/MatMul?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_46/BiasAdd/ReadVariableOp?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/BiasAddt
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_46/Relu?
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_47/MatMul/ReadVariableOp?
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_47/MatMul?
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_47/BiasAdd/ReadVariableOp?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_47/BiasAddt
dense_47/ReluReludense_47/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_47/Relu?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMuldense_47/Relu:activations:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_48/BiasAdds
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_48/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_49/BiasAdd|
dense_49/SoftmaxSoftmaxdense_49/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_49/Softmaxu
IdentityIdentitydense_49/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_dense_46_layer_call_and_return_conditional_losses_62248

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_48_layer_call_fn_62277

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
C__inference_dense_48_layer_call_and_return_conditional_losses_613832
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
?
L
0__inference_max_pooling2d_60_layer_call_fn_62162

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
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_611962
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
D__inference_conv2d_61_layer_call_and_return_conditional_losses_62197

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
:????????? *
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
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_61305

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
?Y
?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61991

inputsB
(conv2d_58_conv2d_readvariableop_resource: 7
)conv2d_58_biasadd_readvariableop_resource: B
(conv2d_59_conv2d_readvariableop_resource:  7
)conv2d_59_biasadd_readvariableop_resource: B
(conv2d_60_conv2d_readvariableop_resource:  7
)conv2d_60_biasadd_readvariableop_resource: B
(conv2d_61_conv2d_readvariableop_resource:  7
)conv2d_61_biasadd_readvariableop_resource: ;
'dense_46_matmul_readvariableop_resource:
??7
(dense_46_biasadd_readvariableop_resource:	?;
'dense_47_matmul_readvariableop_resource:
??7
(dense_47_biasadd_readvariableop_resource:	?:
'dense_48_matmul_readvariableop_resource:	?@6
(dense_48_biasadd_readvariableop_resource:@9
'dense_49_matmul_readvariableop_resource:@6
(dense_49_biasadd_readvariableop_resource:
identity?? conv2d_58/BiasAdd/ReadVariableOp?conv2d_58/Conv2D/ReadVariableOp? conv2d_59/BiasAdd/ReadVariableOp?conv2d_59/Conv2D/ReadVariableOp? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_58/Conv2D/ReadVariableOp?
conv2d_58/Conv2DConv2Dinputs'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_58/Conv2D?
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_58/BiasAdd/ReadVariableOp?
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_58/BiasAdd?
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_58/Relu?
max_pooling2d_58/MaxPoolMaxPoolconv2d_58/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_58/MaxPool?
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_59/Conv2D/ReadVariableOp?
conv2d_59/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2
conv2d_59/Conv2D?
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_59/BiasAdd/ReadVariableOp?
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_59/BiasAdd~
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
conv2d_59/Relu?
max_pooling2d_59/MaxPoolMaxPoolconv2d_59/Relu:activations:0*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_59/MaxPool?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_60/Conv2D/ReadVariableOp?
conv2d_60/Conv2DConv2D!max_pooling2d_59/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2
conv2d_60/Conv2D?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_60/BiasAdd~
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
conv2d_60/Relu?
max_pooling2d_60/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_60/MaxPool?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2D!max_pooling2d_60/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_61/Relu?
max_pooling2d_61/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_61/MaxPoolu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_19/Const?
flatten_19/ReshapeReshape!max_pooling2d_61/MaxPool:output:0flatten_19/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_19/Reshape?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_46/MatMul/ReadVariableOp?
dense_46/MatMulMatMulflatten_19/Reshape:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/MatMul?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_46/BiasAdd/ReadVariableOp?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/BiasAddt
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_46/Relu?
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_47/MatMul/ReadVariableOp?
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_47/MatMul?
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_47/BiasAdd/ReadVariableOp?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_47/BiasAddt
dense_47/ReluReludense_47/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_47/Relu?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMuldense_47/Relu:activations:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_48/BiasAdds
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_48/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_49/BiasAdd|
dense_49/SoftmaxSoftmaxdense_49/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_49/Softmaxu
IdentityIdentitydense_49/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_59_layer_call_fn_62127

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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_612822
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
?
C__inference_dense_48_layer_call_and_return_conditional_losses_62288

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
?=
?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61806
input_20)
conv2d_58_61760: 
conv2d_58_61762: )
conv2d_59_61766:  
conv2d_59_61768: )
conv2d_60_61772:  
conv2d_60_61774: )
conv2d_61_61778:  
conv2d_61_61780: "
dense_46_61785:
??
dense_46_61787:	?"
dense_47_61790:
??
dense_47_61792:	?!
dense_48_61795:	?@
dense_48_61797:@ 
dense_49_61800:@
dense_49_61802:
identity??!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallinput_20conv2d_58_61760conv2d_58_61762*
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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_612492#
!conv2d_58/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_612592"
 max_pooling2d_58/PartitionedCall?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_61766conv2d_59_61768*
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
D__inference_conv2d_59_layer_call_and_return_conditional_losses_612722#
!conv2d_59/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_612822"
 max_pooling2d_59/PartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_61772conv2d_60_61774*
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
D__inference_conv2d_60_layer_call_and_return_conditional_losses_612952#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_613052"
 max_pooling2d_60/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_60/PartitionedCall:output:0conv2d_61_61778conv2d_61_61780*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_613182#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_613282"
 max_pooling2d_61/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_613362
flatten_19/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_46_61785dense_46_61787*
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
C__inference_dense_46_layer_call_and_return_conditional_losses_613492"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_61790dense_47_61792*
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
C__inference_dense_47_layer_call_and_return_conditional_losses_613662"
 dense_47/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)dense_47/StatefulPartitionedCall:output:0dense_48_61795dense_48_61797*
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
C__inference_dense_48_layer_call_and_return_conditional_losses_613832"
 dense_48/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_61800dense_49_61802*
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
C__inference_dense_49_layer_call_and_return_conditional_losses_614002"
 dense_49/StatefulPartitionedCall?
IdentityIdentity)dense_49/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20
?
?
-__inference_sequential_19_layer_call_fn_61708
input_20!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?@

unknown_12:@

unknown_13:@

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_616362
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
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20
?
?
#__inference_signature_wrapper_61851
input_20!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?@

unknown_12:@

unknown_13:@

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_611432
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
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20
?
?
D__inference_conv2d_60_layer_call_and_return_conditional_losses_62157

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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_61249

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
?
L
0__inference_max_pooling2d_58_layer_call_fn_62087

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
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_612592
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
D__inference_conv2d_60_layer_call_and_return_conditional_losses_61295

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
0__inference_max_pooling2d_60_layer_call_fn_62167

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
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_613052
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
)__inference_conv2d_58_layer_call_fn_62066

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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_612492
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
?
?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_62117

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
?
?
)__inference_conv2d_59_layer_call_fn_62106

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
D__inference_conv2d_59_layer_call_and_return_conditional_losses_612722
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
?
?
C__inference_dense_49_layer_call_and_return_conditional_losses_62308

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
?
g
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_62172

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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_62137

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
g
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_62132

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
?
L
0__inference_max_pooling2d_61_layer_call_fn_62202

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
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_612182
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
?
g
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_62217

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
C__inference_dense_49_layer_call_and_return_conditional_losses_61400

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
?
?
-__inference_sequential_19_layer_call_fn_61925

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?@

unknown_12:@

unknown_13:@

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_616362
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
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_61282

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
?
?
)__inference_conv2d_60_layer_call_fn_62146

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
D__inference_conv2d_60_layer_call_and_return_conditional_losses_612952
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
?
L
0__inference_max_pooling2d_59_layer_call_fn_62122

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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_611742
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
?
g
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_61196

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
?
?
)__inference_conv2d_61_layer_call_fn_62186

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
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_613182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_61328

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?s
?
 __inference__wrapped_model_61143
input_20P
6sequential_19_conv2d_58_conv2d_readvariableop_resource: E
7sequential_19_conv2d_58_biasadd_readvariableop_resource: P
6sequential_19_conv2d_59_conv2d_readvariableop_resource:  E
7sequential_19_conv2d_59_biasadd_readvariableop_resource: P
6sequential_19_conv2d_60_conv2d_readvariableop_resource:  E
7sequential_19_conv2d_60_biasadd_readvariableop_resource: P
6sequential_19_conv2d_61_conv2d_readvariableop_resource:  E
7sequential_19_conv2d_61_biasadd_readvariableop_resource: I
5sequential_19_dense_46_matmul_readvariableop_resource:
??E
6sequential_19_dense_46_biasadd_readvariableop_resource:	?I
5sequential_19_dense_47_matmul_readvariableop_resource:
??E
6sequential_19_dense_47_biasadd_readvariableop_resource:	?H
5sequential_19_dense_48_matmul_readvariableop_resource:	?@D
6sequential_19_dense_48_biasadd_readvariableop_resource:@G
5sequential_19_dense_49_matmul_readvariableop_resource:@D
6sequential_19_dense_49_biasadd_readvariableop_resource:
identity??.sequential_19/conv2d_58/BiasAdd/ReadVariableOp?-sequential_19/conv2d_58/Conv2D/ReadVariableOp?.sequential_19/conv2d_59/BiasAdd/ReadVariableOp?-sequential_19/conv2d_59/Conv2D/ReadVariableOp?.sequential_19/conv2d_60/BiasAdd/ReadVariableOp?-sequential_19/conv2d_60/Conv2D/ReadVariableOp?.sequential_19/conv2d_61/BiasAdd/ReadVariableOp?-sequential_19/conv2d_61/Conv2D/ReadVariableOp?-sequential_19/dense_46/BiasAdd/ReadVariableOp?,sequential_19/dense_46/MatMul/ReadVariableOp?-sequential_19/dense_47/BiasAdd/ReadVariableOp?,sequential_19/dense_47/MatMul/ReadVariableOp?-sequential_19/dense_48/BiasAdd/ReadVariableOp?,sequential_19/dense_48/MatMul/ReadVariableOp?-sequential_19/dense_49/BiasAdd/ReadVariableOp?,sequential_19/dense_49/MatMul/ReadVariableOp?
-sequential_19/conv2d_58/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_19/conv2d_58/Conv2D/ReadVariableOp?
sequential_19/conv2d_58/Conv2DConv2Dinput_205sequential_19/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2 
sequential_19/conv2d_58/Conv2D?
.sequential_19/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_19/conv2d_58/BiasAdd/ReadVariableOp?
sequential_19/conv2d_58/BiasAddBiasAdd'sequential_19/conv2d_58/Conv2D:output:06sequential_19/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2!
sequential_19/conv2d_58/BiasAdd?
sequential_19/conv2d_58/ReluRelu(sequential_19/conv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
sequential_19/conv2d_58/Relu?
&sequential_19/max_pooling2d_58/MaxPoolMaxPool*sequential_19/conv2d_58/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2(
&sequential_19/max_pooling2d_58/MaxPool?
-sequential_19/conv2d_59/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_19/conv2d_59/Conv2D/ReadVariableOp?
sequential_19/conv2d_59/Conv2DConv2D/sequential_19/max_pooling2d_58/MaxPool:output:05sequential_19/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH *
paddingVALID*
strides
2 
sequential_19/conv2d_59/Conv2D?
.sequential_19/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_19/conv2d_59/BiasAdd/ReadVariableOp?
sequential_19/conv2d_59/BiasAddBiasAdd'sequential_19/conv2d_59/Conv2D:output:06sequential_19/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH 2!
sequential_19/conv2d_59/BiasAdd?
sequential_19/conv2d_59/ReluRelu(sequential_19/conv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH 2
sequential_19/conv2d_59/Relu?
&sequential_19/max_pooling2d_59/MaxPoolMaxPool*sequential_19/conv2d_59/Relu:activations:0*/
_output_shapes
:?????????$$ *
ksize
*
paddingVALID*
strides
2(
&sequential_19/max_pooling2d_59/MaxPool?
-sequential_19/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_19/conv2d_60/Conv2D/ReadVariableOp?
sequential_19/conv2d_60/Conv2DConv2D/sequential_19/max_pooling2d_59/MaxPool:output:05sequential_19/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" *
paddingVALID*
strides
2 
sequential_19/conv2d_60/Conv2D?
.sequential_19/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_19/conv2d_60/BiasAdd/ReadVariableOp?
sequential_19/conv2d_60/BiasAddBiasAdd'sequential_19/conv2d_60/Conv2D:output:06sequential_19/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"" 2!
sequential_19/conv2d_60/BiasAdd?
sequential_19/conv2d_60/ReluRelu(sequential_19/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"" 2
sequential_19/conv2d_60/Relu?
&sequential_19/max_pooling2d_60/MaxPoolMaxPool*sequential_19/conv2d_60/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_19/max_pooling2d_60/MaxPool?
-sequential_19/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_19/conv2d_61/Conv2D/ReadVariableOp?
sequential_19/conv2d_61/Conv2DConv2D/sequential_19/max_pooling2d_60/MaxPool:output:05sequential_19/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2 
sequential_19/conv2d_61/Conv2D?
.sequential_19/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_19/conv2d_61/BiasAdd/ReadVariableOp?
sequential_19/conv2d_61/BiasAddBiasAdd'sequential_19/conv2d_61/Conv2D:output:06sequential_19/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2!
sequential_19/conv2d_61/BiasAdd?
sequential_19/conv2d_61/ReluRelu(sequential_19/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_19/conv2d_61/Relu?
&sequential_19/max_pooling2d_61/MaxPoolMaxPool*sequential_19/conv2d_61/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_19/max_pooling2d_61/MaxPool?
sequential_19/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_19/flatten_19/Const?
 sequential_19/flatten_19/ReshapeReshape/sequential_19/max_pooling2d_61/MaxPool:output:0'sequential_19/flatten_19/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_19/flatten_19/Reshape?
,sequential_19/dense_46/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_19/dense_46/MatMul/ReadVariableOp?
sequential_19/dense_46/MatMulMatMul)sequential_19/flatten_19/Reshape:output:04sequential_19/dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_19/dense_46/MatMul?
-sequential_19/dense_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_19/dense_46/BiasAdd/ReadVariableOp?
sequential_19/dense_46/BiasAddBiasAdd'sequential_19/dense_46/MatMul:product:05sequential_19/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_19/dense_46/BiasAdd?
sequential_19/dense_46/ReluRelu'sequential_19/dense_46/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_19/dense_46/Relu?
,sequential_19/dense_47/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_47_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_19/dense_47/MatMul/ReadVariableOp?
sequential_19/dense_47/MatMulMatMul)sequential_19/dense_46/Relu:activations:04sequential_19/dense_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_19/dense_47/MatMul?
-sequential_19/dense_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_47_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_19/dense_47/BiasAdd/ReadVariableOp?
sequential_19/dense_47/BiasAddBiasAdd'sequential_19/dense_47/MatMul:product:05sequential_19/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_19/dense_47/BiasAdd?
sequential_19/dense_47/ReluRelu'sequential_19/dense_47/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_19/dense_47/Relu?
,sequential_19/dense_48/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_48_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,sequential_19/dense_48/MatMul/ReadVariableOp?
sequential_19/dense_48/MatMulMatMul)sequential_19/dense_47/Relu:activations:04sequential_19/dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_19/dense_48/MatMul?
-sequential_19/dense_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_48_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_19/dense_48/BiasAdd/ReadVariableOp?
sequential_19/dense_48/BiasAddBiasAdd'sequential_19/dense_48/MatMul:product:05sequential_19/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_19/dense_48/BiasAdd?
sequential_19/dense_48/ReluRelu'sequential_19/dense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_19/dense_48/Relu?
,sequential_19/dense_49/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_49_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_19/dense_49/MatMul/ReadVariableOp?
sequential_19/dense_49/MatMulMatMul)sequential_19/dense_48/Relu:activations:04sequential_19/dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_49/MatMul?
-sequential_19/dense_49/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_49/BiasAdd/ReadVariableOp?
sequential_19/dense_49/BiasAddBiasAdd'sequential_19/dense_49/MatMul:product:05sequential_19/dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_49/BiasAdd?
sequential_19/dense_49/SoftmaxSoftmax'sequential_19/dense_49/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_49/Softmax?
IdentityIdentity(sequential_19/dense_49/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp/^sequential_19/conv2d_58/BiasAdd/ReadVariableOp.^sequential_19/conv2d_58/Conv2D/ReadVariableOp/^sequential_19/conv2d_59/BiasAdd/ReadVariableOp.^sequential_19/conv2d_59/Conv2D/ReadVariableOp/^sequential_19/conv2d_60/BiasAdd/ReadVariableOp.^sequential_19/conv2d_60/Conv2D/ReadVariableOp/^sequential_19/conv2d_61/BiasAdd/ReadVariableOp.^sequential_19/conv2d_61/Conv2D/ReadVariableOp.^sequential_19/dense_46/BiasAdd/ReadVariableOp-^sequential_19/dense_46/MatMul/ReadVariableOp.^sequential_19/dense_47/BiasAdd/ReadVariableOp-^sequential_19/dense_47/MatMul/ReadVariableOp.^sequential_19/dense_48/BiasAdd/ReadVariableOp-^sequential_19/dense_48/MatMul/ReadVariableOp.^sequential_19/dense_49/BiasAdd/ReadVariableOp-^sequential_19/dense_49/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 2`
.sequential_19/conv2d_58/BiasAdd/ReadVariableOp.sequential_19/conv2d_58/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_58/Conv2D/ReadVariableOp-sequential_19/conv2d_58/Conv2D/ReadVariableOp2`
.sequential_19/conv2d_59/BiasAdd/ReadVariableOp.sequential_19/conv2d_59/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_59/Conv2D/ReadVariableOp-sequential_19/conv2d_59/Conv2D/ReadVariableOp2`
.sequential_19/conv2d_60/BiasAdd/ReadVariableOp.sequential_19/conv2d_60/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_60/Conv2D/ReadVariableOp-sequential_19/conv2d_60/Conv2D/ReadVariableOp2`
.sequential_19/conv2d_61/BiasAdd/ReadVariableOp.sequential_19/conv2d_61/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_61/Conv2D/ReadVariableOp-sequential_19/conv2d_61/Conv2D/ReadVariableOp2^
-sequential_19/dense_46/BiasAdd/ReadVariableOp-sequential_19/dense_46/BiasAdd/ReadVariableOp2\
,sequential_19/dense_46/MatMul/ReadVariableOp,sequential_19/dense_46/MatMul/ReadVariableOp2^
-sequential_19/dense_47/BiasAdd/ReadVariableOp-sequential_19/dense_47/BiasAdd/ReadVariableOp2\
,sequential_19/dense_47/MatMul/ReadVariableOp,sequential_19/dense_47/MatMul/ReadVariableOp2^
-sequential_19/dense_48/BiasAdd/ReadVariableOp-sequential_19/dense_48/BiasAdd/ReadVariableOp2\
,sequential_19/dense_48/MatMul/ReadVariableOp,sequential_19/dense_48/MatMul/ReadVariableOp2^
-sequential_19/dense_49/BiasAdd/ReadVariableOp-sequential_19/dense_49/BiasAdd/ReadVariableOp2\
,sequential_19/dense_49/MatMul/ReadVariableOp,sequential_19/dense_49/MatMul/ReadVariableOp:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20
?
g
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_62097

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
?=
?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61407

inputs)
conv2d_58_61250: 
conv2d_58_61252: )
conv2d_59_61273:  
conv2d_59_61275: )
conv2d_60_61296:  
conv2d_60_61298: )
conv2d_61_61319:  
conv2d_61_61321: "
dense_46_61350:
??
dense_46_61352:	?"
dense_47_61367:
??
dense_47_61369:	?!
dense_48_61384:	?@
dense_48_61386:@ 
dense_49_61401:@
dense_49_61403:
identity??!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_58_61250conv2d_58_61252*
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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_612492#
!conv2d_58/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_612592"
 max_pooling2d_58/PartitionedCall?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_61273conv2d_59_61275*
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
D__inference_conv2d_59_layer_call_and_return_conditional_losses_612722#
!conv2d_59/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_612822"
 max_pooling2d_59/PartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_61296conv2d_60_61298*
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
D__inference_conv2d_60_layer_call_and_return_conditional_losses_612952#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_613052"
 max_pooling2d_60/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_60/PartitionedCall:output:0conv2d_61_61319conv2d_61_61321*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_613182#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_613282"
 max_pooling2d_61/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_613362
flatten_19/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_46_61350dense_46_61352*
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
C__inference_dense_46_layer_call_and_return_conditional_losses_613492"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_61367dense_47_61369*
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
C__inference_dense_47_layer_call_and_return_conditional_losses_613662"
 dense_47/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)dense_47/StatefulPartitionedCall:output:0dense_48_61384dense_48_61386*
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
C__inference_dense_48_layer_call_and_return_conditional_losses_613832"
 dense_48/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_61401dense_49_61403*
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
C__inference_dense_49_layer_call_and_return_conditional_losses_614002"
 dense_49/StatefulPartitionedCall?
IdentityIdentity)dense_49/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_19_layer_call_fn_61888

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?@

unknown_12:@

unknown_13:@

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_614072
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
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_61152

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
D__inference_conv2d_59_layer_call_and_return_conditional_losses_61272

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
?
L
0__inference_max_pooling2d_58_layer_call_fn_62082

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
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_611522
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
?
g
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_61218

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
D__inference_conv2d_61_layer_call_and_return_conditional_losses_61318

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
:????????? *
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
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_62177

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
?=
?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61636

inputs)
conv2d_58_61590: 
conv2d_58_61592: )
conv2d_59_61596:  
conv2d_59_61598: )
conv2d_60_61602:  
conv2d_60_61604: )
conv2d_61_61608:  
conv2d_61_61610: "
dense_46_61615:
??
dense_46_61617:	?"
dense_47_61620:
??
dense_47_61622:	?!
dense_48_61625:	?@
dense_48_61627:@ 
dense_49_61630:@
dense_49_61632:
identity??!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_58_61590conv2d_58_61592*
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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_612492#
!conv2d_58/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_612592"
 max_pooling2d_58/PartitionedCall?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_61596conv2d_59_61598*
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
D__inference_conv2d_59_layer_call_and_return_conditional_losses_612722#
!conv2d_59/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_612822"
 max_pooling2d_59/PartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_61602conv2d_60_61604*
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
D__inference_conv2d_60_layer_call_and_return_conditional_losses_612952#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_613052"
 max_pooling2d_60/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_60/PartitionedCall:output:0conv2d_61_61608conv2d_61_61610*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_613182#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_613282"
 max_pooling2d_61/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_613362
flatten_19/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_46_61615dense_46_61617*
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
C__inference_dense_46_layer_call_and_return_conditional_losses_613492"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_61620dense_47_61622*
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
C__inference_dense_47_layer_call_and_return_conditional_losses_613662"
 dense_47/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)dense_47/StatefulPartitionedCall:output:0dense_48_61625dense_48_61627*
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
C__inference_dense_48_layer_call_and_return_conditional_losses_613832"
 dense_48/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_61630dense_49_61632*
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
C__inference_dense_49_layer_call_and_return_conditional_losses_614002"
 dense_49/StatefulPartitionedCall?
IdentityIdentity)dense_49/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_dense_47_layer_call_and_return_conditional_losses_62268

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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_62077

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
?
?
-__inference_sequential_19_layer_call_fn_61442
input_20!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?@

unknown_12:@

unknown_13:@

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_614072
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
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20
?
?
(__inference_dense_46_layer_call_fn_62237

inputs
unknown:
??
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
C__inference_dense_46_layer_call_and_return_conditional_losses_613492
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_49_layer_call_fn_62297

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
C__inference_dense_49_layer_call_and_return_conditional_losses_614002
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
C__inference_dense_48_layer_call_and_return_conditional_losses_61383

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
?=
?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61757
input_20)
conv2d_58_61711: 
conv2d_58_61713: )
conv2d_59_61717:  
conv2d_59_61719: )
conv2d_60_61723:  
conv2d_60_61725: )
conv2d_61_61729:  
conv2d_61_61731: "
dense_46_61736:
??
dense_46_61738:	?"
dense_47_61741:
??
dense_47_61743:	?!
dense_48_61746:	?@
dense_48_61748:@ 
dense_49_61751:@
dense_49_61753:
identity??!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallinput_20conv2d_58_61711conv2d_58_61713*
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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_612492#
!conv2d_58/StatefulPartitionedCall?
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_612592"
 max_pooling2d_58/PartitionedCall?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_61717conv2d_59_61719*
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
D__inference_conv2d_59_layer_call_and_return_conditional_losses_612722#
!conv2d_59/StatefulPartitionedCall?
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_612822"
 max_pooling2d_59/PartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_61723conv2d_60_61725*
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
D__inference_conv2d_60_layer_call_and_return_conditional_losses_612952#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_613052"
 max_pooling2d_60/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_60/PartitionedCall:output:0conv2d_61_61729conv2d_61_61731*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_613182#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_613282"
 max_pooling2d_61/PartitionedCall?
flatten_19/PartitionedCallPartitionedCall)max_pooling2d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_19_layer_call_and_return_conditional_losses_613362
flatten_19/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_46_61736dense_46_61738*
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
C__inference_dense_46_layer_call_and_return_conditional_losses_613492"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_61741dense_47_61743*
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
C__inference_dense_47_layer_call_and_return_conditional_losses_613662"
 dense_47/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)dense_47/StatefulPartitionedCall:output:0dense_48_61746dense_48_61748*
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
C__inference_dense_48_layer_call_and_return_conditional_losses_613832"
 dense_48/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_61751dense_49_61753*
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
C__inference_dense_49_layer_call_and_return_conditional_losses_614002"
 dense_49/StatefulPartitionedCall?
IdentityIdentity)dense_49/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:???????????: : : : : : : : : : : : : : : : 2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_20
?
g
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_61259

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
?
g
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_61174

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
C__inference_dense_46_layer_call_and_return_conditional_losses_61349

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_19_layer_call_and_return_conditional_losses_61336

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_62092

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
a
E__inference_flatten_19_layer_call_and_return_conditional_losses_62228

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_62212

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
??
?#
!__inference__traced_restore_62683
file_prefix;
!assignvariableop_conv2d_58_kernel: /
!assignvariableop_1_conv2d_58_bias: =
#assignvariableop_2_conv2d_59_kernel:  /
!assignvariableop_3_conv2d_59_bias: =
#assignvariableop_4_conv2d_60_kernel:  /
!assignvariableop_5_conv2d_60_bias: =
#assignvariableop_6_conv2d_61_kernel:  /
!assignvariableop_7_conv2d_61_bias: 6
"assignvariableop_8_dense_46_kernel:
??/
 assignvariableop_9_dense_46_bias:	?7
#assignvariableop_10_dense_47_kernel:
??0
!assignvariableop_11_dense_47_bias:	?6
#assignvariableop_12_dense_48_kernel:	?@/
!assignvariableop_13_dense_48_bias:@5
#assignvariableop_14_dense_49_kernel:@/
!assignvariableop_15_dense_49_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: E
+assignvariableop_25_adam_conv2d_58_kernel_m: 7
)assignvariableop_26_adam_conv2d_58_bias_m: E
+assignvariableop_27_adam_conv2d_59_kernel_m:  7
)assignvariableop_28_adam_conv2d_59_bias_m: E
+assignvariableop_29_adam_conv2d_60_kernel_m:  7
)assignvariableop_30_adam_conv2d_60_bias_m: E
+assignvariableop_31_adam_conv2d_61_kernel_m:  7
)assignvariableop_32_adam_conv2d_61_bias_m: >
*assignvariableop_33_adam_dense_46_kernel_m:
??7
(assignvariableop_34_adam_dense_46_bias_m:	?>
*assignvariableop_35_adam_dense_47_kernel_m:
??7
(assignvariableop_36_adam_dense_47_bias_m:	?=
*assignvariableop_37_adam_dense_48_kernel_m:	?@6
(assignvariableop_38_adam_dense_48_bias_m:@<
*assignvariableop_39_adam_dense_49_kernel_m:@6
(assignvariableop_40_adam_dense_49_bias_m:E
+assignvariableop_41_adam_conv2d_58_kernel_v: 7
)assignvariableop_42_adam_conv2d_58_bias_v: E
+assignvariableop_43_adam_conv2d_59_kernel_v:  7
)assignvariableop_44_adam_conv2d_59_bias_v: E
+assignvariableop_45_adam_conv2d_60_kernel_v:  7
)assignvariableop_46_adam_conv2d_60_bias_v: E
+assignvariableop_47_adam_conv2d_61_kernel_v:  7
)assignvariableop_48_adam_conv2d_61_bias_v: >
*assignvariableop_49_adam_dense_46_kernel_v:
??7
(assignvariableop_50_adam_dense_46_bias_v:	?>
*assignvariableop_51_adam_dense_47_kernel_v:
??7
(assignvariableop_52_adam_dense_47_bias_v:	?=
*assignvariableop_53_adam_dense_48_kernel_v:	?@6
(assignvariableop_54_adam_dense_48_bias_v:@<
*assignvariableop_55_adam_dense_49_kernel_v:@6
(assignvariableop_56_adam_dense_49_bias_v:
identity_58??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9? 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_58_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_58_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_59_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_59_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_60_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_60_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_61_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_61_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_46_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_46_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_47_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_47_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_48_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_48_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_49_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_49_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_58_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_58_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_59_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_59_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_60_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_60_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_61_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_61_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_46_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_46_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_47_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_47_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_48_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_48_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_49_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_49_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_58_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_58_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_59_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_59_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_60_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_60_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_61_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_61_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_46_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_46_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_47_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_47_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_48_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_48_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_49_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_49_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57f
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_58?

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_58Identity_58:output:0*?
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
C__inference_dense_47_layer_call_and_return_conditional_losses_61366

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
input_20;
serving_default_input_20:0???????????<
dense_490
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
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$regularization_losses
%	variables
&trainable_variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.regularization_losses
/	variables
0trainable_variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8regularization_losses
9	variables
:trainable_variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
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
?

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem?m?m?m?(m?)m?2m?3m?@m?Am?Fm?Gm?Lm?Mm?Rm?Sm?v?v?v?v?(v?)v?2v?3v?@v?Av?Fv?Gv?Lv?Mv?Rv?Sv?"
	optimizer
 "
trackable_list_wrapper
?
0
1
2
3
(4
)5
26
37
@8
A9
F10
G11
L12
M13
R14
S15"
trackable_list_wrapper
?
0
1
2
3
(4
)5
26
37
@8
A9
F10
G11
L12
M13
R14
S15"
trackable_list_wrapper
?
regularization_losses

]layers
^layer_regularization_losses
	variables
_non_trainable_variables
trainable_variables
`metrics
alayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_58/kernel
: 2conv2d_58/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

blayers
clayer_regularization_losses
	variables
dnon_trainable_variables
trainable_variables
emetrics
flayer_metrics
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
regularization_losses

glayers
hlayer_regularization_losses
	variables
inon_trainable_variables
trainable_variables
jmetrics
klayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_59/kernel
: 2conv2d_59/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
 regularization_losses

llayers
mlayer_regularization_losses
!	variables
nnon_trainable_variables
"trainable_variables
ometrics
player_metrics
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
$regularization_losses

qlayers
rlayer_regularization_losses
%	variables
snon_trainable_variables
&trainable_variables
tmetrics
ulayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_60/kernel
: 2conv2d_60/bias
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
*regularization_losses

vlayers
wlayer_regularization_losses
+	variables
xnon_trainable_variables
,trainable_variables
ymetrics
zlayer_metrics
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
.regularization_losses

{layers
|layer_regularization_losses
/	variables
}non_trainable_variables
0trainable_variables
~metrics
layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_61/kernel
: 2conv2d_61/bias
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
4regularization_losses
?layers
 ?layer_regularization_losses
5	variables
?non_trainable_variables
6trainable_variables
?metrics
?layer_metrics
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
8regularization_losses
?layers
 ?layer_regularization_losses
9	variables
?non_trainable_variables
:trainable_variables
?metrics
?layer_metrics
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
<regularization_losses
?layers
 ?layer_regularization_losses
=	variables
?non_trainable_variables
>trainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_46/kernel
:?2dense_46/bias
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
#:!
??2dense_47/kernel
:?2dense_47/bias
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
": 	?@2dense_48/kernel
:@2dense_48/bias
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
Nregularization_losses
?layers
 ?layer_regularization_losses
O	variables
?non_trainable_variables
Ptrainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_49/kernel
:2dense_49/bias
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
?
Tregularization_losses
?layers
 ?layer_regularization_losses
U	variables
?non_trainable_variables
Vtrainable_variables
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
~
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
11
12"
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
/:- 2Adam/conv2d_58/kernel/m
!: 2Adam/conv2d_58/bias/m
/:-  2Adam/conv2d_59/kernel/m
!: 2Adam/conv2d_59/bias/m
/:-  2Adam/conv2d_60/kernel/m
!: 2Adam/conv2d_60/bias/m
/:-  2Adam/conv2d_61/kernel/m
!: 2Adam/conv2d_61/bias/m
(:&
??2Adam/dense_46/kernel/m
!:?2Adam/dense_46/bias/m
(:&
??2Adam/dense_47/kernel/m
!:?2Adam/dense_47/bias/m
':%	?@2Adam/dense_48/kernel/m
 :@2Adam/dense_48/bias/m
&:$@2Adam/dense_49/kernel/m
 :2Adam/dense_49/bias/m
/:- 2Adam/conv2d_58/kernel/v
!: 2Adam/conv2d_58/bias/v
/:-  2Adam/conv2d_59/kernel/v
!: 2Adam/conv2d_59/bias/v
/:-  2Adam/conv2d_60/kernel/v
!: 2Adam/conv2d_60/bias/v
/:-  2Adam/conv2d_61/kernel/v
!: 2Adam/conv2d_61/bias/v
(:&
??2Adam/dense_46/kernel/v
!:?2Adam/dense_46/bias/v
(:&
??2Adam/dense_47/kernel/v
!:?2Adam/dense_47/bias/v
':%	?@2Adam/dense_48/kernel/v
 :@2Adam/dense_48/bias/v
&:$@2Adam/dense_49/kernel/v
 :2Adam/dense_49/bias/v
?B?
 __inference__wrapped_model_61143input_20"?
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
-__inference_sequential_19_layer_call_fn_61442
-__inference_sequential_19_layer_call_fn_61888
-__inference_sequential_19_layer_call_fn_61925
-__inference_sequential_19_layer_call_fn_61708?
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
H__inference_sequential_19_layer_call_and_return_conditional_losses_61991
H__inference_sequential_19_layer_call_and_return_conditional_losses_62057
H__inference_sequential_19_layer_call_and_return_conditional_losses_61757
H__inference_sequential_19_layer_call_and_return_conditional_losses_61806?
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
)__inference_conv2d_58_layer_call_fn_62066?
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
D__inference_conv2d_58_layer_call_and_return_conditional_losses_62077?
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
0__inference_max_pooling2d_58_layer_call_fn_62082
0__inference_max_pooling2d_58_layer_call_fn_62087?
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
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_62092
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_62097?
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
)__inference_conv2d_59_layer_call_fn_62106?
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
D__inference_conv2d_59_layer_call_and_return_conditional_losses_62117?
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
0__inference_max_pooling2d_59_layer_call_fn_62122
0__inference_max_pooling2d_59_layer_call_fn_62127?
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
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_62132
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_62137?
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
)__inference_conv2d_60_layer_call_fn_62146?
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
D__inference_conv2d_60_layer_call_and_return_conditional_losses_62157?
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
0__inference_max_pooling2d_60_layer_call_fn_62162
0__inference_max_pooling2d_60_layer_call_fn_62167?
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
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_62172
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_62177?
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
)__inference_conv2d_61_layer_call_fn_62186?
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
D__inference_conv2d_61_layer_call_and_return_conditional_losses_62197?
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
0__inference_max_pooling2d_61_layer_call_fn_62202
0__inference_max_pooling2d_61_layer_call_fn_62207?
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
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_62212
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_62217?
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
*__inference_flatten_19_layer_call_fn_62222?
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
E__inference_flatten_19_layer_call_and_return_conditional_losses_62228?
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
(__inference_dense_46_layer_call_fn_62237?
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
C__inference_dense_46_layer_call_and_return_conditional_losses_62248?
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
(__inference_dense_47_layer_call_fn_62257?
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
C__inference_dense_47_layer_call_and_return_conditional_losses_62268?
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
(__inference_dense_48_layer_call_fn_62277?
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
C__inference_dense_48_layer_call_and_return_conditional_losses_62288?
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
(__inference_dense_49_layer_call_fn_62297?
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
C__inference_dense_49_layer_call_and_return_conditional_losses_62308?
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
#__inference_signature_wrapper_61851input_20"?
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
 __inference__wrapped_model_61143?()23@AFGLMRS;?8
1?.
,?)
input_20???????????
? "3?0
.
dense_49"?
dense_49??????????
D__inference_conv2d_58_layer_call_and_return_conditional_losses_62077p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
)__inference_conv2d_58_layer_call_fn_62066c9?6
/?,
*?'
inputs???????????
? ""???????????? ?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_62117l7?4
-?*
(?%
inputs?????????JJ 
? "-?*
#? 
0?????????HH 
? ?
)__inference_conv2d_59_layer_call_fn_62106_7?4
-?*
(?%
inputs?????????JJ 
? " ??????????HH ?
D__inference_conv2d_60_layer_call_and_return_conditional_losses_62157l()7?4
-?*
(?%
inputs?????????$$ 
? "-?*
#? 
0?????????"" 
? ?
)__inference_conv2d_60_layer_call_fn_62146_()7?4
-?*
(?%
inputs?????????$$ 
? " ??????????"" ?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_62197l237?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
)__inference_conv2d_61_layer_call_fn_62186_237?4
-?*
(?%
inputs????????? 
? " ?????????? ?
C__inference_dense_46_layer_call_and_return_conditional_losses_62248^@A0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_46_layer_call_fn_62237Q@A0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_47_layer_call_and_return_conditional_losses_62268^FG0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_47_layer_call_fn_62257QFG0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_48_layer_call_and_return_conditional_losses_62288]LM0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_48_layer_call_fn_62277PLM0?-
&?#
!?
inputs??????????
? "??????????@?
C__inference_dense_49_layer_call_and_return_conditional_losses_62308\RS/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_49_layer_call_fn_62297ORS/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_flatten_19_layer_call_and_return_conditional_losses_62228a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? ?
*__inference_flatten_19_layer_call_fn_62222T7?4
-?*
(?%
inputs????????? 
? "????????????
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_62092?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_62097j9?6
/?,
*?'
inputs??????????? 
? "-?*
#? 
0?????????JJ 
? ?
0__inference_max_pooling2d_58_layer_call_fn_62082?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_58_layer_call_fn_62087]9?6
/?,
*?'
inputs??????????? 
? " ??????????JJ ?
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_62132?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_62137h7?4
-?*
(?%
inputs?????????HH 
? "-?*
#? 
0?????????$$ 
? ?
0__inference_max_pooling2d_59_layer_call_fn_62122?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_59_layer_call_fn_62127[7?4
-?*
(?%
inputs?????????HH 
? " ??????????$$ ?
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_62172?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_62177h7?4
-?*
(?%
inputs?????????"" 
? "-?*
#? 
0????????? 
? ?
0__inference_max_pooling2d_60_layer_call_fn_62162?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_60_layer_call_fn_62167[7?4
-?*
(?%
inputs?????????"" 
? " ?????????? ?
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_62212?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_62217h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
0__inference_max_pooling2d_61_layer_call_fn_62202?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_61_layer_call_fn_62207[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61757~()23@AFGLMRSC?@
9?6
,?)
input_20???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61806~()23@AFGLMRSC?@
9?6
,?)
input_20???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_19_layer_call_and_return_conditional_losses_61991|()23@AFGLMRSA?>
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
H__inference_sequential_19_layer_call_and_return_conditional_losses_62057|()23@AFGLMRSA?>
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
-__inference_sequential_19_layer_call_fn_61442q()23@AFGLMRSC?@
9?6
,?)
input_20???????????
p 

 
? "???????????
-__inference_sequential_19_layer_call_fn_61708q()23@AFGLMRSC?@
9?6
,?)
input_20???????????
p

 
? "???????????
-__inference_sequential_19_layer_call_fn_61888o()23@AFGLMRSA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_sequential_19_layer_call_fn_61925o()23@AFGLMRSA?>
7?4
*?'
inputs???????????
p

 
? "???????????
#__inference_signature_wrapper_61851?()23@AFGLMRSG?D
? 
=?:
8
input_20,?)
input_20???????????"3?0
.
dense_49"?
dense_49?????????