ХУ
эО
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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

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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8ЈТ

conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_54/kernel
}
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*&
_output_shapes
: *
dtype0
t
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_54/bias
m
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes
: *
dtype0

conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_55/kernel
}
$conv2d_55/kernel/Read/ReadVariableOpReadVariableOpconv2d_55/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_55/bias
m
"conv2d_55/bias/Read/ReadVariableOpReadVariableOpconv2d_55/bias*
_output_shapes
: *
dtype0

conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_56/kernel
}
$conv2d_56/kernel/Read/ReadVariableOpReadVariableOpconv2d_56/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_56/bias
m
"conv2d_56/bias/Read/ReadVariableOpReadVariableOpconv2d_56/bias*
_output_shapes
: *
dtype0

conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes
: *
dtype0
|
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 * 
shared_namedense_42/kernel
u
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel* 
_output_shapes
:
 *
dtype0
s
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_42/bias
l
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes	
:*
dtype0
|
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_43/kernel
u
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel* 
_output_shapes
:
*
dtype0
s
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_43/bias
l
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes	
:*
dtype0
{
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_44/kernel
t
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes
:	@*
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes
:@*
dtype0
z
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_45/kernel
s
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes

:@*
dtype0
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
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

Adam/conv2d_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_54/kernel/m

+Adam/conv2d_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_54/bias/m
{
)Adam/conv2d_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_55/kernel/m

+Adam/conv2d_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_55/bias/m
{
)Adam/conv2d_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_56/kernel/m

+Adam/conv2d_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_56/bias/m
{
)Adam/conv2d_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_57/kernel/m

+Adam/conv2d_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_57/bias/m
{
)Adam/conv2d_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/m*
_output_shapes
: *
dtype0

Adam/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *'
shared_nameAdam/dense_42/kernel/m

*Adam/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/m* 
_output_shapes
:
 *
dtype0

Adam/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_42/bias/m
z
(Adam/dense_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_43/kernel/m

*Adam/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_43/bias/m
z
(Adam/dense_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_44/kernel/m

*Adam/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_44/bias/m
y
(Adam/dense_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_45/kernel/m

*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes

:@*
dtype0

Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_54/kernel/v

+Adam/conv2d_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_54/bias/v
{
)Adam/conv2d_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_55/kernel/v

+Adam/conv2d_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_55/bias/v
{
)Adam/conv2d_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_56/kernel/v

+Adam/conv2d_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_56/bias/v
{
)Adam/conv2d_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_57/kernel/v

+Adam/conv2d_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_57/bias/v
{
)Adam/conv2d_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/v*
_output_shapes
: *
dtype0

Adam/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *'
shared_nameAdam/dense_42/kernel/v

*Adam/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/v* 
_output_shapes
:
 *
dtype0

Adam/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_42/bias/v
z
(Adam/dense_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_43/kernel/v

*Adam/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_43/bias/v
z
(Adam/dense_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_44/kernel/v

*Adam/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_44/bias/v
y
(Adam/dense_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_45/kernel/v

*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes

:@*
dtype0

Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ь]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*]
value§\Bњ\ Bѓ\
э
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

Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratemЎmЏmАmБ(mВ)mГ2mД3mЕ@mЖAmЗFmИGmЙLmКMmЛRmМSmНvОvПvРvС(vТ)vУ2vФ3vХ@vЦAvЧFvШGvЩLvЪMvЫRvЬSvЭ
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
­
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
VARIABLE_VALUEconv2d_54/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_54/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
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
­
regularization_losses

glayers
hlayer_regularization_losses
	variables
inon_trainable_variables
trainable_variables
jmetrics
klayer_metrics
\Z
VARIABLE_VALUEconv2d_55/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_55/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
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
­
$regularization_losses

qlayers
rlayer_regularization_losses
%	variables
snon_trainable_variables
&trainable_variables
tmetrics
ulayer_metrics
\Z
VARIABLE_VALUEconv2d_56/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_56/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
­
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
­
.regularization_losses

{layers
|layer_regularization_losses
/	variables
}non_trainable_variables
0trainable_variables
~metrics
layer_metrics
\Z
VARIABLE_VALUEconv2d_57/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_57/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
В
4regularization_losses
layers
 layer_regularization_losses
5	variables
non_trainable_variables
6trainable_variables
metrics
layer_metrics
 
 
 
В
8regularization_losses
layers
 layer_regularization_losses
9	variables
non_trainable_variables
:trainable_variables
metrics
layer_metrics
 
 
 
В
<regularization_losses
layers
 layer_regularization_losses
=	variables
non_trainable_variables
>trainable_variables
metrics
layer_metrics
[Y
VARIABLE_VALUEdense_42/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_42/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

@0
A1

@0
A1
В
Bregularization_losses
layers
 layer_regularization_losses
C	variables
non_trainable_variables
Dtrainable_variables
metrics
layer_metrics
[Y
VARIABLE_VALUEdense_43/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_43/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1

F0
G1
В
Hregularization_losses
layers
 layer_regularization_losses
I	variables
non_trainable_variables
Jtrainable_variables
metrics
layer_metrics
[Y
VARIABLE_VALUEdense_44/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_44/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
В
Nregularization_losses
layers
 layer_regularization_losses
O	variables
non_trainable_variables
Ptrainable_variables
metrics
layer_metrics
[Y
VARIABLE_VALUEdense_45/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_45/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

R0
S1
В
Tregularization_losses
layers
 layer_regularization_losses
U	variables
 non_trainable_variables
Vtrainable_variables
Ёmetrics
Ђlayer_metrics
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
Ѓ0
Є1
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

Ѕtotal

Іcount
Ї	variables
Ј	keras_api
I

Љtotal

Њcount
Ћ
_fn_kwargs
Ќ	variables
­	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ѕ0
І1

Ї	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Љ0
Њ1

Ќ	variables
}
VARIABLE_VALUEAdam/conv2d_54/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_54/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_55/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_55/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_56/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_56/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_57/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_57/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_44/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_54/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_54/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_55/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_55/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_56/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_56/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_57/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_57/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_44/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_19Placeholder*1
_output_shapes
:џџџџџџџџџ*
dtype0*&
shape:џџџџџџџџџ
к
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_19conv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_53645
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Є
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_54/kernel/Read/ReadVariableOp"conv2d_54/bias/Read/ReadVariableOp$conv2d_55/kernel/Read/ReadVariableOp"conv2d_55/bias/Read/ReadVariableOp$conv2d_56/kernel/Read/ReadVariableOp"conv2d_56/bias/Read/ReadVariableOp$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_54/kernel/m/Read/ReadVariableOp)Adam/conv2d_54/bias/m/Read/ReadVariableOp+Adam/conv2d_55/kernel/m/Read/ReadVariableOp)Adam/conv2d_55/bias/m/Read/ReadVariableOp+Adam/conv2d_56/kernel/m/Read/ReadVariableOp)Adam/conv2d_56/bias/m/Read/ReadVariableOp+Adam/conv2d_57/kernel/m/Read/ReadVariableOp)Adam/conv2d_57/bias/m/Read/ReadVariableOp*Adam/dense_42/kernel/m/Read/ReadVariableOp(Adam/dense_42/bias/m/Read/ReadVariableOp*Adam/dense_43/kernel/m/Read/ReadVariableOp(Adam/dense_43/bias/m/Read/ReadVariableOp*Adam/dense_44/kernel/m/Read/ReadVariableOp(Adam/dense_44/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp+Adam/conv2d_54/kernel/v/Read/ReadVariableOp)Adam/conv2d_54/bias/v/Read/ReadVariableOp+Adam/conv2d_55/kernel/v/Read/ReadVariableOp)Adam/conv2d_55/bias/v/Read/ReadVariableOp+Adam/conv2d_56/kernel/v/Read/ReadVariableOp)Adam/conv2d_56/bias/v/Read/ReadVariableOp+Adam/conv2d_57/kernel/v/Read/ReadVariableOp)Adam/conv2d_57/bias/v/Read/ReadVariableOp*Adam/dense_42/kernel/v/Read/ReadVariableOp(Adam/dense_42/bias/v/Read/ReadVariableOp*Adam/dense_43/kernel/v/Read/ReadVariableOp(Adam/dense_43/bias/v/Read/ReadVariableOp*Adam/dense_44/kernel/v/Read/ReadVariableOp(Adam/dense_44/bias/v/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOpConst*F
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
GPU 2J 8 *'
f"R 
__inference__traced_save_54296
Ћ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_54/kernel/mAdam/conv2d_54/bias/mAdam/conv2d_55/kernel/mAdam/conv2d_55/bias/mAdam/conv2d_56/kernel/mAdam/conv2d_56/bias/mAdam/conv2d_57/kernel/mAdam/conv2d_57/bias/mAdam/dense_42/kernel/mAdam/dense_42/bias/mAdam/dense_43/kernel/mAdam/dense_43/bias/mAdam/dense_44/kernel/mAdam/dense_44/bias/mAdam/dense_45/kernel/mAdam/dense_45/bias/mAdam/conv2d_54/kernel/vAdam/conv2d_54/bias/vAdam/conv2d_55/kernel/vAdam/conv2d_55/bias/vAdam/conv2d_56/kernel/vAdam/conv2d_56/bias/vAdam/conv2d_57/kernel/vAdam/conv2d_57/bias/vAdam/dense_42/kernel/vAdam/dense_42/bias/vAdam/dense_43/kernel/vAdam/dense_43/bias/vAdam/dense_44/kernel/vAdam/dense_44/bias/vAdam/dense_45/kernel/vAdam/dense_45/bias/v*E
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_54477фЮ


Р
-__inference_sequential_18_layer_call_fn_53682

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
 
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identityЂStatefulPartitionedCallГ
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
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_532012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_52946

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ъ
L
0__inference_max_pooling2d_56_layer_call_fn_53961

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_530992
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ"" :W S
/
_output_shapes
:џџџџџџџџџ"" 
 
_user_specified_nameinputs
ы
§
D__inference_conv2d_57_layer_call_and_return_conditional_losses_53112

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


)__inference_conv2d_56_layer_call_fn_53940

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_530892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ"" 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ$$ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ$$ 
 
_user_specified_nameinputs

ї
C__inference_dense_43_layer_call_and_return_conditional_losses_53160

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
О
g
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_53971

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ"" :W S
/
_output_shapes
:џџџџџџџџџ"" 
 
_user_specified_nameinputs
О
g
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_54011

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ћY
Ю
H__inference_sequential_18_layer_call_and_return_conditional_losses_53851

inputsB
(conv2d_54_conv2d_readvariableop_resource: 7
)conv2d_54_biasadd_readvariableop_resource: B
(conv2d_55_conv2d_readvariableop_resource:  7
)conv2d_55_biasadd_readvariableop_resource: B
(conv2d_56_conv2d_readvariableop_resource:  7
)conv2d_56_biasadd_readvariableop_resource: B
(conv2d_57_conv2d_readvariableop_resource:  7
)conv2d_57_biasadd_readvariableop_resource: ;
'dense_42_matmul_readvariableop_resource:
 7
(dense_42_biasadd_readvariableop_resource:	;
'dense_43_matmul_readvariableop_resource:
7
(dense_43_biasadd_readvariableop_resource:	:
'dense_44_matmul_readvariableop_resource:	@6
(dense_44_biasadd_readvariableop_resource:@9
'dense_45_matmul_readvariableop_resource:@6
(dense_45_biasadd_readvariableop_resource:
identityЂ conv2d_54/BiasAdd/ReadVariableOpЂconv2d_54/Conv2D/ReadVariableOpЂ conv2d_55/BiasAdd/ReadVariableOpЂconv2d_55/Conv2D/ReadVariableOpЂ conv2d_56/BiasAdd/ReadVariableOpЂconv2d_56/Conv2D/ReadVariableOpЂ conv2d_57/BiasAdd/ReadVariableOpЂconv2d_57/Conv2D/ReadVariableOpЂdense_42/BiasAdd/ReadVariableOpЂdense_42/MatMul/ReadVariableOpЂdense_43/BiasAdd/ReadVariableOpЂdense_43/MatMul/ReadVariableOpЂdense_44/BiasAdd/ReadVariableOpЂdense_44/MatMul/ReadVariableOpЂdense_45/BiasAdd/ReadVariableOpЂdense_45/MatMul/ReadVariableOpГ
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_54/Conv2D/ReadVariableOpФ
conv2d_54/Conv2DConv2Dinputs'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
conv2d_54/Conv2DЊ
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_54/BiasAdd/ReadVariableOpВ
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ 2
conv2d_54/BiasAdd
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ 2
conv2d_54/ReluЪ
max_pooling2d_54/MaxPoolMaxPoolconv2d_54/Relu:activations:0*/
_output_shapes
:џџџџџџџџџJJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_54/MaxPoolГ
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_55/Conv2D/ReadVariableOpн
conv2d_55/Conv2DConv2D!max_pooling2d_54/MaxPool:output:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH *
paddingVALID*
strides
2
conv2d_55/Conv2DЊ
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_55/BiasAdd/ReadVariableOpА
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2
conv2d_55/BiasAdd~
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2
conv2d_55/ReluЪ
max_pooling2d_55/MaxPoolMaxPoolconv2d_55/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ$$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_55/MaxPoolГ
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_56/Conv2D/ReadVariableOpн
conv2d_56/Conv2DConv2D!max_pooling2d_55/MaxPool:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" *
paddingVALID*
strides
2
conv2d_56/Conv2DЊ
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_56/BiasAdd/ReadVariableOpА
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2
conv2d_56/BiasAdd~
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2
conv2d_56/ReluЪ
max_pooling2d_56/MaxPoolMaxPoolconv2d_56/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_56/MaxPoolГ
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_57/Conv2D/ReadVariableOpн
conv2d_57/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
conv2d_57/Conv2DЊ
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_57/BiasAdd/ReadVariableOpА
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ 2
conv2d_57/BiasAdd~
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2
conv2d_57/ReluЪ
max_pooling2d_57/MaxPoolMaxPoolconv2d_57/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_57/MaxPoolu
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_18/ConstЄ
flatten_18/ReshapeReshape!max_pooling2d_57/MaxPool:output:0flatten_18/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2
flatten_18/ReshapeЊ
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02 
dense_42/MatMul/ReadVariableOpЄ
dense_42/MatMulMatMulflatten_18/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_42/MatMulЈ
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_42/BiasAdd/ReadVariableOpІ
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_42/BiasAddt
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_42/ReluЊ
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_43/MatMul/ReadVariableOpЄ
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_43/MatMulЈ
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_43/BiasAdd/ReadVariableOpІ
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_43/BiasAddt
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_43/ReluЉ
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_44/MatMul/ReadVariableOpЃ
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_44/MatMulЇ
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_44/BiasAdd/ReadVariableOpЅ
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_44/BiasAdds
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_44/ReluЈ
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_45/MatMul/ReadVariableOpЃ
dense_45/MatMulMatMuldense_44/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_45/MatMulЇ
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOpЅ
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_45/BiasAdd|
dense_45/SoftmaxSoftmaxdense_45/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_45/Softmaxu
IdentityIdentitydense_45/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityю
NoOpNoOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
з
L
0__inference_max_pooling2d_57_layer_call_fn_53996

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_530122
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з
L
0__inference_max_pooling2d_55_layer_call_fn_53916

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_529682
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

є
C__inference_dense_45_layer_call_and_return_conditional_losses_53194

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

є
C__inference_dense_45_layer_call_and_return_conditional_losses_54102

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
о
И
#__inference_signature_wrapper_53645
input_19!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
 
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_529372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19
О
g
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_53122

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

ѕ
C__inference_dense_44_layer_call_and_return_conditional_losses_54082

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ
L
0__inference_max_pooling2d_55_layer_call_fn_53921

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_530762
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџHH :W S
/
_output_shapes
:џџџџџџџџџHH 
 
_user_specified_nameinputs
я

(__inference_dense_45_layer_call_fn_54091

inputs
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_531942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ъ
L
0__inference_max_pooling2d_57_layer_call_fn_54001

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_531222
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Т
g
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_53053

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџJJ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџJJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ :Y U
1
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ђ

)__inference_conv2d_54_layer_call_fn_53860

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_530432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ

(__inference_dense_44_layer_call_fn_54071

inputs
unknown:	@
	unknown_0:@
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_531772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ы
§
D__inference_conv2d_55_layer_call_and_return_conditional_losses_53911

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџHH 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџJJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџJJ 
 
_user_specified_nameinputs
=
В
H__inference_sequential_18_layer_call_and_return_conditional_losses_53430

inputs)
conv2d_54_53384: 
conv2d_54_53386: )
conv2d_55_53390:  
conv2d_55_53392: )
conv2d_56_53396:  
conv2d_56_53398: )
conv2d_57_53402:  
conv2d_57_53404: "
dense_42_53409:
 
dense_42_53411:	"
dense_43_53414:

dense_43_53416:	!
dense_44_53419:	@
dense_44_53421:@ 
dense_45_53424:@
dense_45_53426:
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCall 
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_54_53384conv2d_54_53386*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_530432#
!conv2d_54/StatefulPartitionedCall
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџJJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_530532"
 max_pooling2d_54/PartitionedCallС
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_55_53390conv2d_55_53392*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџHH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_530662#
!conv2d_55/StatefulPartitionedCall
 max_pooling2d_55/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_530762"
 max_pooling2d_55/PartitionedCallС
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_56_53396conv2d_56_53398*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_530892#
!conv2d_56/StatefulPartitionedCall
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_530992"
 max_pooling2d_56/PartitionedCallС
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_57_53402conv2d_57_53404*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_531122#
!conv2d_57/StatefulPartitionedCall
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_531222"
 max_pooling2d_57/PartitionedCall§
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_531302
flatten_18/PartitionedCallЏ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_42_53409dense_42_53411*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_531432"
 dense_42/StatefulPartitionedCallЕ
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_53414dense_43_53416*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_531602"
 dense_43/StatefulPartitionedCallД
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_53419dense_44_53421*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_531772"
 dense_44/StatefulPartitionedCallД
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_53424dense_45_53426*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_531942"
 dense_45/StatefulPartitionedCall
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityъ
NoOpNoOp"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ћY
Ю
H__inference_sequential_18_layer_call_and_return_conditional_losses_53785

inputsB
(conv2d_54_conv2d_readvariableop_resource: 7
)conv2d_54_biasadd_readvariableop_resource: B
(conv2d_55_conv2d_readvariableop_resource:  7
)conv2d_55_biasadd_readvariableop_resource: B
(conv2d_56_conv2d_readvariableop_resource:  7
)conv2d_56_biasadd_readvariableop_resource: B
(conv2d_57_conv2d_readvariableop_resource:  7
)conv2d_57_biasadd_readvariableop_resource: ;
'dense_42_matmul_readvariableop_resource:
 7
(dense_42_biasadd_readvariableop_resource:	;
'dense_43_matmul_readvariableop_resource:
7
(dense_43_biasadd_readvariableop_resource:	:
'dense_44_matmul_readvariableop_resource:	@6
(dense_44_biasadd_readvariableop_resource:@9
'dense_45_matmul_readvariableop_resource:@6
(dense_45_biasadd_readvariableop_resource:
identityЂ conv2d_54/BiasAdd/ReadVariableOpЂconv2d_54/Conv2D/ReadVariableOpЂ conv2d_55/BiasAdd/ReadVariableOpЂconv2d_55/Conv2D/ReadVariableOpЂ conv2d_56/BiasAdd/ReadVariableOpЂconv2d_56/Conv2D/ReadVariableOpЂ conv2d_57/BiasAdd/ReadVariableOpЂconv2d_57/Conv2D/ReadVariableOpЂdense_42/BiasAdd/ReadVariableOpЂdense_42/MatMul/ReadVariableOpЂdense_43/BiasAdd/ReadVariableOpЂdense_43/MatMul/ReadVariableOpЂdense_44/BiasAdd/ReadVariableOpЂdense_44/MatMul/ReadVariableOpЂdense_45/BiasAdd/ReadVariableOpЂdense_45/MatMul/ReadVariableOpГ
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_54/Conv2D/ReadVariableOpФ
conv2d_54/Conv2DConv2Dinputs'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
conv2d_54/Conv2DЊ
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_54/BiasAdd/ReadVariableOpВ
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ 2
conv2d_54/BiasAdd
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ 2
conv2d_54/ReluЪ
max_pooling2d_54/MaxPoolMaxPoolconv2d_54/Relu:activations:0*/
_output_shapes
:џџџџџџџџџJJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_54/MaxPoolГ
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_55/Conv2D/ReadVariableOpн
conv2d_55/Conv2DConv2D!max_pooling2d_54/MaxPool:output:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH *
paddingVALID*
strides
2
conv2d_55/Conv2DЊ
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_55/BiasAdd/ReadVariableOpА
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2
conv2d_55/BiasAdd~
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2
conv2d_55/ReluЪ
max_pooling2d_55/MaxPoolMaxPoolconv2d_55/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ$$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_55/MaxPoolГ
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_56/Conv2D/ReadVariableOpн
conv2d_56/Conv2DConv2D!max_pooling2d_55/MaxPool:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" *
paddingVALID*
strides
2
conv2d_56/Conv2DЊ
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_56/BiasAdd/ReadVariableOpА
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2
conv2d_56/BiasAdd~
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2
conv2d_56/ReluЪ
max_pooling2d_56/MaxPoolMaxPoolconv2d_56/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_56/MaxPoolГ
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_57/Conv2D/ReadVariableOpн
conv2d_57/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
conv2d_57/Conv2DЊ
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_57/BiasAdd/ReadVariableOpА
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ 2
conv2d_57/BiasAdd~
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2
conv2d_57/ReluЪ
max_pooling2d_57/MaxPoolMaxPoolconv2d_57/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_57/MaxPoolu
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_18/ConstЄ
flatten_18/ReshapeReshape!max_pooling2d_57/MaxPool:output:0flatten_18/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2
flatten_18/ReshapeЊ
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02 
dense_42/MatMul/ReadVariableOpЄ
dense_42/MatMulMatMulflatten_18/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_42/MatMulЈ
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_42/BiasAdd/ReadVariableOpІ
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_42/BiasAddt
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_42/ReluЊ
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_43/MatMul/ReadVariableOpЄ
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_43/MatMulЈ
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_43/BiasAdd/ReadVariableOpІ
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_43/BiasAddt
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_43/ReluЉ
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_44/MatMul/ReadVariableOpЃ
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_44/MatMulЇ
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_44/BiasAdd/ReadVariableOpЅ
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_44/BiasAdds
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_44/ReluЈ
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_45/MatMul/ReadVariableOpЃ
dense_45/MatMulMatMuldense_44/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_45/MatMulЇ
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOpЅ
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_45/BiasAdd|
dense_45/SoftmaxSoftmaxdense_45/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_45/Softmaxu
IdentityIdentitydense_45/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityю
NoOpNoOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
йs
Џ
__inference__traced_save_54296
file_prefix/
+savev2_conv2d_54_kernel_read_readvariableop-
)savev2_conv2d_54_bias_read_readvariableop/
+savev2_conv2d_55_kernel_read_readvariableop-
)savev2_conv2d_55_bias_read_readvariableop/
+savev2_conv2d_56_kernel_read_readvariableop-
)savev2_conv2d_56_bias_read_readvariableop/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_54_kernel_m_read_readvariableop4
0savev2_adam_conv2d_54_bias_m_read_readvariableop6
2savev2_adam_conv2d_55_kernel_m_read_readvariableop4
0savev2_adam_conv2d_55_bias_m_read_readvariableop6
2savev2_adam_conv2d_56_kernel_m_read_readvariableop4
0savev2_adam_conv2d_56_bias_m_read_readvariableop6
2savev2_adam_conv2d_57_kernel_m_read_readvariableop4
0savev2_adam_conv2d_57_bias_m_read_readvariableop5
1savev2_adam_dense_42_kernel_m_read_readvariableop3
/savev2_adam_dense_42_bias_m_read_readvariableop5
1savev2_adam_dense_43_kernel_m_read_readvariableop3
/savev2_adam_dense_43_bias_m_read_readvariableop5
1savev2_adam_dense_44_kernel_m_read_readvariableop3
/savev2_adam_dense_44_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableop6
2savev2_adam_conv2d_54_kernel_v_read_readvariableop4
0savev2_adam_conv2d_54_bias_v_read_readvariableop6
2savev2_adam_conv2d_55_kernel_v_read_readvariableop4
0savev2_adam_conv2d_55_bias_v_read_readvariableop6
2savev2_adam_conv2d_56_kernel_v_read_readvariableop4
0savev2_adam_conv2d_56_bias_v_read_readvariableop6
2savev2_adam_conv2d_57_kernel_v_read_readvariableop4
0savev2_adam_conv2d_57_bias_v_read_readvariableop5
1savev2_adam_dense_42_kernel_v_read_readvariableop3
/savev2_adam_dense_42_bias_v_read_readvariableop5
1savev2_adam_dense_43_kernel_v_read_readvariableop3
/savev2_adam_dense_43_bias_v_read_readvariableop5
1savev2_adam_dense_44_kernel_v_read_readvariableop3
/savev2_adam_dense_44_bias_v_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЎ 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*Р
valueЖBГ:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names§
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesг
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_54_kernel_read_readvariableop)savev2_conv2d_54_bias_read_readvariableop+savev2_conv2d_55_kernel_read_readvariableop)savev2_conv2d_55_bias_read_readvariableop+savev2_conv2d_56_kernel_read_readvariableop)savev2_conv2d_56_bias_read_readvariableop+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_54_kernel_m_read_readvariableop0savev2_adam_conv2d_54_bias_m_read_readvariableop2savev2_adam_conv2d_55_kernel_m_read_readvariableop0savev2_adam_conv2d_55_bias_m_read_readvariableop2savev2_adam_conv2d_56_kernel_m_read_readvariableop0savev2_adam_conv2d_56_bias_m_read_readvariableop2savev2_adam_conv2d_57_kernel_m_read_readvariableop0savev2_adam_conv2d_57_bias_m_read_readvariableop1savev2_adam_dense_42_kernel_m_read_readvariableop/savev2_adam_dense_42_bias_m_read_readvariableop1savev2_adam_dense_43_kernel_m_read_readvariableop/savev2_adam_dense_43_bias_m_read_readvariableop1savev2_adam_dense_44_kernel_m_read_readvariableop/savev2_adam_dense_44_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop2savev2_adam_conv2d_54_kernel_v_read_readvariableop0savev2_adam_conv2d_54_bias_v_read_readvariableop2savev2_adam_conv2d_55_kernel_v_read_readvariableop0savev2_adam_conv2d_55_bias_v_read_readvariableop2savev2_adam_conv2d_56_kernel_v_read_readvariableop0savev2_adam_conv2d_56_bias_v_read_readvariableop2savev2_adam_conv2d_57_kernel_v_read_readvariableop0savev2_adam_conv2d_57_bias_v_read_readvariableop1savev2_adam_dense_42_kernel_v_read_readvariableop/savev2_adam_dense_42_bias_v_read_readvariableop1savev2_adam_dense_43_kernel_v_read_readvariableop/savev2_adam_dense_43_bias_v_read_readvariableop1savev2_adam_dense_44_kernel_v_read_readvariableop/savev2_adam_dense_44_bias_v_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0* 
_input_shapes
: : : :  : :  : :  : :
 ::
::	@:@:@:: : : : : : : : : : : :  : :  : :  : :
 ::
::	@:@:@:: : :  : :  : :  : :
 ::
::	@:@:@:: 2(
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
 :!


_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 
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
 :!#

_output_shapes	
::&$"
 
_output_shapes
:
:!%

_output_shapes	
::%&!

_output_shapes
:	@: '
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
 :!3

_output_shapes	
::&4"
 
_output_shapes
:
:!5

_output_shapes	
::%6!

_output_shapes
:	@: 7
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
ю
L
0__inference_max_pooling2d_54_layer_call_fn_53881

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџJJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_530532
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџJJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ :Y U
1
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

ї
C__inference_dense_42_layer_call_and_return_conditional_losses_53143

inputs2
matmul_readvariableop_resource:
 .
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_53966

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ї
§
D__inference_conv2d_54_layer_call_and_return_conditional_losses_53043

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Р
-__inference_sequential_18_layer_call_fn_53719

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
 
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identityЂStatefulPartitionedCallГ
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
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_534302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ы
§
D__inference_conv2d_57_layer_call_and_return_conditional_losses_53991

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
а
F
*__inference_flatten_18_layer_call_fn_54016

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_531302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_53926

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
=
Д
H__inference_sequential_18_layer_call_and_return_conditional_losses_53600
input_19)
conv2d_54_53554: 
conv2d_54_53556: )
conv2d_55_53560:  
conv2d_55_53562: )
conv2d_56_53566:  
conv2d_56_53568: )
conv2d_57_53572:  
conv2d_57_53574: "
dense_42_53579:
 
dense_42_53581:	"
dense_43_53584:

dense_43_53586:	!
dense_44_53589:	@
dense_44_53591:@ 
dense_45_53594:@
dense_45_53596:
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCallЂ
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallinput_19conv2d_54_53554conv2d_54_53556*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_530432#
!conv2d_54/StatefulPartitionedCall
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџJJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_530532"
 max_pooling2d_54/PartitionedCallС
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_55_53560conv2d_55_53562*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџHH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_530662#
!conv2d_55/StatefulPartitionedCall
 max_pooling2d_55/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_530762"
 max_pooling2d_55/PartitionedCallС
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_56_53566conv2d_56_53568*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_530892#
!conv2d_56/StatefulPartitionedCall
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_530992"
 max_pooling2d_56/PartitionedCallС
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_57_53572conv2d_57_53574*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_531122#
!conv2d_57/StatefulPartitionedCall
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_531222"
 max_pooling2d_57/PartitionedCall§
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_531302
flatten_18/PartitionedCallЏ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_42_53579dense_42_53581*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_531432"
 dense_42/StatefulPartitionedCallЕ
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_53584dense_43_53586*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_531602"
 dense_43/StatefulPartitionedCallД
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_53589dense_44_53591*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_531772"
 dense_44/StatefulPartitionedCallД
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_53594dense_45_53596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_531942"
 dense_45/StatefulPartitionedCall
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityъ
NoOpNoOp"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19
і

(__inference_dense_42_layer_call_fn_54031

inputs
unknown:
 
	unknown_0:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_531432
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ўs
ш
 __inference__wrapped_model_52937
input_19P
6sequential_18_conv2d_54_conv2d_readvariableop_resource: E
7sequential_18_conv2d_54_biasadd_readvariableop_resource: P
6sequential_18_conv2d_55_conv2d_readvariableop_resource:  E
7sequential_18_conv2d_55_biasadd_readvariableop_resource: P
6sequential_18_conv2d_56_conv2d_readvariableop_resource:  E
7sequential_18_conv2d_56_biasadd_readvariableop_resource: P
6sequential_18_conv2d_57_conv2d_readvariableop_resource:  E
7sequential_18_conv2d_57_biasadd_readvariableop_resource: I
5sequential_18_dense_42_matmul_readvariableop_resource:
 E
6sequential_18_dense_42_biasadd_readvariableop_resource:	I
5sequential_18_dense_43_matmul_readvariableop_resource:
E
6sequential_18_dense_43_biasadd_readvariableop_resource:	H
5sequential_18_dense_44_matmul_readvariableop_resource:	@D
6sequential_18_dense_44_biasadd_readvariableop_resource:@G
5sequential_18_dense_45_matmul_readvariableop_resource:@D
6sequential_18_dense_45_biasadd_readvariableop_resource:
identityЂ.sequential_18/conv2d_54/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_54/Conv2D/ReadVariableOpЂ.sequential_18/conv2d_55/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_55/Conv2D/ReadVariableOpЂ.sequential_18/conv2d_56/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_56/Conv2D/ReadVariableOpЂ.sequential_18/conv2d_57/BiasAdd/ReadVariableOpЂ-sequential_18/conv2d_57/Conv2D/ReadVariableOpЂ-sequential_18/dense_42/BiasAdd/ReadVariableOpЂ,sequential_18/dense_42/MatMul/ReadVariableOpЂ-sequential_18/dense_43/BiasAdd/ReadVariableOpЂ,sequential_18/dense_43/MatMul/ReadVariableOpЂ-sequential_18/dense_44/BiasAdd/ReadVariableOpЂ,sequential_18/dense_44/MatMul/ReadVariableOpЂ-sequential_18/dense_45/BiasAdd/ReadVariableOpЂ,sequential_18/dense_45/MatMul/ReadVariableOpн
-sequential_18/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_18/conv2d_54/Conv2D/ReadVariableOp№
sequential_18/conv2d_54/Conv2DConv2Dinput_195sequential_18/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2 
sequential_18/conv2d_54/Conv2Dд
.sequential_18/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_18/conv2d_54/BiasAdd/ReadVariableOpъ
sequential_18/conv2d_54/BiasAddBiasAdd'sequential_18/conv2d_54/Conv2D:output:06sequential_18/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ 2!
sequential_18/conv2d_54/BiasAddЊ
sequential_18/conv2d_54/ReluRelu(sequential_18/conv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ 2
sequential_18/conv2d_54/Reluє
&sequential_18/max_pooling2d_54/MaxPoolMaxPool*sequential_18/conv2d_54/Relu:activations:0*/
_output_shapes
:џџџџџџџџџJJ *
ksize
*
paddingVALID*
strides
2(
&sequential_18/max_pooling2d_54/MaxPoolн
-sequential_18/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_18/conv2d_55/Conv2D/ReadVariableOp
sequential_18/conv2d_55/Conv2DConv2D/sequential_18/max_pooling2d_54/MaxPool:output:05sequential_18/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH *
paddingVALID*
strides
2 
sequential_18/conv2d_55/Conv2Dд
.sequential_18/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_18/conv2d_55/BiasAdd/ReadVariableOpш
sequential_18/conv2d_55/BiasAddBiasAdd'sequential_18/conv2d_55/Conv2D:output:06sequential_18/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2!
sequential_18/conv2d_55/BiasAddЈ
sequential_18/conv2d_55/ReluRelu(sequential_18/conv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2
sequential_18/conv2d_55/Reluє
&sequential_18/max_pooling2d_55/MaxPoolMaxPool*sequential_18/conv2d_55/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ$$ *
ksize
*
paddingVALID*
strides
2(
&sequential_18/max_pooling2d_55/MaxPoolн
-sequential_18/conv2d_56/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_18/conv2d_56/Conv2D/ReadVariableOp
sequential_18/conv2d_56/Conv2DConv2D/sequential_18/max_pooling2d_55/MaxPool:output:05sequential_18/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" *
paddingVALID*
strides
2 
sequential_18/conv2d_56/Conv2Dд
.sequential_18/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_18/conv2d_56/BiasAdd/ReadVariableOpш
sequential_18/conv2d_56/BiasAddBiasAdd'sequential_18/conv2d_56/Conv2D:output:06sequential_18/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2!
sequential_18/conv2d_56/BiasAddЈ
sequential_18/conv2d_56/ReluRelu(sequential_18/conv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2
sequential_18/conv2d_56/Reluє
&sequential_18/max_pooling2d_56/MaxPoolMaxPool*sequential_18/conv2d_56/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2(
&sequential_18/max_pooling2d_56/MaxPoolн
-sequential_18/conv2d_57/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_18/conv2d_57/Conv2D/ReadVariableOp
sequential_18/conv2d_57/Conv2DConv2D/sequential_18/max_pooling2d_56/MaxPool:output:05sequential_18/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2 
sequential_18/conv2d_57/Conv2Dд
.sequential_18/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_18/conv2d_57/BiasAdd/ReadVariableOpш
sequential_18/conv2d_57/BiasAddBiasAdd'sequential_18/conv2d_57/Conv2D:output:06sequential_18/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ 2!
sequential_18/conv2d_57/BiasAddЈ
sequential_18/conv2d_57/ReluRelu(sequential_18/conv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2
sequential_18/conv2d_57/Reluє
&sequential_18/max_pooling2d_57/MaxPoolMaxPool*sequential_18/conv2d_57/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2(
&sequential_18/max_pooling2d_57/MaxPool
sequential_18/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2 
sequential_18/flatten_18/Constм
 sequential_18/flatten_18/ReshapeReshape/sequential_18/max_pooling2d_57/MaxPool:output:0'sequential_18/flatten_18/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2"
 sequential_18/flatten_18/Reshapeд
,sequential_18/dense_42/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_42_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02.
,sequential_18/dense_42/MatMul/ReadVariableOpм
sequential_18/dense_42/MatMulMatMul)sequential_18/flatten_18/Reshape:output:04sequential_18/dense_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential_18/dense_42/MatMulв
-sequential_18/dense_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_42_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_18/dense_42/BiasAdd/ReadVariableOpо
sequential_18/dense_42/BiasAddBiasAdd'sequential_18/dense_42/MatMul:product:05sequential_18/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
sequential_18/dense_42/BiasAdd
sequential_18/dense_42/ReluRelu'sequential_18/dense_42/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential_18/dense_42/Reluд
,sequential_18/dense_43/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_43_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_18/dense_43/MatMul/ReadVariableOpм
sequential_18/dense_43/MatMulMatMul)sequential_18/dense_42/Relu:activations:04sequential_18/dense_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential_18/dense_43/MatMulв
-sequential_18/dense_43/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_43_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_18/dense_43/BiasAdd/ReadVariableOpо
sequential_18/dense_43/BiasAddBiasAdd'sequential_18/dense_43/MatMul:product:05sequential_18/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
sequential_18/dense_43/BiasAdd
sequential_18/dense_43/ReluRelu'sequential_18/dense_43/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential_18/dense_43/Reluг
,sequential_18/dense_44/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_44_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02.
,sequential_18/dense_44/MatMul/ReadVariableOpл
sequential_18/dense_44/MatMulMatMul)sequential_18/dense_43/Relu:activations:04sequential_18/dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_18/dense_44/MatMulб
-sequential_18/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_18/dense_44/BiasAdd/ReadVariableOpн
sequential_18/dense_44/BiasAddBiasAdd'sequential_18/dense_44/MatMul:product:05sequential_18/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
sequential_18/dense_44/BiasAdd
sequential_18/dense_44/ReluRelu'sequential_18/dense_44/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_18/dense_44/Reluв
,sequential_18/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_45_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_18/dense_45/MatMul/ReadVariableOpл
sequential_18/dense_45/MatMulMatMul)sequential_18/dense_44/Relu:activations:04sequential_18/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_18/dense_45/MatMulб
-sequential_18/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_18/dense_45/BiasAdd/ReadVariableOpн
sequential_18/dense_45/BiasAddBiasAdd'sequential_18/dense_45/MatMul:product:05sequential_18/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
sequential_18/dense_45/BiasAddІ
sequential_18/dense_45/SoftmaxSoftmax'sequential_18/dense_45/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
sequential_18/dense_45/Softmax
IdentityIdentity(sequential_18/dense_45/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЮ
NoOpNoOp/^sequential_18/conv2d_54/BiasAdd/ReadVariableOp.^sequential_18/conv2d_54/Conv2D/ReadVariableOp/^sequential_18/conv2d_55/BiasAdd/ReadVariableOp.^sequential_18/conv2d_55/Conv2D/ReadVariableOp/^sequential_18/conv2d_56/BiasAdd/ReadVariableOp.^sequential_18/conv2d_56/Conv2D/ReadVariableOp/^sequential_18/conv2d_57/BiasAdd/ReadVariableOp.^sequential_18/conv2d_57/Conv2D/ReadVariableOp.^sequential_18/dense_42/BiasAdd/ReadVariableOp-^sequential_18/dense_42/MatMul/ReadVariableOp.^sequential_18/dense_43/BiasAdd/ReadVariableOp-^sequential_18/dense_43/MatMul/ReadVariableOp.^sequential_18/dense_44/BiasAdd/ReadVariableOp-^sequential_18/dense_44/MatMul/ReadVariableOp.^sequential_18/dense_45/BiasAdd/ReadVariableOp-^sequential_18/dense_45/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2`
.sequential_18/conv2d_54/BiasAdd/ReadVariableOp.sequential_18/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_54/Conv2D/ReadVariableOp-sequential_18/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_18/conv2d_55/BiasAdd/ReadVariableOp.sequential_18/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_55/Conv2D/ReadVariableOp-sequential_18/conv2d_55/Conv2D/ReadVariableOp2`
.sequential_18/conv2d_56/BiasAdd/ReadVariableOp.sequential_18/conv2d_56/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_56/Conv2D/ReadVariableOp-sequential_18/conv2d_56/Conv2D/ReadVariableOp2`
.sequential_18/conv2d_57/BiasAdd/ReadVariableOp.sequential_18/conv2d_57/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_57/Conv2D/ReadVariableOp-sequential_18/conv2d_57/Conv2D/ReadVariableOp2^
-sequential_18/dense_42/BiasAdd/ReadVariableOp-sequential_18/dense_42/BiasAdd/ReadVariableOp2\
,sequential_18/dense_42/MatMul/ReadVariableOp,sequential_18/dense_42/MatMul/ReadVariableOp2^
-sequential_18/dense_43/BiasAdd/ReadVariableOp-sequential_18/dense_43/BiasAdd/ReadVariableOp2\
,sequential_18/dense_43/MatMul/ReadVariableOp,sequential_18/dense_43/MatMul/ReadVariableOp2^
-sequential_18/dense_44/BiasAdd/ReadVariableOp-sequential_18/dense_44/BiasAdd/ReadVariableOp2\
,sequential_18/dense_44/MatMul/ReadVariableOp,sequential_18/dense_44/MatMul/ReadVariableOp2^
-sequential_18/dense_45/BiasAdd/ReadVariableOp-sequential_18/dense_45/BiasAdd/ReadVariableOp2\
,sequential_18/dense_45/MatMul/ReadVariableOp,sequential_18/dense_45/MatMul/ReadVariableOp:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19
=
В
H__inference_sequential_18_layer_call_and_return_conditional_losses_53201

inputs)
conv2d_54_53044: 
conv2d_54_53046: )
conv2d_55_53067:  
conv2d_55_53069: )
conv2d_56_53090:  
conv2d_56_53092: )
conv2d_57_53113:  
conv2d_57_53115: "
dense_42_53144:
 
dense_42_53146:	"
dense_43_53161:

dense_43_53163:	!
dense_44_53178:	@
dense_44_53180:@ 
dense_45_53195:@
dense_45_53197:
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCall 
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_54_53044conv2d_54_53046*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_530432#
!conv2d_54/StatefulPartitionedCall
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџJJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_530532"
 max_pooling2d_54/PartitionedCallС
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_55_53067conv2d_55_53069*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџHH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_530662#
!conv2d_55/StatefulPartitionedCall
 max_pooling2d_55/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_530762"
 max_pooling2d_55/PartitionedCallС
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_56_53090conv2d_56_53092*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_530892#
!conv2d_56/StatefulPartitionedCall
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_530992"
 max_pooling2d_56/PartitionedCallС
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_57_53113conv2d_57_53115*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_531122#
!conv2d_57/StatefulPartitionedCall
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_531222"
 max_pooling2d_57/PartitionedCall§
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_531302
flatten_18/PartitionedCallЏ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_42_53144dense_42_53146*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_531432"
 dense_42/StatefulPartitionedCallЕ
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_53161dense_43_53163*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_531602"
 dense_43/StatefulPartitionedCallД
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_53178dense_44_53180*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_531772"
 dense_44/StatefulPartitionedCallД
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_53195dense_45_53197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_531942"
 dense_45/StatefulPartitionedCall
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityъ
NoOpNoOp"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Т
-__inference_sequential_18_layer_call_fn_53502
input_19!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
 
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identityЂStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_534302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19
О
g
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_53076

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ$$ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџHH :W S
/
_output_shapes
:џџџџџџџџџHH 
 
_user_specified_nameinputs
Т
g
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_53891

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџJJ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџJJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ :Y U
1
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
і

(__inference_dense_43_layer_call_fn_54051

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_531602
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ї
§
D__inference_conv2d_54_layer_call_and_return_conditional_losses_53871

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpІ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
=
Д
H__inference_sequential_18_layer_call_and_return_conditional_losses_53551
input_19)
conv2d_54_53505: 
conv2d_54_53507: )
conv2d_55_53511:  
conv2d_55_53513: )
conv2d_56_53517:  
conv2d_56_53519: )
conv2d_57_53523:  
conv2d_57_53525: "
dense_42_53530:
 
dense_42_53532:	"
dense_43_53535:

dense_43_53537:	!
dense_44_53540:	@
dense_44_53542:@ 
dense_45_53545:@
dense_45_53547:
identityЂ!conv2d_54/StatefulPartitionedCallЂ!conv2d_55/StatefulPartitionedCallЂ!conv2d_56/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCallЂ
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallinput_19conv2d_54_53505conv2d_54_53507*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_530432#
!conv2d_54/StatefulPartitionedCall
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџJJ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_530532"
 max_pooling2d_54/PartitionedCallС
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_55_53511conv2d_55_53513*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџHH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_530662#
!conv2d_55/StatefulPartitionedCall
 max_pooling2d_55/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_530762"
 max_pooling2d_55/PartitionedCallС
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_56_53517conv2d_56_53519*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ"" *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_530892#
!conv2d_56/StatefulPartitionedCall
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_530992"
 max_pooling2d_56/PartitionedCallС
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_57_53523conv2d_57_53525*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_531122#
!conv2d_57/StatefulPartitionedCall
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_531222"
 max_pooling2d_57/PartitionedCall§
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_531302
flatten_18/PartitionedCallЏ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_42_53530dense_42_53532*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_531432"
 dense_42/StatefulPartitionedCallЕ
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_53535dense_43_53537*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_531602"
 dense_43/StatefulPartitionedCallД
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_53540dense_44_53542*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_531772"
 dense_44/StatefulPartitionedCallД
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_53545dense_45_53547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_531942"
 dense_45/StatefulPartitionedCall
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityъ
NoOpNoOp"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19
ы
§
D__inference_conv2d_55_layer_call_and_return_conditional_losses_53066

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџHH 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџHH 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџJJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџJJ 
 
_user_specified_nameinputs

ї
C__inference_dense_43_layer_call_and_return_conditional_losses_54062

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ы
§
D__inference_conv2d_56_layer_call_and_return_conditional_losses_53089

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ"" 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ$$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ$$ 
 
_user_specified_nameinputs

ї
C__inference_dense_42_layer_call_and_return_conditional_losses_54042

inputs2
matmul_readvariableop_resource:
 .
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


)__inference_conv2d_55_layer_call_fn_53900

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџHH *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_530662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџHH 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџJJ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџJJ 
 
_user_specified_nameinputs


)__inference_conv2d_57_layer_call_fn_53980

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_531122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
з
L
0__inference_max_pooling2d_54_layer_call_fn_53876

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_529462
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_52968

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ч
a
E__inference_flatten_18_layer_call_and_return_conditional_losses_53130

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_53886

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
О
g
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_53931

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ$$ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџHH :W S
/
_output_shapes
:џџџџџџџџџHH 
 
_user_specified_nameinputs
О
g
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_53099

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ"" :W S
/
_output_shapes
:џџџџџџџџџ"" 
 
_user_specified_nameinputs
ч
a
E__inference_flatten_18_layer_call_and_return_conditional_losses_54022

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_53012

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з
L
0__inference_max_pooling2d_56_layer_call_fn_53956

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_529902
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ы
§
D__inference_conv2d_56_layer_call_and_return_conditional_losses_53951

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"" 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ"" 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ$$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ$$ 
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_54006

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
g
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_52990

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Т
-__inference_sequential_18_layer_call_fn_53236
input_19!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
 
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identityЂStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_532012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_19
њє
Ж#
!__inference__traced_restore_54477
file_prefix;
!assignvariableop_conv2d_54_kernel: /
!assignvariableop_1_conv2d_54_bias: =
#assignvariableop_2_conv2d_55_kernel:  /
!assignvariableop_3_conv2d_55_bias: =
#assignvariableop_4_conv2d_56_kernel:  /
!assignvariableop_5_conv2d_56_bias: =
#assignvariableop_6_conv2d_57_kernel:  /
!assignvariableop_7_conv2d_57_bias: 6
"assignvariableop_8_dense_42_kernel:
 /
 assignvariableop_9_dense_42_bias:	7
#assignvariableop_10_dense_43_kernel:
0
!assignvariableop_11_dense_43_bias:	6
#assignvariableop_12_dense_44_kernel:	@/
!assignvariableop_13_dense_44_bias:@5
#assignvariableop_14_dense_45_kernel:@/
!assignvariableop_15_dense_45_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: E
+assignvariableop_25_adam_conv2d_54_kernel_m: 7
)assignvariableop_26_adam_conv2d_54_bias_m: E
+assignvariableop_27_adam_conv2d_55_kernel_m:  7
)assignvariableop_28_adam_conv2d_55_bias_m: E
+assignvariableop_29_adam_conv2d_56_kernel_m:  7
)assignvariableop_30_adam_conv2d_56_bias_m: E
+assignvariableop_31_adam_conv2d_57_kernel_m:  7
)assignvariableop_32_adam_conv2d_57_bias_m: >
*assignvariableop_33_adam_dense_42_kernel_m:
 7
(assignvariableop_34_adam_dense_42_bias_m:	>
*assignvariableop_35_adam_dense_43_kernel_m:
7
(assignvariableop_36_adam_dense_43_bias_m:	=
*assignvariableop_37_adam_dense_44_kernel_m:	@6
(assignvariableop_38_adam_dense_44_bias_m:@<
*assignvariableop_39_adam_dense_45_kernel_m:@6
(assignvariableop_40_adam_dense_45_bias_m:E
+assignvariableop_41_adam_conv2d_54_kernel_v: 7
)assignvariableop_42_adam_conv2d_54_bias_v: E
+assignvariableop_43_adam_conv2d_55_kernel_v:  7
)assignvariableop_44_adam_conv2d_55_bias_v: E
+assignvariableop_45_adam_conv2d_56_kernel_v:  7
)assignvariableop_46_adam_conv2d_56_bias_v: E
+assignvariableop_47_adam_conv2d_57_kernel_v:  7
)assignvariableop_48_adam_conv2d_57_bias_v: >
*assignvariableop_49_adam_dense_42_kernel_v:
 7
(assignvariableop_50_adam_dense_42_bias_v:	>
*assignvariableop_51_adam_dense_43_kernel_v:
7
(assignvariableop_52_adam_dense_43_bias_v:	=
*assignvariableop_53_adam_dense_44_kernel_v:	@6
(assignvariableop_54_adam_dense_44_bias_v:@<
*assignvariableop_55_adam_dense_45_kernel_v:@6
(assignvariableop_56_adam_dense_45_bias_v:
identity_58ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Д 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*Р
valueЖBГ:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesа
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ў
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_54_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_54_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ј
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_55_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_55_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ј
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_56_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_56_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ј
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_57_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7І
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_57_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ї
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_42_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_42_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ћ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_43_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Љ
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_43_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ћ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_44_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Љ
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_44_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ћ
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_45_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Љ
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_45_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16Ѕ
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ї
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ї
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19І
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ў
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ё
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ё
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ѓ
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ѓ
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Г
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_54_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Б
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_54_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Г
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_55_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Б
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_55_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Г
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_56_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Б
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_56_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Г
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_57_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Б
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_57_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33В
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_42_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34А
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_42_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35В
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_43_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36А
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_43_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37В
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_44_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38А
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_44_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39В
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_45_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40А
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_45_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Г
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_54_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Б
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_54_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Г
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_55_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Б
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_55_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Г
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_56_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Б
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_56_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Г
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_57_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Б
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_57_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49В
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_42_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50А
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_42_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51В
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_43_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52А
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_43_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53В
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_44_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54А
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_44_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55В
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_45_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56А
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_45_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpФ

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57f
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_58Ќ

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_58Identity_58:output:0*
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

ѕ
C__inference_dense_44_layer_call_and_return_conditional_losses_53177

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*З
serving_defaultЃ
G
input_19;
serving_default_input_19:0џџџџџџџџџ<
dense_450
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Мы
х
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
Ю_default_save_signature
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_sequential
Н

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
regularization_losses
	variables
trainable_variables
	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
$regularization_losses
%	variables
&trainable_variables
'	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

(kernel
)bias
*regularization_losses
+	variables
,trainable_variables
-	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
.regularization_losses
/	variables
0trainable_variables
1	keras_api
л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
н__call__
+о&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
8regularization_losses
9	variables
:trainable_variables
;	keras_api
п__call__
+р&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
<regularization_losses
=	variables
>trainable_variables
?	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

@kernel
Abias
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"
_tf_keras_layer

Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratemЎmЏmАmБ(mВ)mГ2mД3mЕ@mЖAmЗFmИGmЙLmКMmЛRmМSmНvОvПvРvС(vТ)vУ2vФ3vХ@vЦAvЧFvШGvЩLvЪMvЫRvЬSvЭ"
	optimizer
 "
trackable_list_wrapper

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

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
Ю
regularization_losses

]layers
^layer_regularization_losses
	variables
_non_trainable_variables
trainable_variables
`metrics
alayer_metrics
Я__call__
Ю_default_save_signature
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
-
ыserving_default"
signature_map
*:( 2conv2d_54/kernel
: 2conv2d_54/bias
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
А
regularization_losses

blayers
clayer_regularization_losses
	variables
dnon_trainable_variables
trainable_variables
emetrics
flayer_metrics
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
regularization_losses

glayers
hlayer_regularization_losses
	variables
inon_trainable_variables
trainable_variables
jmetrics
klayer_metrics
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_55/kernel
: 2conv2d_55/bias
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
А
 regularization_losses

llayers
mlayer_regularization_losses
!	variables
nnon_trainable_variables
"trainable_variables
ometrics
player_metrics
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
$regularization_losses

qlayers
rlayer_regularization_losses
%	variables
snon_trainable_variables
&trainable_variables
tmetrics
ulayer_metrics
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_56/kernel
: 2conv2d_56/bias
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
А
*regularization_losses

vlayers
wlayer_regularization_losses
+	variables
xnon_trainable_variables
,trainable_variables
ymetrics
zlayer_metrics
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
.regularization_losses

{layers
|layer_regularization_losses
/	variables
}non_trainable_variables
0trainable_variables
~metrics
layer_metrics
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_57/kernel
: 2conv2d_57/bias
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
Е
4regularization_losses
layers
 layer_regularization_losses
5	variables
non_trainable_variables
6trainable_variables
metrics
layer_metrics
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
8regularization_losses
layers
 layer_regularization_losses
9	variables
non_trainable_variables
:trainable_variables
metrics
layer_metrics
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
<regularization_losses
layers
 layer_regularization_losses
=	variables
non_trainable_variables
>trainable_variables
metrics
layer_metrics
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
#:!
 2dense_42/kernel
:2dense_42/bias
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
Е
Bregularization_losses
layers
 layer_regularization_losses
C	variables
non_trainable_variables
Dtrainable_variables
metrics
layer_metrics
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
#:!
2dense_43/kernel
:2dense_43/bias
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
Е
Hregularization_losses
layers
 layer_regularization_losses
I	variables
non_trainable_variables
Jtrainable_variables
metrics
layer_metrics
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
": 	@2dense_44/kernel
:@2dense_44/bias
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
Е
Nregularization_losses
layers
 layer_regularization_losses
O	variables
non_trainable_variables
Ptrainable_variables
metrics
layer_metrics
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_45/kernel
:2dense_45/bias
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
Е
Tregularization_losses
layers
 layer_regularization_losses
U	variables
 non_trainable_variables
Vtrainable_variables
Ёmetrics
Ђlayer_metrics
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
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
Ѓ0
Є1"
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

Ѕtotal

Іcount
Ї	variables
Ј	keras_api"
_tf_keras_metric
c

Љtotal

Њcount
Ћ
_fn_kwargs
Ќ	variables
­	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Ѕ0
І1"
trackable_list_wrapper
.
Ї	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Љ0
Њ1"
trackable_list_wrapper
.
Ќ	variables"
_generic_user_object
/:- 2Adam/conv2d_54/kernel/m
!: 2Adam/conv2d_54/bias/m
/:-  2Adam/conv2d_55/kernel/m
!: 2Adam/conv2d_55/bias/m
/:-  2Adam/conv2d_56/kernel/m
!: 2Adam/conv2d_56/bias/m
/:-  2Adam/conv2d_57/kernel/m
!: 2Adam/conv2d_57/bias/m
(:&
 2Adam/dense_42/kernel/m
!:2Adam/dense_42/bias/m
(:&
2Adam/dense_43/kernel/m
!:2Adam/dense_43/bias/m
':%	@2Adam/dense_44/kernel/m
 :@2Adam/dense_44/bias/m
&:$@2Adam/dense_45/kernel/m
 :2Adam/dense_45/bias/m
/:- 2Adam/conv2d_54/kernel/v
!: 2Adam/conv2d_54/bias/v
/:-  2Adam/conv2d_55/kernel/v
!: 2Adam/conv2d_55/bias/v
/:-  2Adam/conv2d_56/kernel/v
!: 2Adam/conv2d_56/bias/v
/:-  2Adam/conv2d_57/kernel/v
!: 2Adam/conv2d_57/bias/v
(:&
 2Adam/dense_42/kernel/v
!:2Adam/dense_42/bias/v
(:&
2Adam/dense_43/kernel/v
!:2Adam/dense_43/bias/v
':%	@2Adam/dense_44/kernel/v
 :@2Adam/dense_44/bias/v
&:$@2Adam/dense_45/kernel/v
 :2Adam/dense_45/bias/v
ЬBЩ
 __inference__wrapped_model_52937input_19"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2џ
-__inference_sequential_18_layer_call_fn_53236
-__inference_sequential_18_layer_call_fn_53682
-__inference_sequential_18_layer_call_fn_53719
-__inference_sequential_18_layer_call_fn_53502Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_18_layer_call_and_return_conditional_losses_53785
H__inference_sequential_18_layer_call_and_return_conditional_losses_53851
H__inference_sequential_18_layer_call_and_return_conditional_losses_53551
H__inference_sequential_18_layer_call_and_return_conditional_losses_53600Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_conv2d_54_layer_call_fn_53860Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_54_layer_call_and_return_conditional_losses_53871Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_54_layer_call_fn_53876
0__inference_max_pooling2d_54_layer_call_fn_53881Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_53886
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_53891Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_55_layer_call_fn_53900Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_55_layer_call_and_return_conditional_losses_53911Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_55_layer_call_fn_53916
0__inference_max_pooling2d_55_layer_call_fn_53921Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_53926
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_53931Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_56_layer_call_fn_53940Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_56_layer_call_and_return_conditional_losses_53951Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_56_layer_call_fn_53956
0__inference_max_pooling2d_56_layer_call_fn_53961Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_53966
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_53971Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_57_layer_call_fn_53980Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_57_layer_call_and_return_conditional_losses_53991Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_57_layer_call_fn_53996
0__inference_max_pooling2d_57_layer_call_fn_54001Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_54006
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_54011Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_flatten_18_layer_call_fn_54016Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_flatten_18_layer_call_and_return_conditional_losses_54022Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_42_layer_call_fn_54031Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_42_layer_call_and_return_conditional_losses_54042Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_43_layer_call_fn_54051Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_43_layer_call_and_return_conditional_losses_54062Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_44_layer_call_fn_54071Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_44_layer_call_and_return_conditional_losses_54082Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_45_layer_call_fn_54091Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_45_layer_call_and_return_conditional_losses_54102Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЫBШ
#__inference_signature_wrapper_53645input_19"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Љ
 __inference__wrapped_model_52937()23@AFGLMRS;Ђ8
1Ђ.
,)
input_19џџџџџџџџџ
Њ "3Њ0
.
dense_45"
dense_45џџџџџџџџџИ
D__inference_conv2d_54_layer_call_and_return_conditional_losses_53871p9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "/Ђ,
%"
0џџџџџџџџџ 
 
)__inference_conv2d_54_layer_call_fn_53860c9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ ""џџџџџџџџџ Д
D__inference_conv2d_55_layer_call_and_return_conditional_losses_53911l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџJJ 
Њ "-Ђ*
# 
0џџџџџџџџџHH 
 
)__inference_conv2d_55_layer_call_fn_53900_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџJJ 
Њ " џџџџџџџџџHH Д
D__inference_conv2d_56_layer_call_and_return_conditional_losses_53951l()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$$ 
Њ "-Ђ*
# 
0џџџџџџџџџ"" 
 
)__inference_conv2d_56_layer_call_fn_53940_()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$$ 
Њ " џџџџџџџџџ"" Д
D__inference_conv2d_57_layer_call_and_return_conditional_losses_53991l237Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџ 
 
)__inference_conv2d_57_layer_call_fn_53980_237Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ " џџџџџџџџџ Ѕ
C__inference_dense_42_layer_call_and_return_conditional_losses_54042^@A0Ђ-
&Ђ#
!
inputsџџџџџџџџџ 
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_dense_42_layer_call_fn_54031Q@A0Ђ-
&Ђ#
!
inputsџџџџџџџџџ 
Њ "џџџџџџџџџЅ
C__inference_dense_43_layer_call_and_return_conditional_losses_54062^FG0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_dense_43_layer_call_fn_54051QFG0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЄ
C__inference_dense_44_layer_call_and_return_conditional_losses_54082]LM0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 |
(__inference_dense_44_layer_call_fn_54071PLM0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@Ѓ
C__inference_dense_45_layer_call_and_return_conditional_losses_54102\RS/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_45_layer_call_fn_54091ORS/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџЊ
E__inference_flatten_18_layer_call_and_return_conditional_losses_54022a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "&Ђ#

0џџџџџџџџџ 
 
*__inference_flatten_18_layer_call_fn_54016T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "џџџџџџџџџ ю
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_53886RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Й
K__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_53891j9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџJJ 
 Ц
0__inference_max_pooling2d_54_layer_call_fn_53876RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_54_layer_call_fn_53881]9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ 
Њ " џџџџџџџџџJJ ю
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_53926RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
K__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_53931h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџHH 
Њ "-Ђ*
# 
0џџџџџџџџџ$$ 
 Ц
0__inference_max_pooling2d_55_layer_call_fn_53916RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_55_layer_call_fn_53921[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџHH 
Њ " џџџџџџџџџ$$ ю
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_53966RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_53971h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ"" 
Њ "-Ђ*
# 
0џџџџџџџџџ 
 Ц
0__inference_max_pooling2d_56_layer_call_fn_53956RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_56_layer_call_fn_53961[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ"" 
Њ " џџџџџџџџџ ю
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_54006RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_54011h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџ 
 Ц
0__inference_max_pooling2d_57_layer_call_fn_53996RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_57_layer_call_fn_54001[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ " џџџџџџџџџ Ъ
H__inference_sequential_18_layer_call_and_return_conditional_losses_53551~()23@AFGLMRSCЂ@
9Ђ6
,)
input_19џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ъ
H__inference_sequential_18_layer_call_and_return_conditional_losses_53600~()23@AFGLMRSCЂ@
9Ђ6
,)
input_19џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ш
H__inference_sequential_18_layer_call_and_return_conditional_losses_53785|()23@AFGLMRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ш
H__inference_sequential_18_layer_call_and_return_conditional_losses_53851|()23@AFGLMRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ђ
-__inference_sequential_18_layer_call_fn_53236q()23@AFGLMRSCЂ@
9Ђ6
,)
input_19џџџџџџџџџ
p 

 
Њ "џџџџџџџџџЂ
-__inference_sequential_18_layer_call_fn_53502q()23@AFGLMRSCЂ@
9Ђ6
,)
input_19џџџџџџџџџ
p

 
Њ "џџџџџџџџџ 
-__inference_sequential_18_layer_call_fn_53682o()23@AFGLMRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ 
-__inference_sequential_18_layer_call_fn_53719o()23@AFGLMRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџИ
#__inference_signature_wrapper_53645()23@AFGLMRSGЂD
Ђ 
=Њ:
8
input_19,)
input_19џџџџџџџџџ"3Њ0
.
dense_45"
dense_45џџџџџџџџџ