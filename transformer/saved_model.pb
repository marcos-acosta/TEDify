??"
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
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
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
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
2
StopGradient

input"T
output"T"	
Ttype
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
{
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_30/kernel
t
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes
:	?*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:*
dtype0
z
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_31/kernel
s
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes

:*
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
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
?
6token_and_position_embedding_7/embedding_14/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*G
shared_name86token_and_position_embedding_7/embedding_14/embeddings
?
Jtoken_and_position_embedding_7/embedding_14/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_7/embedding_14/embeddings*!
_output_shapes
:???*
dtype0
?
6token_and_position_embedding_7/embedding_15/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*G
shared_name86token_and_position_embedding_7/embedding_15/embeddings
?
Jtoken_and_position_embedding_7/embedding_15/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_7/embedding_15/embeddings* 
_output_shapes
:
??*
dtype0
?
7transformer_block_7/multi_head_attention_7/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*H
shared_name97transformer_block_7/multi_head_attention_7/query/kernel
?
Ktransformer_block_7/multi_head_attention_7/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_7/multi_head_attention_7/query/kernel*$
_output_shapes
:??*
dtype0
?
5transformer_block_7/multi_head_attention_7/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*F
shared_name75transformer_block_7/multi_head_attention_7/query/bias
?
Itransformer_block_7/multi_head_attention_7/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_7/multi_head_attention_7/query/bias*
_output_shapes
:	?*
dtype0
?
5transformer_block_7/multi_head_attention_7/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*F
shared_name75transformer_block_7/multi_head_attention_7/key/kernel
?
Itransformer_block_7/multi_head_attention_7/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_7/multi_head_attention_7/key/kernel*$
_output_shapes
:??*
dtype0
?
3transformer_block_7/multi_head_attention_7/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*D
shared_name53transformer_block_7/multi_head_attention_7/key/bias
?
Gtransformer_block_7/multi_head_attention_7/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_7/multi_head_attention_7/key/bias*
_output_shapes
:	?*
dtype0
?
7transformer_block_7/multi_head_attention_7/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*H
shared_name97transformer_block_7/multi_head_attention_7/value/kernel
?
Ktransformer_block_7/multi_head_attention_7/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_7/multi_head_attention_7/value/kernel*$
_output_shapes
:??*
dtype0
?
5transformer_block_7/multi_head_attention_7/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*F
shared_name75transformer_block_7/multi_head_attention_7/value/bias
?
Itransformer_block_7/multi_head_attention_7/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_7/multi_head_attention_7/value/bias*
_output_shapes
:	?*
dtype0
?
Btransformer_block_7/multi_head_attention_7/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*S
shared_nameDBtransformer_block_7/multi_head_attention_7/attention_output/kernel
?
Vtransformer_block_7/multi_head_attention_7/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_7/multi_head_attention_7/attention_output/kernel*$
_output_shapes
:??*
dtype0
?
@transformer_block_7/multi_head_attention_7/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*Q
shared_nameB@transformer_block_7/multi_head_attention_7/attention_output/bias
?
Ttransformer_block_7/multi_head_attention_7/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_7/multi_head_attention_7/attention_output/bias*
_output_shapes	
:?*
dtype0
{
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@* 
shared_namedense_28/kernel
t
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes
:	?@*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:@*
dtype0
{
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?* 
shared_namedense_29/kernel
t
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes
:	@?*
dtype0
s
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_29/bias
l
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes	
:?*
dtype0
?
0transformer_block_7/layer_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*A
shared_name20transformer_block_7/layer_normalization_14/gamma
?
Dtransformer_block_7/layer_normalization_14/gamma/Read/ReadVariableOpReadVariableOp0transformer_block_7/layer_normalization_14/gamma*
_output_shapes	
:?*
dtype0
?
/transformer_block_7/layer_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_block_7/layer_normalization_14/beta
?
Ctransformer_block_7/layer_normalization_14/beta/Read/ReadVariableOpReadVariableOp/transformer_block_7/layer_normalization_14/beta*
_output_shapes	
:?*
dtype0
?
0transformer_block_7/layer_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*A
shared_name20transformer_block_7/layer_normalization_15/gamma
?
Dtransformer_block_7/layer_normalization_15/gamma/Read/ReadVariableOpReadVariableOp0transformer_block_7/layer_normalization_15/gamma*
_output_shapes	
:?*
dtype0
?
/transformer_block_7/layer_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_block_7/layer_normalization_15/beta
?
Ctransformer_block_7/layer_normalization_15/beta/Read/ReadVariableOpReadVariableOp/transformer_block_7/layer_normalization_15/beta*
_output_shapes	
:?*
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
Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_30/kernel/m
?
*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_31/kernel/m
?
*Adam/dense_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/m
y
(Adam/dense_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/m*
_output_shapes
:*
dtype0
?
=Adam/token_and_position_embedding_7/embedding_14/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*N
shared_name?=Adam/token_and_position_embedding_7/embedding_14/embeddings/m
?
QAdam/token_and_position_embedding_7/embedding_14/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_7/embedding_14/embeddings/m*!
_output_shapes
:???*
dtype0
?
=Adam/token_and_position_embedding_7/embedding_15/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/token_and_position_embedding_7/embedding_15/embeddings/m
?
QAdam/token_and_position_embedding_7/embedding_15/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_7/embedding_15/embeddings/m* 
_output_shapes
:
??*
dtype0
?
>Adam/transformer_block_7/multi_head_attention_7/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*O
shared_name@>Adam/transformer_block_7/multi_head_attention_7/query/kernel/m
?
RAdam/transformer_block_7/multi_head_attention_7/query/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_7/multi_head_attention_7/query/kernel/m*$
_output_shapes
:??*
dtype0
?
<Adam/transformer_block_7/multi_head_attention_7/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*M
shared_name><Adam/transformer_block_7/multi_head_attention_7/query/bias/m
?
PAdam/transformer_block_7/multi_head_attention_7/query/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_7/multi_head_attention_7/query/bias/m*
_output_shapes
:	?*
dtype0
?
<Adam/transformer_block_7/multi_head_attention_7/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*M
shared_name><Adam/transformer_block_7/multi_head_attention_7/key/kernel/m
?
PAdam/transformer_block_7/multi_head_attention_7/key/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_7/multi_head_attention_7/key/kernel/m*$
_output_shapes
:??*
dtype0
?
:Adam/transformer_block_7/multi_head_attention_7/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*K
shared_name<:Adam/transformer_block_7/multi_head_attention_7/key/bias/m
?
NAdam/transformer_block_7/multi_head_attention_7/key/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_7/multi_head_attention_7/key/bias/m*
_output_shapes
:	?*
dtype0
?
>Adam/transformer_block_7/multi_head_attention_7/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*O
shared_name@>Adam/transformer_block_7/multi_head_attention_7/value/kernel/m
?
RAdam/transformer_block_7/multi_head_attention_7/value/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_7/multi_head_attention_7/value/kernel/m*$
_output_shapes
:??*
dtype0
?
<Adam/transformer_block_7/multi_head_attention_7/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*M
shared_name><Adam/transformer_block_7/multi_head_attention_7/value/bias/m
?
PAdam/transformer_block_7/multi_head_attention_7/value/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_7/multi_head_attention_7/value/bias/m*
_output_shapes
:	?*
dtype0
?
IAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*Z
shared_nameKIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/m
?
]Adam/transformer_block_7/multi_head_attention_7/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/m*$
_output_shapes
:??*
dtype0
?
GAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*X
shared_nameIGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/m
?
[Adam/transformer_block_7/multi_head_attention_7/attention_output/bias/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_28/kernel/m
?
*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_28/bias/m
y
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*'
shared_nameAdam/dense_29/kernel/m
?
*Adam/dense_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/dense_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_29/bias/m
z
(Adam/dense_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/m*
_output_shapes	
:?*
dtype0
?
7Adam/transformer_block_7/layer_normalization_14/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97Adam/transformer_block_7/layer_normalization_14/gamma/m
?
KAdam/transformer_block_7/layer_normalization_14/gamma/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_7/layer_normalization_14/gamma/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_7/layer_normalization_14/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_7/layer_normalization_14/beta/m
?
JAdam/transformer_block_7/layer_normalization_14/beta/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_7/layer_normalization_14/beta/m*
_output_shapes	
:?*
dtype0
?
7Adam/transformer_block_7/layer_normalization_15/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97Adam/transformer_block_7/layer_normalization_15/gamma/m
?
KAdam/transformer_block_7/layer_normalization_15/gamma/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_7/layer_normalization_15/gamma/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_7/layer_normalization_15/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_7/layer_normalization_15/beta/m
?
JAdam/transformer_block_7/layer_normalization_15/beta/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_7/layer_normalization_15/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_30/kernel/v
?
*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_31/kernel/v
?
*Adam/dense_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/v
y
(Adam/dense_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/v*
_output_shapes
:*
dtype0
?
=Adam/token_and_position_embedding_7/embedding_14/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*N
shared_name?=Adam/token_and_position_embedding_7/embedding_14/embeddings/v
?
QAdam/token_and_position_embedding_7/embedding_14/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_7/embedding_14/embeddings/v*!
_output_shapes
:???*
dtype0
?
=Adam/token_and_position_embedding_7/embedding_15/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/token_and_position_embedding_7/embedding_15/embeddings/v
?
QAdam/token_and_position_embedding_7/embedding_15/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_7/embedding_15/embeddings/v* 
_output_shapes
:
??*
dtype0
?
>Adam/transformer_block_7/multi_head_attention_7/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*O
shared_name@>Adam/transformer_block_7/multi_head_attention_7/query/kernel/v
?
RAdam/transformer_block_7/multi_head_attention_7/query/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_7/multi_head_attention_7/query/kernel/v*$
_output_shapes
:??*
dtype0
?
<Adam/transformer_block_7/multi_head_attention_7/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*M
shared_name><Adam/transformer_block_7/multi_head_attention_7/query/bias/v
?
PAdam/transformer_block_7/multi_head_attention_7/query/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_7/multi_head_attention_7/query/bias/v*
_output_shapes
:	?*
dtype0
?
<Adam/transformer_block_7/multi_head_attention_7/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*M
shared_name><Adam/transformer_block_7/multi_head_attention_7/key/kernel/v
?
PAdam/transformer_block_7/multi_head_attention_7/key/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_7/multi_head_attention_7/key/kernel/v*$
_output_shapes
:??*
dtype0
?
:Adam/transformer_block_7/multi_head_attention_7/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*K
shared_name<:Adam/transformer_block_7/multi_head_attention_7/key/bias/v
?
NAdam/transformer_block_7/multi_head_attention_7/key/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_7/multi_head_attention_7/key/bias/v*
_output_shapes
:	?*
dtype0
?
>Adam/transformer_block_7/multi_head_attention_7/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*O
shared_name@>Adam/transformer_block_7/multi_head_attention_7/value/kernel/v
?
RAdam/transformer_block_7/multi_head_attention_7/value/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_7/multi_head_attention_7/value/kernel/v*$
_output_shapes
:??*
dtype0
?
<Adam/transformer_block_7/multi_head_attention_7/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*M
shared_name><Adam/transformer_block_7/multi_head_attention_7/value/bias/v
?
PAdam/transformer_block_7/multi_head_attention_7/value/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_7/multi_head_attention_7/value/bias/v*
_output_shapes
:	?*
dtype0
?
IAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*Z
shared_nameKIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/v
?
]Adam/transformer_block_7/multi_head_attention_7/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/v*$
_output_shapes
:??*
dtype0
?
GAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*X
shared_nameIGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/v
?
[Adam/transformer_block_7/multi_head_attention_7/attention_output/bias/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_28/kernel/v
?
*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_28/bias/v
y
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*'
shared_nameAdam/dense_29/kernel/v
?
*Adam/dense_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/dense_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_29/bias/v
z
(Adam/dense_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/v*
_output_shapes	
:?*
dtype0
?
7Adam/transformer_block_7/layer_normalization_14/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97Adam/transformer_block_7/layer_normalization_14/gamma/v
?
KAdam/transformer_block_7/layer_normalization_14/gamma/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_7/layer_normalization_14/gamma/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_7/layer_normalization_14/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_7/layer_normalization_14/beta/v
?
JAdam/transformer_block_7/layer_normalization_14/beta/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_7/layer_normalization_14/beta/v*
_output_shapes	
:?*
dtype0
?
7Adam/transformer_block_7/layer_normalization_15/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97Adam/transformer_block_7/layer_normalization_15/gamma/v
?
KAdam/transformer_block_7/layer_normalization_15/gamma/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_7/layer_normalization_15/gamma/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_block_7/layer_normalization_15/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_block_7/layer_normalization_15/beta/v
?
JAdam/transformer_block_7/layer_normalization_15/beta/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_7/layer_normalization_15/beta/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*̔
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
n
	token_emb
pos_emb
	variables
regularization_losses
trainable_variables
	keras_api
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
h

'kernel
(bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
R
-	variables
.regularization_losses
/trainable_variables
0	keras_api
h

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
 
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
?
Nlayer_regularization_losses
Onon_trainable_variables

Players

	variables
regularization_losses
Qmetrics
Rlayer_metrics
trainable_variables
 
b
<
embeddings
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
b
=
embeddings
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api

<0
=1
 

<0
=1
?
[layer_regularization_losses

\layers
]non_trainable_variables
	variables
regularization_losses
^metrics
_layer_metrics
trainable_variables
?
`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
f	variables
gregularization_losses
htrainable_variables
i	keras_api
?
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
q
paxis
	Jgamma
Kbeta
q	variables
rregularization_losses
strainable_variables
t	keras_api
q
uaxis
	Lgamma
Mbeta
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
R
z	variables
{regularization_losses
|trainable_variables
}	keras_api
T
~	variables
regularization_losses
?trainable_variables
?	keras_api
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
 
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
	variables
regularization_losses
?metrics
?layer_metrics
trainable_variables
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
	variables
 regularization_losses
?metrics
?layer_metrics
!trainable_variables
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
#	variables
$regularization_losses
?metrics
?layer_metrics
%trainable_variables
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
)	variables
*regularization_losses
?metrics
?layer_metrics
+trainable_variables
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
-	variables
.regularization_losses
?metrics
?layer_metrics
/trainable_variables
[Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_31/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
3	variables
4regularization_losses
?metrics
?layer_metrics
5trainable_variables
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
rp
VARIABLE_VALUE6token_and_position_embedding_7/embedding_14/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE6token_and_position_embedding_7/embedding_15/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_7/multi_head_attention_7/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_7/multi_head_attention_7/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_7/multi_head_attention_7/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block_7/multi_head_attention_7/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_7/multi_head_attention_7/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_7/multi_head_attention_7/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEBtransformer_block_7/multi_head_attention_7/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE@transformer_block_7/multi_head_attention_7/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_28/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_28/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_29/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_29/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE0transformer_block_7/layer_normalization_14/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_7/layer_normalization_14/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE0transformer_block_7/layer_normalization_15/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_7/layer_normalization_15/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7

?0
?1
 

<0
 

<0
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
S	variables
Tregularization_losses
?metrics
?layer_metrics
Utrainable_variables

=0
 

=0
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
W	variables
Xregularization_losses
?metrics
?layer_metrics
Ytrainable_variables
 

0
1
 
 
 
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
8
>0
?1
@2
A3
B4
C5
D6
E7
 
8
>0
?1
@2
A3
B4
C5
D6
E7
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
f	variables
gregularization_losses
?metrics
?layer_metrics
htrainable_variables
l

Fkernel
Gbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

Hkernel
Ibias
?	variables
?regularization_losses
?trainable_variables
?	keras_api

F0
G1
H2
I3
 

F0
G1
H2
I3
?
 ?layer_regularization_losses
?non_trainable_variables
?layers
l	variables
mregularization_losses
?metrics
?layer_metrics
ntrainable_variables
 

J0
K1
 

J0
K1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
q	variables
rregularization_losses
?metrics
?layer_metrics
strainable_variables
 

L0
M1
 

L0
M1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
v	variables
wregularization_losses
?metrics
?layer_metrics
xtrainable_variables
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
z	variables
{regularization_losses
?metrics
?layer_metrics
|trainable_variables
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
~	variables
regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
*
0
1
2
3
4
5
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

>0
?1
 

>0
?1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
 

@0
A1
 

@0
A1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
 

B0
C1
 

B0
C1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
 

D0
E1
 

D0
E1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
*
`0
a1
b2
c3
d4
e5
 
 
 

F0
G1
 

F0
G1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables

H0
I1
 

H0
I1
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
 
 

j0
k1
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
~|
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/token_and_position_embedding_7/embedding_14/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/token_and_position_embedding_7/embedding_15/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_7/multi_head_attention_7/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_7/multi_head_attention_7/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_7/multi_head_attention_7/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block_7/multi_head_attention_7/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_7/multi_head_attention_7/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_7/multi_head_attention_7/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_28/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_28/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_29/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_29/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/transformer_block_7/layer_normalization_14/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_7/layer_normalization_14/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/transformer_block_7/layer_normalization_15/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_7/layer_normalization_15/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/token_and_position_embedding_7/embedding_14/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/token_and_position_embedding_7/embedding_15/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_7/multi_head_attention_7/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_7/multi_head_attention_7/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_7/multi_head_attention_7/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block_7/multi_head_attention_7/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_7/multi_head_attention_7/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_7/multi_head_attention_7/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_28/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_28/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_29/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_29/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/transformer_block_7/layer_normalization_14/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_7/layer_normalization_14/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/transformer_block_7/layer_normalization_15/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_7/layer_normalization_15/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_8Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_86token_and_position_embedding_7/embedding_15/embeddings6token_and_position_embedding_7/embedding_14/embeddings7transformer_block_7/multi_head_attention_7/query/kernel5transformer_block_7/multi_head_attention_7/query/bias5transformer_block_7/multi_head_attention_7/key/kernel3transformer_block_7/multi_head_attention_7/key/bias7transformer_block_7/multi_head_attention_7/value/kernel5transformer_block_7/multi_head_attention_7/value/biasBtransformer_block_7/multi_head_attention_7/attention_output/kernel@transformer_block_7/multi_head_attention_7/attention_output/bias0transformer_block_7/layer_normalization_14/gamma/transformer_block_7/layer_normalization_14/betadense_28/kerneldense_28/biasdense_29/kerneldense_29/bias0transformer_block_7/layer_normalization_15/gamma/transformer_block_7/layer_normalization_15/betadense_30/kerneldense_30/biasdense_31/kerneldense_31/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_646977
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpJtoken_and_position_embedding_7/embedding_14/embeddings/Read/ReadVariableOpJtoken_and_position_embedding_7/embedding_15/embeddings/Read/ReadVariableOpKtransformer_block_7/multi_head_attention_7/query/kernel/Read/ReadVariableOpItransformer_block_7/multi_head_attention_7/query/bias/Read/ReadVariableOpItransformer_block_7/multi_head_attention_7/key/kernel/Read/ReadVariableOpGtransformer_block_7/multi_head_attention_7/key/bias/Read/ReadVariableOpKtransformer_block_7/multi_head_attention_7/value/kernel/Read/ReadVariableOpItransformer_block_7/multi_head_attention_7/value/bias/Read/ReadVariableOpVtransformer_block_7/multi_head_attention_7/attention_output/kernel/Read/ReadVariableOpTtransformer_block_7/multi_head_attention_7/attention_output/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOpDtransformer_block_7/layer_normalization_14/gamma/Read/ReadVariableOpCtransformer_block_7/layer_normalization_14/beta/Read/ReadVariableOpDtransformer_block_7/layer_normalization_15/gamma/Read/ReadVariableOpCtransformer_block_7/layer_normalization_15/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOp*Adam/dense_31/kernel/m/Read/ReadVariableOp(Adam/dense_31/bias/m/Read/ReadVariableOpQAdam/token_and_position_embedding_7/embedding_14/embeddings/m/Read/ReadVariableOpQAdam/token_and_position_embedding_7/embedding_15/embeddings/m/Read/ReadVariableOpRAdam/transformer_block_7/multi_head_attention_7/query/kernel/m/Read/ReadVariableOpPAdam/transformer_block_7/multi_head_attention_7/query/bias/m/Read/ReadVariableOpPAdam/transformer_block_7/multi_head_attention_7/key/kernel/m/Read/ReadVariableOpNAdam/transformer_block_7/multi_head_attention_7/key/bias/m/Read/ReadVariableOpRAdam/transformer_block_7/multi_head_attention_7/value/kernel/m/Read/ReadVariableOpPAdam/transformer_block_7/multi_head_attention_7/value/bias/m/Read/ReadVariableOp]Adam/transformer_block_7/multi_head_attention_7/attention_output/kernel/m/Read/ReadVariableOp[Adam/transformer_block_7/multi_head_attention_7/attention_output/bias/m/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp*Adam/dense_29/kernel/m/Read/ReadVariableOp(Adam/dense_29/bias/m/Read/ReadVariableOpKAdam/transformer_block_7/layer_normalization_14/gamma/m/Read/ReadVariableOpJAdam/transformer_block_7/layer_normalization_14/beta/m/Read/ReadVariableOpKAdam/transformer_block_7/layer_normalization_15/gamma/m/Read/ReadVariableOpJAdam/transformer_block_7/layer_normalization_15/beta/m/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOp*Adam/dense_31/kernel/v/Read/ReadVariableOp(Adam/dense_31/bias/v/Read/ReadVariableOpQAdam/token_and_position_embedding_7/embedding_14/embeddings/v/Read/ReadVariableOpQAdam/token_and_position_embedding_7/embedding_15/embeddings/v/Read/ReadVariableOpRAdam/transformer_block_7/multi_head_attention_7/query/kernel/v/Read/ReadVariableOpPAdam/transformer_block_7/multi_head_attention_7/query/bias/v/Read/ReadVariableOpPAdam/transformer_block_7/multi_head_attention_7/key/kernel/v/Read/ReadVariableOpNAdam/transformer_block_7/multi_head_attention_7/key/bias/v/Read/ReadVariableOpRAdam/transformer_block_7/multi_head_attention_7/value/kernel/v/Read/ReadVariableOpPAdam/transformer_block_7/multi_head_attention_7/value/bias/v/Read/ReadVariableOp]Adam/transformer_block_7/multi_head_attention_7/attention_output/kernel/v/Read/ReadVariableOp[Adam/transformer_block_7/multi_head_attention_7/attention_output/bias/v/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOp*Adam/dense_29/kernel/v/Read/ReadVariableOp(Adam/dense_29/bias/v/Read/ReadVariableOpKAdam/transformer_block_7/layer_normalization_14/gamma/v/Read/ReadVariableOpJAdam/transformer_block_7/layer_normalization_14/beta/v/Read/ReadVariableOpKAdam/transformer_block_7/layer_normalization_15/gamma/v/Read/ReadVariableOpJAdam/transformer_block_7/layer_normalization_15/beta/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_648405
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_30/kerneldense_30/biasdense_31/kerneldense_31/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate6token_and_position_embedding_7/embedding_14/embeddings6token_and_position_embedding_7/embedding_15/embeddings7transformer_block_7/multi_head_attention_7/query/kernel5transformer_block_7/multi_head_attention_7/query/bias5transformer_block_7/multi_head_attention_7/key/kernel3transformer_block_7/multi_head_attention_7/key/bias7transformer_block_7/multi_head_attention_7/value/kernel5transformer_block_7/multi_head_attention_7/value/biasBtransformer_block_7/multi_head_attention_7/attention_output/kernel@transformer_block_7/multi_head_attention_7/attention_output/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias0transformer_block_7/layer_normalization_14/gamma/transformer_block_7/layer_normalization_14/beta0transformer_block_7/layer_normalization_15/gamma/transformer_block_7/layer_normalization_15/betatotalcounttotal_1count_1Adam/dense_30/kernel/mAdam/dense_30/bias/mAdam/dense_31/kernel/mAdam/dense_31/bias/m=Adam/token_and_position_embedding_7/embedding_14/embeddings/m=Adam/token_and_position_embedding_7/embedding_15/embeddings/m>Adam/transformer_block_7/multi_head_attention_7/query/kernel/m<Adam/transformer_block_7/multi_head_attention_7/query/bias/m<Adam/transformer_block_7/multi_head_attention_7/key/kernel/m:Adam/transformer_block_7/multi_head_attention_7/key/bias/m>Adam/transformer_block_7/multi_head_attention_7/value/kernel/m<Adam/transformer_block_7/multi_head_attention_7/value/bias/mIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/mGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/mAdam/dense_28/kernel/mAdam/dense_28/bias/mAdam/dense_29/kernel/mAdam/dense_29/bias/m7Adam/transformer_block_7/layer_normalization_14/gamma/m6Adam/transformer_block_7/layer_normalization_14/beta/m7Adam/transformer_block_7/layer_normalization_15/gamma/m6Adam/transformer_block_7/layer_normalization_15/beta/mAdam/dense_30/kernel/vAdam/dense_30/bias/vAdam/dense_31/kernel/vAdam/dense_31/bias/v=Adam/token_and_position_embedding_7/embedding_14/embeddings/v=Adam/token_and_position_embedding_7/embedding_15/embeddings/v>Adam/transformer_block_7/multi_head_attention_7/query/kernel/v<Adam/transformer_block_7/multi_head_attention_7/query/bias/v<Adam/transformer_block_7/multi_head_attention_7/key/kernel/v:Adam/transformer_block_7/multi_head_attention_7/key/bias/v>Adam/transformer_block_7/multi_head_attention_7/value/kernel/v<Adam/transformer_block_7/multi_head_attention_7/value/bias/vIAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/vGAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/vAdam/dense_28/kernel/vAdam/dense_28/bias/vAdam/dense_29/kernel/vAdam/dense_29/bias/v7Adam/transformer_block_7/layer_normalization_14/gamma/v6Adam/transformer_block_7/layer_normalization_14/beta/v7Adam/transformer_block_7/layer_normalization_15/gamma/v6Adam/transformer_block_7/layer_normalization_15/beta/v*W
TinP
N2L*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_648640??
?
W
;__inference_global_average_pooling1d_6_layer_call_fn_647844

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_6465322
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
4__inference_transformer_block_7_layer_call_fn_647822

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
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
 *-
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_6464182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*l
_input_shapes[
Y:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
D__inference_dense_28_layer_call_and_return_conditional_losses_645948

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_647839

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
4__inference_transformer_block_7_layer_call_fn_647785

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
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
 *-
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_6462912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*l
_input_shapes[
Y:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_646011
dense_28_input
dense_28_645959
dense_28_645961
dense_29_646005
dense_29_646007
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCalldense_28_inputdense_28_645959dense_28_645961*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_6459482"
 dense_28/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_646005dense_29_646007*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_6459942"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_28_input
?
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_646042

inputs
dense_28_646031
dense_28_646033
dense_29_646036
dense_29_646038
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCallinputsdense_28_646031dense_28_646033*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_6459482"
 dense_28/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_646036dense_29_646038*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_6459942"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?J
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_647995

inputs.
*dense_28_tensordot_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource.
*dense_29_tensordot_readvariableop_resource,
(dense_29_biasadd_readvariableop_resource
identity??dense_28/BiasAdd/ReadVariableOp?!dense_28/Tensordot/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?!dense_29/Tensordot/ReadVariableOp?
!dense_28/Tensordot/ReadVariableOpReadVariableOp*dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!dense_28/Tensordot/ReadVariableOp|
dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_28/Tensordot/axes?
dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_28/Tensordot/freej
dense_28/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_28/Tensordot/Shape?
 dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_28/Tensordot/GatherV2/axis?
dense_28/Tensordot/GatherV2GatherV2!dense_28/Tensordot/Shape:output:0 dense_28/Tensordot/free:output:0)dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_28/Tensordot/GatherV2?
"dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_28/Tensordot/GatherV2_1/axis?
dense_28/Tensordot/GatherV2_1GatherV2!dense_28/Tensordot/Shape:output:0 dense_28/Tensordot/axes:output:0+dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_28/Tensordot/GatherV2_1~
dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_28/Tensordot/Const?
dense_28/Tensordot/ProdProd$dense_28/Tensordot/GatherV2:output:0!dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_28/Tensordot/Prod?
dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_28/Tensordot/Const_1?
dense_28/Tensordot/Prod_1Prod&dense_28/Tensordot/GatherV2_1:output:0#dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_28/Tensordot/Prod_1?
dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_28/Tensordot/concat/axis?
dense_28/Tensordot/concatConcatV2 dense_28/Tensordot/free:output:0 dense_28/Tensordot/axes:output:0'dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_28/Tensordot/concat?
dense_28/Tensordot/stackPack dense_28/Tensordot/Prod:output:0"dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_28/Tensordot/stack?
dense_28/Tensordot/transpose	Transposeinputs"dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_28/Tensordot/transpose?
dense_28/Tensordot/ReshapeReshape dense_28/Tensordot/transpose:y:0!dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_28/Tensordot/Reshape?
dense_28/Tensordot/MatMulMatMul#dense_28/Tensordot/Reshape:output:0)dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_28/Tensordot/MatMul?
dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_28/Tensordot/Const_2?
 dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_28/Tensordot/concat_1/axis?
dense_28/Tensordot/concat_1ConcatV2$dense_28/Tensordot/GatherV2:output:0#dense_28/Tensordot/Const_2:output:0)dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_28/Tensordot/concat_1?
dense_28/TensordotReshape#dense_28/Tensordot/MatMul:product:0$dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2
dense_28/Tensordot?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/Tensordot:output:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
dense_28/BiasAddx
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
dense_28/Relu?
!dense_29/Tensordot/ReadVariableOpReadVariableOp*dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype02#
!dense_29/Tensordot/ReadVariableOp|
dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_29/Tensordot/axes?
dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_29/Tensordot/free
dense_29/Tensordot/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
:2
dense_29/Tensordot/Shape?
 dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_29/Tensordot/GatherV2/axis?
dense_29/Tensordot/GatherV2GatherV2!dense_29/Tensordot/Shape:output:0 dense_29/Tensordot/free:output:0)dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_29/Tensordot/GatherV2?
"dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_29/Tensordot/GatherV2_1/axis?
dense_29/Tensordot/GatherV2_1GatherV2!dense_29/Tensordot/Shape:output:0 dense_29/Tensordot/axes:output:0+dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_29/Tensordot/GatherV2_1~
dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_29/Tensordot/Const?
dense_29/Tensordot/ProdProd$dense_29/Tensordot/GatherV2:output:0!dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_29/Tensordot/Prod?
dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_29/Tensordot/Const_1?
dense_29/Tensordot/Prod_1Prod&dense_29/Tensordot/GatherV2_1:output:0#dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_29/Tensordot/Prod_1?
dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_29/Tensordot/concat/axis?
dense_29/Tensordot/concatConcatV2 dense_29/Tensordot/free:output:0 dense_29/Tensordot/axes:output:0'dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_29/Tensordot/concat?
dense_29/Tensordot/stackPack dense_29/Tensordot/Prod:output:0"dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_29/Tensordot/stack?
dense_29/Tensordot/transpose	Transposedense_28/Relu:activations:0"dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2
dense_29/Tensordot/transpose?
dense_29/Tensordot/ReshapeReshape dense_29/Tensordot/transpose:y:0!dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_29/Tensordot/Reshape?
dense_29/Tensordot/MatMulMatMul#dense_29/Tensordot/Reshape:output:0)dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_29/Tensordot/MatMul?
dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_29/Tensordot/Const_2?
 dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_29/Tensordot/concat_1/axis?
dense_29/Tensordot/concat_1ConcatV2$dense_29/Tensordot/GatherV2:output:0#dense_29/Tensordot/Const_2:output:0)dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_29/Tensordot/concat_1?
dense_29/TensordotReshape#dense_29/Tensordot/MatMul:product:0$dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_29/Tensordot?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/Tensordot:output:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_29/BiasAdd?
IdentityIdentitydense_29/BiasAdd:output:0 ^dense_28/BiasAdd/ReadVariableOp"^dense_28/Tensordot/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp"^dense_29/Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2F
!dense_28/Tensordot/ReadVariableOp!dense_28/Tensordot/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2F
!dense_29/Tensordot/ReadVariableOp!dense_29/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_647342

inputsG
Ctoken_and_position_embedding_7_embedding_15_embedding_lookup_647188G
Ctoken_and_position_embedding_7_embedding_14_embedding_lookup_647194Z
Vtransformer_block_7_multi_head_attention_7_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_7_multi_head_attention_7_query_add_readvariableop_resourceX
Ttransformer_block_7_multi_head_attention_7_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_7_multi_head_attention_7_key_add_readvariableop_resourceZ
Vtransformer_block_7_multi_head_attention_7_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_7_multi_head_attention_7_value_add_readvariableop_resourcee
atransformer_block_7_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_7_multi_head_attention_7_attention_output_add_readvariableop_resourceT
Ptransformer_block_7_layer_normalization_14_batchnorm_mul_readvariableop_resourceP
Ltransformer_block_7_layer_normalization_14_batchnorm_readvariableop_resourceO
Ktransformer_block_7_sequential_7_dense_28_tensordot_readvariableop_resourceM
Itransformer_block_7_sequential_7_dense_28_biasadd_readvariableop_resourceO
Ktransformer_block_7_sequential_7_dense_29_tensordot_readvariableop_resourceM
Itransformer_block_7_sequential_7_dense_29_biasadd_readvariableop_resourceT
Ptransformer_block_7_layer_normalization_15_batchnorm_mul_readvariableop_resourceP
Ltransformer_block_7_layer_normalization_15_batchnorm_readvariableop_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource+
'dense_31_matmul_readvariableop_resource,
(dense_31_biasadd_readvariableop_resource
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?<token_and_position_embedding_7/embedding_14/embedding_lookup?<token_and_position_embedding_7/embedding_15/embedding_lookup?Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp?Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp?Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp?Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp?Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp?Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp?Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp?Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp?Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp?Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp?@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp?Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp?
$token_and_position_embedding_7/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_7/Shape?
2token_and_position_embedding_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????24
2token_and_position_embedding_7/strided_slice/stack?
4token_and_position_embedding_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_7/strided_slice/stack_1?
4token_and_position_embedding_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_7/strided_slice/stack_2?
,token_and_position_embedding_7/strided_sliceStridedSlice-token_and_position_embedding_7/Shape:output:0;token_and_position_embedding_7/strided_slice/stack:output:0=token_and_position_embedding_7/strided_slice/stack_1:output:0=token_and_position_embedding_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_7/strided_slice?
*token_and_position_embedding_7/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_7/range/start?
*token_and_position_embedding_7/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_7/range/delta?
$token_and_position_embedding_7/rangeRange3token_and_position_embedding_7/range/start:output:05token_and_position_embedding_7/strided_slice:output:03token_and_position_embedding_7/range/delta:output:0*#
_output_shapes
:?????????2&
$token_and_position_embedding_7/range?
<token_and_position_embedding_7/embedding_15/embedding_lookupResourceGatherCtoken_and_position_embedding_7_embedding_15_embedding_lookup_647188-token_and_position_embedding_7/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_15/embedding_lookup/647188*(
_output_shapes
:??????????*
dtype02>
<token_and_position_embedding_7/embedding_15/embedding_lookup?
Etoken_and_position_embedding_7/embedding_15/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_7/embedding_15/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_15/embedding_lookup/647188*(
_output_shapes
:??????????2G
Etoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity?
Gtoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:??????????2I
Gtoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1?
0token_and_position_embedding_7/embedding_14/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????22
0token_and_position_embedding_7/embedding_14/Cast?
<token_and_position_embedding_7/embedding_14/embedding_lookupResourceGatherCtoken_and_position_embedding_7_embedding_14_embedding_lookup_6471944token_and_position_embedding_7/embedding_14/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_14/embedding_lookup/647194*-
_output_shapes
:???????????*
dtype02>
<token_and_position_embedding_7/embedding_14/embedding_lookup?
Etoken_and_position_embedding_7/embedding_14/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_7/embedding_14/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_14/embedding_lookup/647194*-
_output_shapes
:???????????2G
Etoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity?
Gtoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2I
Gtoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1?
"token_and_position_embedding_7/addAddV2Ptoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2$
"token_and_position_embedding_7/add?
Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_7_multi_head_attention_7_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02O
Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?
>transformer_block_7/multi_head_attention_7/query/einsum/EinsumEinsum&token_and_position_embedding_7/add:z:0Utransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2@
>transformer_block_7/multi_head_attention_7/query/einsum/Einsum?
Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOpReadVariableOpLtransformer_block_7_multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype02E
Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp?
4transformer_block_7/multi_head_attention_7/query/addAddV2Gtransformer_block_7/multi_head_attention_7/query/einsum/Einsum:output:0Ktransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????26
4transformer_block_7/multi_head_attention_7/query/add?
Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_7_multi_head_attention_7_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02M
Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?
<transformer_block_7/multi_head_attention_7/key/einsum/EinsumEinsum&token_and_position_embedding_7/add:z:0Stransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2>
<transformer_block_7/multi_head_attention_7/key/einsum/Einsum?
Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOpReadVariableOpJtransformer_block_7_multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype02C
Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp?
2transformer_block_7/multi_head_attention_7/key/addAddV2Etransformer_block_7/multi_head_attention_7/key/einsum/Einsum:output:0Itransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????24
2transformer_block_7/multi_head_attention_7/key/add?
Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_7_multi_head_attention_7_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02O
Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?
>transformer_block_7/multi_head_attention_7/value/einsum/EinsumEinsum&token_and_position_embedding_7/add:z:0Utransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2@
>transformer_block_7/multi_head_attention_7/value/einsum/Einsum?
Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOpReadVariableOpLtransformer_block_7_multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype02E
Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp?
4transformer_block_7/multi_head_attention_7/value/addAddV2Gtransformer_block_7/multi_head_attention_7/value/einsum/Einsum:output:0Ktransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????26
4transformer_block_7/multi_head_attention_7/value/add?
0transformer_block_7/multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??=22
0transformer_block_7/multi_head_attention_7/Mul/y?
.transformer_block_7/multi_head_attention_7/MulMul8transformer_block_7/multi_head_attention_7/query/add:z:09transformer_block_7/multi_head_attention_7/Mul/y:output:0*
T0*1
_output_shapes
:???????????20
.transformer_block_7/multi_head_attention_7/Mul?
8transformer_block_7/multi_head_attention_7/einsum/EinsumEinsum6transformer_block_7/multi_head_attention_7/key/add:z:02transformer_block_7/multi_head_attention_7/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2:
8transformer_block_7/multi_head_attention_7/einsum/Einsum?
:transformer_block_7/multi_head_attention_7/softmax/SoftmaxSoftmaxAtransformer_block_7/multi_head_attention_7/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2<
:transformer_block_7/multi_head_attention_7/softmax/Softmax?
;transformer_block_7/multi_head_attention_7/dropout/IdentityIdentityDtransformer_block_7/multi_head_attention_7/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2=
;transformer_block_7/multi_head_attention_7/dropout/Identity?
:transformer_block_7/multi_head_attention_7/einsum_1/EinsumEinsumDtransformer_block_7/multi_head_attention_7/dropout/Identity:output:08transformer_block_7/multi_head_attention_7/value/add:z:0*
N*
T0*1
_output_shapes
:???????????*
equationacbe,aecd->abcd2<
:transformer_block_7/multi_head_attention_7/einsum_1/Einsum?
Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_7_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02Z
Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?
Itransformer_block_7/multi_head_attention_7/attention_output/einsum/EinsumEinsumCtransformer_block_7/multi_head_attention_7/einsum_1/Einsum:output:0`transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:???????????*
equationabcd,cde->abe2K
Itransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum?
Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_7_multi_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp?
?transformer_block_7/multi_head_attention_7/attention_output/addAddV2Rtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum:output:0Vtransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2A
?transformer_block_7/multi_head_attention_7/attention_output/add?
'transformer_block_7/dropout_28/IdentityIdentityCtransformer_block_7/multi_head_attention_7/attention_output/add:z:0*
T0*-
_output_shapes
:???????????2)
'transformer_block_7/dropout_28/Identity?
transformer_block_7/addAddV2&token_and_position_embedding_7/add:z:00transformer_block_7/dropout_28/Identity:output:0*
T0*-
_output_shapes
:???????????2
transformer_block_7/add?
Itransformer_block_7/layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2K
Itransformer_block_7/layer_normalization_14/moments/mean/reduction_indices?
7transformer_block_7/layer_normalization_14/moments/meanMeantransformer_block_7/add:z:0Rtransformer_block_7/layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(29
7transformer_block_7/layer_normalization_14/moments/mean?
?transformer_block_7/layer_normalization_14/moments/StopGradientStopGradient@transformer_block_7/layer_normalization_14/moments/mean:output:0*
T0*,
_output_shapes
:??????????2A
?transformer_block_7/layer_normalization_14/moments/StopGradient?
Dtransformer_block_7/layer_normalization_14/moments/SquaredDifferenceSquaredDifferencetransformer_block_7/add:z:0Htransformer_block_7/layer_normalization_14/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????2F
Dtransformer_block_7/layer_normalization_14/moments/SquaredDifference?
Mtransformer_block_7/layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2O
Mtransformer_block_7/layer_normalization_14/moments/variance/reduction_indices?
;transformer_block_7/layer_normalization_14/moments/varianceMeanHtransformer_block_7/layer_normalization_14/moments/SquaredDifference:z:0Vtransformer_block_7/layer_normalization_14/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2=
;transformer_block_7/layer_normalization_14/moments/variance?
:transformer_block_7/layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52<
:transformer_block_7/layer_normalization_14/batchnorm/add/y?
8transformer_block_7/layer_normalization_14/batchnorm/addAddV2Dtransformer_block_7/layer_normalization_14/moments/variance:output:0Ctransformer_block_7/layer_normalization_14/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2:
8transformer_block_7/layer_normalization_14/batchnorm/add?
:transformer_block_7/layer_normalization_14/batchnorm/RsqrtRsqrt<transformer_block_7/layer_normalization_14/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2<
:transformer_block_7/layer_normalization_14/batchnorm/Rsqrt?
Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_7_layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp?
8transformer_block_7/layer_normalization_14/batchnorm/mulMul>transformer_block_7/layer_normalization_14/batchnorm/Rsqrt:y:0Otransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_14/batchnorm/mul?
:transformer_block_7/layer_normalization_14/batchnorm/mul_1Multransformer_block_7/add:z:0<transformer_block_7/layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_14/batchnorm/mul_1?
:transformer_block_7/layer_normalization_14/batchnorm/mul_2Mul@transformer_block_7/layer_normalization_14/moments/mean:output:0<transformer_block_7/layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_14/batchnorm/mul_2?
Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_7_layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp?
8transformer_block_7/layer_normalization_14/batchnorm/subSubKtransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp:value:0>transformer_block_7/layer_normalization_14/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_14/batchnorm/sub?
:transformer_block_7/layer_normalization_14/batchnorm/add_1AddV2>transformer_block_7/layer_normalization_14/batchnorm/mul_1:z:0<transformer_block_7/layer_normalization_14/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_14/batchnorm/add_1?
Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_7_sequential_7_dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02D
Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp?
8transformer_block_7/sequential_7/dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_7/sequential_7/dense_28/Tensordot/axes?
8transformer_block_7/sequential_7/dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_7/sequential_7/dense_28/Tensordot/free?
9transformer_block_7/sequential_7/dense_28/Tensordot/ShapeShape>transformer_block_7/layer_normalization_14/batchnorm/add_1:z:0*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_28/Tensordot/Shape?
Atransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axis?
<transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2GatherV2Btransformer_block_7/sequential_7/dense_28/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_28/Tensordot/free:output:0Jtransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2?
Ctransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axis?
>transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1GatherV2Btransformer_block_7/sequential_7/dense_28/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_28/Tensordot/axes:output:0Ltransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1?
9transformer_block_7/sequential_7/dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_7/sequential_7/dense_28/Tensordot/Const?
8transformer_block_7/sequential_7/dense_28/Tensordot/ProdProdEtransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2:output:0Btransformer_block_7/sequential_7/dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_7/sequential_7/dense_28/Tensordot/Prod?
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_1?
:transformer_block_7/sequential_7/dense_28/Tensordot/Prod_1ProdGtransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1:output:0Dtransformer_block_7/sequential_7/dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_7/sequential_7/dense_28/Tensordot/Prod_1?
?transformer_block_7/sequential_7/dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_7/sequential_7/dense_28/Tensordot/concat/axis?
:transformer_block_7/sequential_7/dense_28/Tensordot/concatConcatV2Atransformer_block_7/sequential_7/dense_28/Tensordot/free:output:0Atransformer_block_7/sequential_7/dense_28/Tensordot/axes:output:0Htransformer_block_7/sequential_7/dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_7/sequential_7/dense_28/Tensordot/concat?
9transformer_block_7/sequential_7/dense_28/Tensordot/stackPackAtransformer_block_7/sequential_7/dense_28/Tensordot/Prod:output:0Ctransformer_block_7/sequential_7/dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_28/Tensordot/stack?
=transformer_block_7/sequential_7/dense_28/Tensordot/transpose	Transpose>transformer_block_7/layer_normalization_14/batchnorm/add_1:z:0Ctransformer_block_7/sequential_7/dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2?
=transformer_block_7/sequential_7/dense_28/Tensordot/transpose?
;transformer_block_7/sequential_7/dense_28/Tensordot/ReshapeReshapeAtransformer_block_7/sequential_7/dense_28/Tensordot/transpose:y:0Btransformer_block_7/sequential_7/dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_7/sequential_7/dense_28/Tensordot/Reshape?
:transformer_block_7/sequential_7/dense_28/Tensordot/MatMulMatMulDtransformer_block_7/sequential_7/dense_28/Tensordot/Reshape:output:0Jtransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2<
:transformer_block_7/sequential_7/dense_28/Tensordot/MatMul?
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2=
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_2?
Atransformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axis?
<transformer_block_7/sequential_7/dense_28/Tensordot/concat_1ConcatV2Etransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2:output:0Dtransformer_block_7/sequential_7/dense_28/Tensordot/Const_2:output:0Jtransformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_28/Tensordot/concat_1?
3transformer_block_7/sequential_7/dense_28/TensordotReshapeDtransformer_block_7/sequential_7/dense_28/Tensordot/MatMul:product:0Etransformer_block_7/sequential_7/dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@25
3transformer_block_7/sequential_7/dense_28/Tensordot?
@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_7_sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp?
1transformer_block_7/sequential_7/dense_28/BiasAddBiasAdd<transformer_block_7/sequential_7/dense_28/Tensordot:output:0Htransformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@23
1transformer_block_7/sequential_7/dense_28/BiasAdd?
.transformer_block_7/sequential_7/dense_28/ReluRelu:transformer_block_7/sequential_7/dense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@20
.transformer_block_7/sequential_7/dense_28/Relu?
Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_7_sequential_7_dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype02D
Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp?
8transformer_block_7/sequential_7/dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_7/sequential_7/dense_29/Tensordot/axes?
8transformer_block_7/sequential_7/dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_7/sequential_7/dense_29/Tensordot/free?
9transformer_block_7/sequential_7/dense_29/Tensordot/ShapeShape<transformer_block_7/sequential_7/dense_28/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_29/Tensordot/Shape?
Atransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axis?
<transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2GatherV2Btransformer_block_7/sequential_7/dense_29/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_29/Tensordot/free:output:0Jtransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2?
Ctransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axis?
>transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1GatherV2Btransformer_block_7/sequential_7/dense_29/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_29/Tensordot/axes:output:0Ltransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1?
9transformer_block_7/sequential_7/dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_7/sequential_7/dense_29/Tensordot/Const?
8transformer_block_7/sequential_7/dense_29/Tensordot/ProdProdEtransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2:output:0Btransformer_block_7/sequential_7/dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_7/sequential_7/dense_29/Tensordot/Prod?
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_1?
:transformer_block_7/sequential_7/dense_29/Tensordot/Prod_1ProdGtransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1:output:0Dtransformer_block_7/sequential_7/dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_7/sequential_7/dense_29/Tensordot/Prod_1?
?transformer_block_7/sequential_7/dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_7/sequential_7/dense_29/Tensordot/concat/axis?
:transformer_block_7/sequential_7/dense_29/Tensordot/concatConcatV2Atransformer_block_7/sequential_7/dense_29/Tensordot/free:output:0Atransformer_block_7/sequential_7/dense_29/Tensordot/axes:output:0Htransformer_block_7/sequential_7/dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_7/sequential_7/dense_29/Tensordot/concat?
9transformer_block_7/sequential_7/dense_29/Tensordot/stackPackAtransformer_block_7/sequential_7/dense_29/Tensordot/Prod:output:0Ctransformer_block_7/sequential_7/dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_29/Tensordot/stack?
=transformer_block_7/sequential_7/dense_29/Tensordot/transpose	Transpose<transformer_block_7/sequential_7/dense_28/Relu:activations:0Ctransformer_block_7/sequential_7/dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2?
=transformer_block_7/sequential_7/dense_29/Tensordot/transpose?
;transformer_block_7/sequential_7/dense_29/Tensordot/ReshapeReshapeAtransformer_block_7/sequential_7/dense_29/Tensordot/transpose:y:0Btransformer_block_7/sequential_7/dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_7/sequential_7/dense_29/Tensordot/Reshape?
:transformer_block_7/sequential_7/dense_29/Tensordot/MatMulMatMulDtransformer_block_7/sequential_7/dense_29/Tensordot/Reshape:output:0Jtransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2<
:transformer_block_7/sequential_7/dense_29/Tensordot/MatMul?
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2=
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_2?
Atransformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axis?
<transformer_block_7/sequential_7/dense_29/Tensordot/concat_1ConcatV2Etransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2:output:0Dtransformer_block_7/sequential_7/dense_29/Tensordot/Const_2:output:0Jtransformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_29/Tensordot/concat_1?
3transformer_block_7/sequential_7/dense_29/TensordotReshapeDtransformer_block_7/sequential_7/dense_29/Tensordot/MatMul:product:0Etransformer_block_7/sequential_7/dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????25
3transformer_block_7/sequential_7/dense_29/Tensordot?
@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_7_sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp?
1transformer_block_7/sequential_7/dense_29/BiasAddBiasAdd<transformer_block_7/sequential_7/dense_29/Tensordot:output:0Htransformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????23
1transformer_block_7/sequential_7/dense_29/BiasAdd?
'transformer_block_7/dropout_29/IdentityIdentity:transformer_block_7/sequential_7/dense_29/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2)
'transformer_block_7/dropout_29/Identity?
transformer_block_7/add_1AddV2>transformer_block_7/layer_normalization_14/batchnorm/add_1:z:00transformer_block_7/dropout_29/Identity:output:0*
T0*-
_output_shapes
:???????????2
transformer_block_7/add_1?
Itransformer_block_7/layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2K
Itransformer_block_7/layer_normalization_15/moments/mean/reduction_indices?
7transformer_block_7/layer_normalization_15/moments/meanMeantransformer_block_7/add_1:z:0Rtransformer_block_7/layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(29
7transformer_block_7/layer_normalization_15/moments/mean?
?transformer_block_7/layer_normalization_15/moments/StopGradientStopGradient@transformer_block_7/layer_normalization_15/moments/mean:output:0*
T0*,
_output_shapes
:??????????2A
?transformer_block_7/layer_normalization_15/moments/StopGradient?
Dtransformer_block_7/layer_normalization_15/moments/SquaredDifferenceSquaredDifferencetransformer_block_7/add_1:z:0Htransformer_block_7/layer_normalization_15/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????2F
Dtransformer_block_7/layer_normalization_15/moments/SquaredDifference?
Mtransformer_block_7/layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2O
Mtransformer_block_7/layer_normalization_15/moments/variance/reduction_indices?
;transformer_block_7/layer_normalization_15/moments/varianceMeanHtransformer_block_7/layer_normalization_15/moments/SquaredDifference:z:0Vtransformer_block_7/layer_normalization_15/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2=
;transformer_block_7/layer_normalization_15/moments/variance?
:transformer_block_7/layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52<
:transformer_block_7/layer_normalization_15/batchnorm/add/y?
8transformer_block_7/layer_normalization_15/batchnorm/addAddV2Dtransformer_block_7/layer_normalization_15/moments/variance:output:0Ctransformer_block_7/layer_normalization_15/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2:
8transformer_block_7/layer_normalization_15/batchnorm/add?
:transformer_block_7/layer_normalization_15/batchnorm/RsqrtRsqrt<transformer_block_7/layer_normalization_15/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2<
:transformer_block_7/layer_normalization_15/batchnorm/Rsqrt?
Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_7_layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp?
8transformer_block_7/layer_normalization_15/batchnorm/mulMul>transformer_block_7/layer_normalization_15/batchnorm/Rsqrt:y:0Otransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_15/batchnorm/mul?
:transformer_block_7/layer_normalization_15/batchnorm/mul_1Multransformer_block_7/add_1:z:0<transformer_block_7/layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_15/batchnorm/mul_1?
:transformer_block_7/layer_normalization_15/batchnorm/mul_2Mul@transformer_block_7/layer_normalization_15/moments/mean:output:0<transformer_block_7/layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_15/batchnorm/mul_2?
Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_7_layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp?
8transformer_block_7/layer_normalization_15/batchnorm/subSubKtransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp:value:0>transformer_block_7/layer_normalization_15/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_15/batchnorm/sub?
:transformer_block_7/layer_normalization_15/batchnorm/add_1AddV2>transformer_block_7/layer_normalization_15/batchnorm/mul_1:z:0<transformer_block_7/layer_normalization_15/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_15/batchnorm/add_1?
1global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_6/Mean/reduction_indices?
global_average_pooling1d_6/MeanMean>transformer_block_7/layer_normalization_15/batchnorm/add_1:z:0:global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_6/Mean?
dropout_30/IdentityIdentity(global_average_pooling1d_6/Mean:output:0*
T0*(
_output_shapes
:??????????2
dropout_30/Identity?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMuldropout_30/Identity:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_30/Relu?
dropout_31/IdentityIdentitydense_30/Relu:activations:0*
T0*'
_output_shapes
:?????????2
dropout_31/Identity?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldropout_31/Identity:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAdd|
dense_31/SoftmaxSoftmaxdense_31/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_31/Softmax?
IdentityIdentitydense_31/Softmax:softmax:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp=^token_and_position_embedding_7/embedding_14/embedding_lookup=^token_and_position_embedding_7/embedding_15/embedding_lookupD^transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpH^transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpD^transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpH^transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpO^transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpY^transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_7/multi_head_attention_7/key/add/ReadVariableOpL^transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpD^transformer_block_7/multi_head_attention_7/query/add/ReadVariableOpN^transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpD^transformer_block_7/multi_head_attention_7/value/add/ReadVariableOpN^transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpA^transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOpC^transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpA^transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOpC^transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2|
<token_and_position_embedding_7/embedding_14/embedding_lookup<token_and_position_embedding_7/embedding_14/embedding_lookup2|
<token_and_position_embedding_7/embedding_15/embedding_lookup<token_and_position_embedding_7/embedding_15/embedding_lookup2?
Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpCtransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp2?
Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpGtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp2?
Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpCtransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp2?
Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpGtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp2?
Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpNtransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp2?
Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOpAtransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp2?
Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpKtransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOpCtransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp2?
Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpMtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOpCtransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp2?
Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpMtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2?
@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp2?
Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpBtransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp2?
@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp2?
Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOpBtransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_647464
x(
$embedding_15_embedding_lookup_647451(
$embedding_14_embedding_lookup_647457
identity??embedding_14/embedding_lookup?embedding_15/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:?????????2
range?
embedding_15/embedding_lookupResourceGather$embedding_15_embedding_lookup_647451range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_15/embedding_lookup/647451*(
_output_shapes
:??????????*
dtype02
embedding_15/embedding_lookup?
&embedding_15/embedding_lookup/IdentityIdentity&embedding_15/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_15/embedding_lookup/647451*(
_output_shapes
:??????????2(
&embedding_15/embedding_lookup/Identity?
(embedding_15/embedding_lookup/Identity_1Identity/embedding_15/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:??????????2*
(embedding_15/embedding_lookup/Identity_1s
embedding_14/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_14/Cast?
embedding_14/embedding_lookupResourceGather$embedding_14_embedding_lookup_647457embedding_14/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_14/embedding_lookup/647457*-
_output_shapes
:???????????*
dtype02
embedding_14/embedding_lookup?
&embedding_14/embedding_lookup/IdentityIdentity&embedding_14/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_14/embedding_lookup/647457*-
_output_shapes
:???????????2(
&embedding_14/embedding_lookup/Identity?
(embedding_14/embedding_lookup/Identity_1Identity/embedding_14/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2*
(embedding_14/embedding_lookup/Identity_1?
addAddV21embedding_14/embedding_lookup/Identity_1:output:01embedding_15/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2
add?
IdentityIdentityadd:z:0^embedding_14/embedding_lookup^embedding_15/embedding_lookup*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::2>
embedding_14/embedding_lookupembedding_14/embedding_lookup2>
embedding_15/embedding_lookupembedding_15/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
?
?
-__inference_sequential_7_layer_call_fn_646053
dense_28_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_28_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6460422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_28_input
?
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_646532

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_29_layer_call_and_return_conditional_losses_645994

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_646096

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?-
?
C__inference_model_7_layer_call_and_return_conditional_losses_646767

inputs)
%token_and_position_embedding_7_646715)
%token_and_position_embedding_7_646717
transformer_block_7_646720
transformer_block_7_646722
transformer_block_7_646724
transformer_block_7_646726
transformer_block_7_646728
transformer_block_7_646730
transformer_block_7_646732
transformer_block_7_646734
transformer_block_7_646736
transformer_block_7_646738
transformer_block_7_646740
transformer_block_7_646742
transformer_block_7_646744
transformer_block_7_646746
transformer_block_7_646748
transformer_block_7_646750
dense_30_646755
dense_30_646757
dense_31_646761
dense_31_646763
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?"dropout_30/StatefulPartitionedCall?"dropout_31/StatefulPartitionedCall?6token_and_position_embedding_7/StatefulPartitionedCall?+transformer_block_7/StatefulPartitionedCall?
6token_and_position_embedding_7/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_7_646715%token_and_position_embedding_7_646717*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_64612728
6token_and_position_embedding_7/StatefulPartitionedCall?
+transformer_block_7/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_7/StatefulPartitionedCall:output:0transformer_block_7_646720transformer_block_7_646722transformer_block_7_646724transformer_block_7_646726transformer_block_7_646728transformer_block_7_646730transformer_block_7_646732transformer_block_7_646734transformer_block_7_646736transformer_block_7_646738transformer_block_7_646740transformer_block_7_646742transformer_block_7_646744transformer_block_7_646746transformer_block_7_646748transformer_block_7_646750*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_6462912-
+transformer_block_7/StatefulPartitionedCall?
*global_average_pooling1d_6/PartitionedCallPartitionedCall4transformer_block_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_6465322,
*global_average_pooling1d_6/PartitionedCall?
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_6465512$
"dropout_30/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0dense_30_646755dense_30_646757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6465802"
 dense_30/StatefulPartitionedCall?
"dropout_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0#^dropout_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_6466082$
"dropout_31/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_31/StatefulPartitionedCall:output:0dense_31_646761dense_31_646763*
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
GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6466372"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall#^dropout_31/StatefulPartitionedCall7^token_and_position_embedding_7/StatefulPartitionedCall,^transformer_block_7/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall2H
"dropout_31/StatefulPartitionedCall"dropout_31/StatefulPartitionedCall2p
6token_and_position_embedding_7/StatefulPartitionedCall6token_and_position_embedding_7/StatefulPartitionedCall2Z
+transformer_block_7/StatefulPartitionedCall+transformer_block_7/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_646291

inputsF
Bmulti_head_attention_7_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_query_add_readvariableop_resourceD
@multi_head_attention_7_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_7_key_add_readvariableop_resourceF
Bmulti_head_attention_7_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_value_add_readvariableop_resourceQ
Mmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_7_attention_output_add_readvariableop_resource@
<layer_normalization_14_batchnorm_mul_readvariableop_resource<
8layer_normalization_14_batchnorm_readvariableop_resource;
7sequential_7_dense_28_tensordot_readvariableop_resource9
5sequential_7_dense_28_biasadd_readvariableop_resource;
7sequential_7_dense_29_tensordot_readvariableop_resource9
5sequential_7_dense_29_biasadd_readvariableop_resource@
<layer_normalization_15_batchnorm_mul_readvariableop_resource<
8layer_normalization_15_batchnorm_readvariableop_resource
identity??/layer_normalization_14/batchnorm/ReadVariableOp?3layer_normalization_14/batchnorm/mul/ReadVariableOp?/layer_normalization_15/batchnorm/ReadVariableOp?3layer_normalization_15/batchnorm/mul/ReadVariableOp?:multi_head_attention_7/attention_output/add/ReadVariableOp?Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_7/key/add/ReadVariableOp?7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/query/add/ReadVariableOp?9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/value/add/ReadVariableOp?9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?,sequential_7/dense_28/BiasAdd/ReadVariableOp?.sequential_7/dense_28/Tensordot/ReadVariableOp?,sequential_7/dense_29/BiasAdd/ReadVariableOp?.sequential_7/dense_29/Tensordot/ReadVariableOp?
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/query/einsum/EinsumEinsuminputsAmulti_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/query/einsum/Einsum?
/multi_head_attention_7/query/add/ReadVariableOpReadVariableOp8multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/query/add/ReadVariableOp?
 multi_head_attention_7/query/addAddV23multi_head_attention_7/query/einsum/Einsum:output:07multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/query/add?
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_7_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype029
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_7/key/einsum/EinsumEinsuminputs?multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2*
(multi_head_attention_7/key/einsum/Einsum?
-multi_head_attention_7/key/add/ReadVariableOpReadVariableOp6multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-multi_head_attention_7/key/add/ReadVariableOp?
multi_head_attention_7/key/addAddV21multi_head_attention_7/key/einsum/Einsum:output:05multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2 
multi_head_attention_7/key/add?
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/value/einsum/EinsumEinsuminputsAmulti_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/value/einsum/Einsum?
/multi_head_attention_7/value/add/ReadVariableOpReadVariableOp8multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/value/add/ReadVariableOp?
 multi_head_attention_7/value/addAddV23multi_head_attention_7/value/einsum/Einsum:output:07multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/value/add?
multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??=2
multi_head_attention_7/Mul/y?
multi_head_attention_7/MulMul$multi_head_attention_7/query/add:z:0%multi_head_attention_7/Mul/y:output:0*
T0*1
_output_shapes
:???????????2
multi_head_attention_7/Mul?
$multi_head_attention_7/einsum/EinsumEinsum"multi_head_attention_7/key/add:z:0multi_head_attention_7/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_7/einsum/Einsum?
&multi_head_attention_7/softmax/SoftmaxSoftmax-multi_head_attention_7/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_7/softmax/Softmax?
,multi_head_attention_7/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,multi_head_attention_7/dropout/dropout/Const?
*multi_head_attention_7/dropout/dropout/MulMul0multi_head_attention_7/softmax/Softmax:softmax:05multi_head_attention_7/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:???????????2,
*multi_head_attention_7/dropout/dropout/Mul?
,multi_head_attention_7/dropout/dropout/ShapeShape0multi_head_attention_7/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_7/dropout/dropout/Shape?
Cmulti_head_attention_7/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_7/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:???????????*
dtype02E
Cmulti_head_attention_7/dropout/dropout/random_uniform/RandomUniform?
5multi_head_attention_7/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_7/dropout/dropout/GreaterEqual/y?
3multi_head_attention_7/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_7/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_7/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:???????????25
3multi_head_attention_7/dropout/dropout/GreaterEqual?
+multi_head_attention_7/dropout/dropout/CastCast7multi_head_attention_7/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:???????????2-
+multi_head_attention_7/dropout/dropout/Cast?
,multi_head_attention_7/dropout/dropout/Mul_1Mul.multi_head_attention_7/dropout/dropout/Mul:z:0/multi_head_attention_7/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:???????????2.
,multi_head_attention_7/dropout/dropout/Mul_1?
&multi_head_attention_7/einsum_1/EinsumEinsum0multi_head_attention_7/dropout/dropout/Mul_1:z:0$multi_head_attention_7/value/add:z:0*
N*
T0*1
_output_shapes
:???????????*
equationacbe,aecd->abcd2(
&multi_head_attention_7/einsum_1/Einsum?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02F
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_7/attention_output/einsum/EinsumEinsum/multi_head_attention_7/einsum_1/Einsum:output:0Lmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:???????????*
equationabcd,cde->abe27
5multi_head_attention_7/attention_output/einsum/Einsum?
:multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:multi_head_attention_7/attention_output/add/ReadVariableOp?
+multi_head_attention_7/attention_output/addAddV2>multi_head_attention_7/attention_output/einsum/Einsum:output:0Bmulti_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2-
+multi_head_attention_7/attention_output/addy
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_28/dropout/Const?
dropout_28/dropout/MulMul/multi_head_attention_7/attention_output/add:z:0!dropout_28/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2
dropout_28/dropout/Mul?
dropout_28/dropout/ShapeShape/multi_head_attention_7/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_28/dropout/Shape?
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype021
/dropout_28/dropout/random_uniform/RandomUniform?
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_28/dropout/GreaterEqual/y?
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????2!
dropout_28/dropout/GreaterEqual?
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2
dropout_28/dropout/Cast?
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2
dropout_28/dropout/Mul_1q
addAddV2inputsdropout_28/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????2
add?
5layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_14/moments/mean/reduction_indices?
#layer_normalization_14/moments/meanMeanadd:z:0>layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_14/moments/mean?
+layer_normalization_14/moments/StopGradientStopGradient,layer_normalization_14/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_14/moments/StopGradient?
0layer_normalization_14/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_14/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_14/moments/SquaredDifference?
9layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_14/moments/variance/reduction_indices?
'layer_normalization_14/moments/varianceMean4layer_normalization_14/moments/SquaredDifference:z:0Blayer_normalization_14/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_14/moments/variance?
&layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_14/batchnorm/add/y?
$layer_normalization_14/batchnorm/addAddV20layer_normalization_14/moments/variance:output:0/layer_normalization_14/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_14/batchnorm/add?
&layer_normalization_14/batchnorm/RsqrtRsqrt(layer_normalization_14/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_14/batchnorm/Rsqrt?
3layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_14/batchnorm/mul/ReadVariableOp?
$layer_normalization_14/batchnorm/mulMul*layer_normalization_14/batchnorm/Rsqrt:y:0;layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/mul?
&layer_normalization_14/batchnorm/mul_1Muladd:z:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_1?
&layer_normalization_14/batchnorm/mul_2Mul,layer_normalization_14/moments/mean:output:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_2?
/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_14/batchnorm/ReadVariableOp?
$layer_normalization_14/batchnorm/subSub7layer_normalization_14/batchnorm/ReadVariableOp:value:0*layer_normalization_14/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/sub?
&layer_normalization_14/batchnorm/add_1AddV2*layer_normalization_14/batchnorm/mul_1:z:0(layer_normalization_14/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/add_1?
.sequential_7/dense_28/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_7/dense_28/Tensordot/ReadVariableOp?
$sequential_7/dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_28/Tensordot/axes?
$sequential_7/dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_28/Tensordot/free?
%sequential_7/dense_28/Tensordot/ShapeShape*layer_normalization_14/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/Shape?
-sequential_7/dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/GatherV2/axis?
(sequential_7/dense_28/Tensordot/GatherV2GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/free:output:06sequential_7/dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/GatherV2?
/sequential_7/dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_28/Tensordot/GatherV2_1/axis?
*sequential_7/dense_28/Tensordot/GatherV2_1GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/axes:output:08sequential_7/dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_28/Tensordot/GatherV2_1?
%sequential_7/dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_28/Tensordot/Const?
$sequential_7/dense_28/Tensordot/ProdProd1sequential_7/dense_28/Tensordot/GatherV2:output:0.sequential_7/dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_28/Tensordot/Prod?
'sequential_7/dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_28/Tensordot/Const_1?
&sequential_7/dense_28/Tensordot/Prod_1Prod3sequential_7/dense_28/Tensordot/GatherV2_1:output:00sequential_7/dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_28/Tensordot/Prod_1?
+sequential_7/dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_28/Tensordot/concat/axis?
&sequential_7/dense_28/Tensordot/concatConcatV2-sequential_7/dense_28/Tensordot/free:output:0-sequential_7/dense_28/Tensordot/axes:output:04sequential_7/dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_28/Tensordot/concat?
%sequential_7/dense_28/Tensordot/stackPack-sequential_7/dense_28/Tensordot/Prod:output:0/sequential_7/dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/stack?
)sequential_7/dense_28/Tensordot/transpose	Transpose*layer_normalization_14/batchnorm/add_1:z:0/sequential_7/dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2+
)sequential_7/dense_28/Tensordot/transpose?
'sequential_7/dense_28/Tensordot/ReshapeReshape-sequential_7/dense_28/Tensordot/transpose:y:0.sequential_7/dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_28/Tensordot/Reshape?
&sequential_7/dense_28/Tensordot/MatMulMatMul0sequential_7/dense_28/Tensordot/Reshape:output:06sequential_7/dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_7/dense_28/Tensordot/MatMul?
'sequential_7/dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_7/dense_28/Tensordot/Const_2?
-sequential_7/dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/concat_1/axis?
(sequential_7/dense_28/Tensordot/concat_1ConcatV21sequential_7/dense_28/Tensordot/GatherV2:output:00sequential_7/dense_28/Tensordot/Const_2:output:06sequential_7/dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/concat_1?
sequential_7/dense_28/TensordotReshape0sequential_7/dense_28/Tensordot/MatMul:product:01sequential_7/dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2!
sequential_7/dense_28/Tensordot?
,sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_7/dense_28/BiasAdd/ReadVariableOp?
sequential_7/dense_28/BiasAddBiasAdd(sequential_7/dense_28/Tensordot:output:04sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/BiasAdd?
sequential_7/dense_28/ReluRelu&sequential_7/dense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/Relu?
.sequential_7/dense_29/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype020
.sequential_7/dense_29/Tensordot/ReadVariableOp?
$sequential_7/dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_29/Tensordot/axes?
$sequential_7/dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_29/Tensordot/free?
%sequential_7/dense_29/Tensordot/ShapeShape(sequential_7/dense_28/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/Shape?
-sequential_7/dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/GatherV2/axis?
(sequential_7/dense_29/Tensordot/GatherV2GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/free:output:06sequential_7/dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/GatherV2?
/sequential_7/dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_29/Tensordot/GatherV2_1/axis?
*sequential_7/dense_29/Tensordot/GatherV2_1GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/axes:output:08sequential_7/dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_29/Tensordot/GatherV2_1?
%sequential_7/dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_29/Tensordot/Const?
$sequential_7/dense_29/Tensordot/ProdProd1sequential_7/dense_29/Tensordot/GatherV2:output:0.sequential_7/dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_29/Tensordot/Prod?
'sequential_7/dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_29/Tensordot/Const_1?
&sequential_7/dense_29/Tensordot/Prod_1Prod3sequential_7/dense_29/Tensordot/GatherV2_1:output:00sequential_7/dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_29/Tensordot/Prod_1?
+sequential_7/dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_29/Tensordot/concat/axis?
&sequential_7/dense_29/Tensordot/concatConcatV2-sequential_7/dense_29/Tensordot/free:output:0-sequential_7/dense_29/Tensordot/axes:output:04sequential_7/dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_29/Tensordot/concat?
%sequential_7/dense_29/Tensordot/stackPack-sequential_7/dense_29/Tensordot/Prod:output:0/sequential_7/dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/stack?
)sequential_7/dense_29/Tensordot/transpose	Transpose(sequential_7/dense_28/Relu:activations:0/sequential_7/dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2+
)sequential_7/dense_29/Tensordot/transpose?
'sequential_7/dense_29/Tensordot/ReshapeReshape-sequential_7/dense_29/Tensordot/transpose:y:0.sequential_7/dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_29/Tensordot/Reshape?
&sequential_7/dense_29/Tensordot/MatMulMatMul0sequential_7/dense_29/Tensordot/Reshape:output:06sequential_7/dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_7/dense_29/Tensordot/MatMul?
'sequential_7/dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2)
'sequential_7/dense_29/Tensordot/Const_2?
-sequential_7/dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/concat_1/axis?
(sequential_7/dense_29/Tensordot/concat_1ConcatV21sequential_7/dense_29/Tensordot/GatherV2:output:00sequential_7/dense_29/Tensordot/Const_2:output:06sequential_7/dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/concat_1?
sequential_7/dense_29/TensordotReshape0sequential_7/dense_29/Tensordot/MatMul:product:01sequential_7/dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2!
sequential_7/dense_29/Tensordot?
,sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_29/BiasAdd/ReadVariableOp?
sequential_7/dense_29/BiasAddBiasAdd(sequential_7/dense_29/Tensordot:output:04sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
sequential_7/dense_29/BiasAddy
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_29/dropout/Const?
dropout_29/dropout/MulMul&sequential_7/dense_29/BiasAdd:output:0!dropout_29/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2
dropout_29/dropout/Mul?
dropout_29/dropout/ShapeShape&sequential_7/dense_29/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_29/dropout/Shape?
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype021
/dropout_29/dropout/random_uniform/RandomUniform?
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_29/dropout/GreaterEqual/y?
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????2!
dropout_29/dropout/GreaterEqual?
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2
dropout_29/dropout/Cast?
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2
dropout_29/dropout/Mul_1?
add_1AddV2*layer_normalization_14/batchnorm/add_1:z:0dropout_29/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????2
add_1?
5layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_15/moments/mean/reduction_indices?
#layer_normalization_15/moments/meanMean	add_1:z:0>layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_15/moments/mean?
+layer_normalization_15/moments/StopGradientStopGradient,layer_normalization_15/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_15/moments/StopGradient?
0layer_normalization_15/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_15/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_15/moments/SquaredDifference?
9layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_15/moments/variance/reduction_indices?
'layer_normalization_15/moments/varianceMean4layer_normalization_15/moments/SquaredDifference:z:0Blayer_normalization_15/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_15/moments/variance?
&layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_15/batchnorm/add/y?
$layer_normalization_15/batchnorm/addAddV20layer_normalization_15/moments/variance:output:0/layer_normalization_15/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_15/batchnorm/add?
&layer_normalization_15/batchnorm/RsqrtRsqrt(layer_normalization_15/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_15/batchnorm/Rsqrt?
3layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_15/batchnorm/mul/ReadVariableOp?
$layer_normalization_15/batchnorm/mulMul*layer_normalization_15/batchnorm/Rsqrt:y:0;layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/mul?
&layer_normalization_15/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_1?
&layer_normalization_15/batchnorm/mul_2Mul,layer_normalization_15/moments/mean:output:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_2?
/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_15/batchnorm/ReadVariableOp?
$layer_normalization_15/batchnorm/subSub7layer_normalization_15/batchnorm/ReadVariableOp:value:0*layer_normalization_15/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/sub?
&layer_normalization_15/batchnorm/add_1AddV2*layer_normalization_15/batchnorm/mul_1:z:0(layer_normalization_15/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/add_1?
IdentityIdentity*layer_normalization_15/batchnorm/add_1:z:00^layer_normalization_14/batchnorm/ReadVariableOp4^layer_normalization_14/batchnorm/mul/ReadVariableOp0^layer_normalization_15/batchnorm/ReadVariableOp4^layer_normalization_15/batchnorm/mul/ReadVariableOp;^multi_head_attention_7/attention_output/add/ReadVariableOpE^multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_7/key/add/ReadVariableOp8^multi_head_attention_7/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/query/add/ReadVariableOp:^multi_head_attention_7/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/value/add/ReadVariableOp:^multi_head_attention_7/value/einsum/Einsum/ReadVariableOp-^sequential_7/dense_28/BiasAdd/ReadVariableOp/^sequential_7/dense_28/Tensordot/ReadVariableOp-^sequential_7/dense_29/BiasAdd/ReadVariableOp/^sequential_7/dense_29/Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*l
_input_shapes[
Y:???????????::::::::::::::::2b
/layer_normalization_14/batchnorm/ReadVariableOp/layer_normalization_14/batchnorm/ReadVariableOp2j
3layer_normalization_14/batchnorm/mul/ReadVariableOp3layer_normalization_14/batchnorm/mul/ReadVariableOp2b
/layer_normalization_15/batchnorm/ReadVariableOp/layer_normalization_15/batchnorm/ReadVariableOp2j
3layer_normalization_15/batchnorm/mul/ReadVariableOp3layer_normalization_15/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_7/attention_output/add/ReadVariableOp:multi_head_attention_7/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_7/key/add/ReadVariableOp-multi_head_attention_7/key/add/ReadVariableOp2r
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/query/add/ReadVariableOp/multi_head_attention_7/query/add/ReadVariableOp2v
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/value/add/ReadVariableOp/multi_head_attention_7/value/add/ReadVariableOp2v
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2\
,sequential_7/dense_28/BiasAdd/ReadVariableOp,sequential_7/dense_28/BiasAdd/ReadVariableOp2`
.sequential_7/dense_28/Tensordot/ReadVariableOp.sequential_7/dense_28/Tensordot/ReadVariableOp2\
,sequential_7/dense_29/BiasAdd/ReadVariableOp,sequential_7/dense_29/BiasAdd/ReadVariableOp2`
.sequential_7/dense_29/Tensordot/ReadVariableOp.sequential_7/dense_29/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?J
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_648052

inputs.
*dense_28_tensordot_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource.
*dense_29_tensordot_readvariableop_resource,
(dense_29_biasadd_readvariableop_resource
identity??dense_28/BiasAdd/ReadVariableOp?!dense_28/Tensordot/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?!dense_29/Tensordot/ReadVariableOp?
!dense_28/Tensordot/ReadVariableOpReadVariableOp*dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!dense_28/Tensordot/ReadVariableOp|
dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_28/Tensordot/axes?
dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_28/Tensordot/freej
dense_28/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_28/Tensordot/Shape?
 dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_28/Tensordot/GatherV2/axis?
dense_28/Tensordot/GatherV2GatherV2!dense_28/Tensordot/Shape:output:0 dense_28/Tensordot/free:output:0)dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_28/Tensordot/GatherV2?
"dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_28/Tensordot/GatherV2_1/axis?
dense_28/Tensordot/GatherV2_1GatherV2!dense_28/Tensordot/Shape:output:0 dense_28/Tensordot/axes:output:0+dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_28/Tensordot/GatherV2_1~
dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_28/Tensordot/Const?
dense_28/Tensordot/ProdProd$dense_28/Tensordot/GatherV2:output:0!dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_28/Tensordot/Prod?
dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_28/Tensordot/Const_1?
dense_28/Tensordot/Prod_1Prod&dense_28/Tensordot/GatherV2_1:output:0#dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_28/Tensordot/Prod_1?
dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_28/Tensordot/concat/axis?
dense_28/Tensordot/concatConcatV2 dense_28/Tensordot/free:output:0 dense_28/Tensordot/axes:output:0'dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_28/Tensordot/concat?
dense_28/Tensordot/stackPack dense_28/Tensordot/Prod:output:0"dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_28/Tensordot/stack?
dense_28/Tensordot/transpose	Transposeinputs"dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_28/Tensordot/transpose?
dense_28/Tensordot/ReshapeReshape dense_28/Tensordot/transpose:y:0!dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_28/Tensordot/Reshape?
dense_28/Tensordot/MatMulMatMul#dense_28/Tensordot/Reshape:output:0)dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_28/Tensordot/MatMul?
dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_28/Tensordot/Const_2?
 dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_28/Tensordot/concat_1/axis?
dense_28/Tensordot/concat_1ConcatV2$dense_28/Tensordot/GatherV2:output:0#dense_28/Tensordot/Const_2:output:0)dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_28/Tensordot/concat_1?
dense_28/TensordotReshape#dense_28/Tensordot/MatMul:product:0$dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2
dense_28/Tensordot?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/Tensordot:output:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
dense_28/BiasAddx
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
dense_28/Relu?
!dense_29/Tensordot/ReadVariableOpReadVariableOp*dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype02#
!dense_29/Tensordot/ReadVariableOp|
dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_29/Tensordot/axes?
dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_29/Tensordot/free
dense_29/Tensordot/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
:2
dense_29/Tensordot/Shape?
 dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_29/Tensordot/GatherV2/axis?
dense_29/Tensordot/GatherV2GatherV2!dense_29/Tensordot/Shape:output:0 dense_29/Tensordot/free:output:0)dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_29/Tensordot/GatherV2?
"dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_29/Tensordot/GatherV2_1/axis?
dense_29/Tensordot/GatherV2_1GatherV2!dense_29/Tensordot/Shape:output:0 dense_29/Tensordot/axes:output:0+dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_29/Tensordot/GatherV2_1~
dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_29/Tensordot/Const?
dense_29/Tensordot/ProdProd$dense_29/Tensordot/GatherV2:output:0!dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_29/Tensordot/Prod?
dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_29/Tensordot/Const_1?
dense_29/Tensordot/Prod_1Prod&dense_29/Tensordot/GatherV2_1:output:0#dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_29/Tensordot/Prod_1?
dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_29/Tensordot/concat/axis?
dense_29/Tensordot/concatConcatV2 dense_29/Tensordot/free:output:0 dense_29/Tensordot/axes:output:0'dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_29/Tensordot/concat?
dense_29/Tensordot/stackPack dense_29/Tensordot/Prod:output:0"dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_29/Tensordot/stack?
dense_29/Tensordot/transpose	Transposedense_28/Relu:activations:0"dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2
dense_29/Tensordot/transpose?
dense_29/Tensordot/ReshapeReshape dense_29/Tensordot/transpose:y:0!dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_29/Tensordot/Reshape?
dense_29/Tensordot/MatMulMatMul#dense_29/Tensordot/Reshape:output:0)dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_29/Tensordot/MatMul?
dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_29/Tensordot/Const_2?
 dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_29/Tensordot/concat_1/axis?
dense_29/Tensordot/concat_1ConcatV2$dense_29/Tensordot/GatherV2:output:0#dense_29/Tensordot/Const_2:output:0)dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_29/Tensordot/concat_1?
dense_29/TensordotReshape#dense_29/Tensordot/MatMul:product:0$dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_29/Tensordot?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/Tensordot:output:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_29/BiasAdd?
IdentityIdentitydense_29/BiasAdd:output:0 ^dense_28/BiasAdd/ReadVariableOp"^dense_28/Tensordot/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp"^dense_29/Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2F
!dense_28/Tensordot/ReadVariableOp!dense_28/Tensordot/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2F
!dense_29/Tensordot/ReadVariableOp!dense_29/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_31_layer_call_and_return_conditional_losses_647908

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_645913
input_8O
Kmodel_7_token_and_position_embedding_7_embedding_15_embedding_lookup_645759O
Kmodel_7_token_and_position_embedding_7_embedding_14_embedding_lookup_645765b
^model_7_transformer_block_7_multi_head_attention_7_query_einsum_einsum_readvariableop_resourceX
Tmodel_7_transformer_block_7_multi_head_attention_7_query_add_readvariableop_resource`
\model_7_transformer_block_7_multi_head_attention_7_key_einsum_einsum_readvariableop_resourceV
Rmodel_7_transformer_block_7_multi_head_attention_7_key_add_readvariableop_resourceb
^model_7_transformer_block_7_multi_head_attention_7_value_einsum_einsum_readvariableop_resourceX
Tmodel_7_transformer_block_7_multi_head_attention_7_value_add_readvariableop_resourcem
imodel_7_transformer_block_7_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resourcec
_model_7_transformer_block_7_multi_head_attention_7_attention_output_add_readvariableop_resource\
Xmodel_7_transformer_block_7_layer_normalization_14_batchnorm_mul_readvariableop_resourceX
Tmodel_7_transformer_block_7_layer_normalization_14_batchnorm_readvariableop_resourceW
Smodel_7_transformer_block_7_sequential_7_dense_28_tensordot_readvariableop_resourceU
Qmodel_7_transformer_block_7_sequential_7_dense_28_biasadd_readvariableop_resourceW
Smodel_7_transformer_block_7_sequential_7_dense_29_tensordot_readvariableop_resourceU
Qmodel_7_transformer_block_7_sequential_7_dense_29_biasadd_readvariableop_resource\
Xmodel_7_transformer_block_7_layer_normalization_15_batchnorm_mul_readvariableop_resourceX
Tmodel_7_transformer_block_7_layer_normalization_15_batchnorm_readvariableop_resource3
/model_7_dense_30_matmul_readvariableop_resource4
0model_7_dense_30_biasadd_readvariableop_resource3
/model_7_dense_31_matmul_readvariableop_resource4
0model_7_dense_31_biasadd_readvariableop_resource
identity??'model_7/dense_30/BiasAdd/ReadVariableOp?&model_7/dense_30/MatMul/ReadVariableOp?'model_7/dense_31/BiasAdd/ReadVariableOp?&model_7/dense_31/MatMul/ReadVariableOp?Dmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup?Dmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup?Kmodel_7/transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp?Omodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp?Kmodel_7/transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp?Omodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp?Vmodel_7/transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp?`model_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?Imodel_7/transformer_block_7/multi_head_attention_7/key/add/ReadVariableOp?Smodel_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?Kmodel_7/transformer_block_7/multi_head_attention_7/query/add/ReadVariableOp?Umodel_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?Kmodel_7/transformer_block_7/multi_head_attention_7/value/add/ReadVariableOp?Umodel_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?Hmodel_7/transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp?Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp?Hmodel_7/transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp?Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp?
,model_7/token_and_position_embedding_7/ShapeShapeinput_8*
T0*
_output_shapes
:2.
,model_7/token_and_position_embedding_7/Shape?
:model_7/token_and_position_embedding_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2<
:model_7/token_and_position_embedding_7/strided_slice/stack?
<model_7/token_and_position_embedding_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<model_7/token_and_position_embedding_7/strided_slice/stack_1?
<model_7/token_and_position_embedding_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_7/token_and_position_embedding_7/strided_slice/stack_2?
4model_7/token_and_position_embedding_7/strided_sliceStridedSlice5model_7/token_and_position_embedding_7/Shape:output:0Cmodel_7/token_and_position_embedding_7/strided_slice/stack:output:0Emodel_7/token_and_position_embedding_7/strided_slice/stack_1:output:0Emodel_7/token_and_position_embedding_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4model_7/token_and_position_embedding_7/strided_slice?
2model_7/token_and_position_embedding_7/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_7/token_and_position_embedding_7/range/start?
2model_7/token_and_position_embedding_7/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2model_7/token_and_position_embedding_7/range/delta?
,model_7/token_and_position_embedding_7/rangeRange;model_7/token_and_position_embedding_7/range/start:output:0=model_7/token_and_position_embedding_7/strided_slice:output:0;model_7/token_and_position_embedding_7/range/delta:output:0*#
_output_shapes
:?????????2.
,model_7/token_and_position_embedding_7/range?
Dmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookupResourceGatherKmodel_7_token_and_position_embedding_7_embedding_15_embedding_lookup_6457595model_7/token_and_position_embedding_7/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*^
_classT
RPloc:@model_7/token_and_position_embedding_7/embedding_15/embedding_lookup/645759*(
_output_shapes
:??????????*
dtype02F
Dmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup?
Mmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup/IdentityIdentityMmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*^
_classT
RPloc:@model_7/token_and_position_embedding_7/embedding_15/embedding_lookup/645759*(
_output_shapes
:??????????2O
Mmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup/Identity?
Omodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1IdentityVmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:??????????2Q
Omodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1?
8model_7/token_and_position_embedding_7/embedding_14/CastCastinput_8*

DstT0*

SrcT0*(
_output_shapes
:??????????2:
8model_7/token_and_position_embedding_7/embedding_14/Cast?
Dmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookupResourceGatherKmodel_7_token_and_position_embedding_7_embedding_14_embedding_lookup_645765<model_7/token_and_position_embedding_7/embedding_14/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*^
_classT
RPloc:@model_7/token_and_position_embedding_7/embedding_14/embedding_lookup/645765*-
_output_shapes
:???????????*
dtype02F
Dmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup?
Mmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup/IdentityIdentityMmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*^
_classT
RPloc:@model_7/token_and_position_embedding_7/embedding_14/embedding_lookup/645765*-
_output_shapes
:???????????2O
Mmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup/Identity?
Omodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1IdentityVmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2Q
Omodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1?
*model_7/token_and_position_embedding_7/addAddV2Xmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1:output:0Xmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2,
*model_7/token_and_position_embedding_7/add?
Umodel_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOp^model_7_transformer_block_7_multi_head_attention_7_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02W
Umodel_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?
Fmodel_7/transformer_block_7/multi_head_attention_7/query/einsum/EinsumEinsum.model_7/token_and_position_embedding_7/add:z:0]model_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2H
Fmodel_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum?
Kmodel_7/transformer_block_7/multi_head_attention_7/query/add/ReadVariableOpReadVariableOpTmodel_7_transformer_block_7_multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype02M
Kmodel_7/transformer_block_7/multi_head_attention_7/query/add/ReadVariableOp?
<model_7/transformer_block_7/multi_head_attention_7/query/addAddV2Omodel_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum:output:0Smodel_7/transformer_block_7/multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2>
<model_7/transformer_block_7/multi_head_attention_7/query/add?
Smodel_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOp\model_7_transformer_block_7_multi_head_attention_7_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02U
Smodel_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?
Dmodel_7/transformer_block_7/multi_head_attention_7/key/einsum/EinsumEinsum.model_7/token_and_position_embedding_7/add:z:0[model_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2F
Dmodel_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum?
Imodel_7/transformer_block_7/multi_head_attention_7/key/add/ReadVariableOpReadVariableOpRmodel_7_transformer_block_7_multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype02K
Imodel_7/transformer_block_7/multi_head_attention_7/key/add/ReadVariableOp?
:model_7/transformer_block_7/multi_head_attention_7/key/addAddV2Mmodel_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum:output:0Qmodel_7/transformer_block_7/multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2<
:model_7/transformer_block_7/multi_head_attention_7/key/add?
Umodel_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOp^model_7_transformer_block_7_multi_head_attention_7_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02W
Umodel_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?
Fmodel_7/transformer_block_7/multi_head_attention_7/value/einsum/EinsumEinsum.model_7/token_and_position_embedding_7/add:z:0]model_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2H
Fmodel_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum?
Kmodel_7/transformer_block_7/multi_head_attention_7/value/add/ReadVariableOpReadVariableOpTmodel_7_transformer_block_7_multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype02M
Kmodel_7/transformer_block_7/multi_head_attention_7/value/add/ReadVariableOp?
<model_7/transformer_block_7/multi_head_attention_7/value/addAddV2Omodel_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum:output:0Smodel_7/transformer_block_7/multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2>
<model_7/transformer_block_7/multi_head_attention_7/value/add?
8model_7/transformer_block_7/multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??=2:
8model_7/transformer_block_7/multi_head_attention_7/Mul/y?
6model_7/transformer_block_7/multi_head_attention_7/MulMul@model_7/transformer_block_7/multi_head_attention_7/query/add:z:0Amodel_7/transformer_block_7/multi_head_attention_7/Mul/y:output:0*
T0*1
_output_shapes
:???????????28
6model_7/transformer_block_7/multi_head_attention_7/Mul?
@model_7/transformer_block_7/multi_head_attention_7/einsum/EinsumEinsum>model_7/transformer_block_7/multi_head_attention_7/key/add:z:0:model_7/transformer_block_7/multi_head_attention_7/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2B
@model_7/transformer_block_7/multi_head_attention_7/einsum/Einsum?
Bmodel_7/transformer_block_7/multi_head_attention_7/softmax/SoftmaxSoftmaxImodel_7/transformer_block_7/multi_head_attention_7/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2D
Bmodel_7/transformer_block_7/multi_head_attention_7/softmax/Softmax?
Cmodel_7/transformer_block_7/multi_head_attention_7/dropout/IdentityIdentityLmodel_7/transformer_block_7/multi_head_attention_7/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2E
Cmodel_7/transformer_block_7/multi_head_attention_7/dropout/Identity?
Bmodel_7/transformer_block_7/multi_head_attention_7/einsum_1/EinsumEinsumLmodel_7/transformer_block_7/multi_head_attention_7/dropout/Identity:output:0@model_7/transformer_block_7/multi_head_attention_7/value/add:z:0*
N*
T0*1
_output_shapes
:???????????*
equationacbe,aecd->abcd2D
Bmodel_7/transformer_block_7/multi_head_attention_7/einsum_1/Einsum?
`model_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpimodel_7_transformer_block_7_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02b
`model_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?
Qmodel_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/EinsumEinsumKmodel_7/transformer_block_7/multi_head_attention_7/einsum_1/Einsum:output:0hmodel_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:???????????*
equationabcd,cde->abe2S
Qmodel_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum?
Vmodel_7/transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOp_model_7_transformer_block_7_multi_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype02X
Vmodel_7/transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp?
Gmodel_7/transformer_block_7/multi_head_attention_7/attention_output/addAddV2Zmodel_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum:output:0^model_7/transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2I
Gmodel_7/transformer_block_7/multi_head_attention_7/attention_output/add?
/model_7/transformer_block_7/dropout_28/IdentityIdentityKmodel_7/transformer_block_7/multi_head_attention_7/attention_output/add:z:0*
T0*-
_output_shapes
:???????????21
/model_7/transformer_block_7/dropout_28/Identity?
model_7/transformer_block_7/addAddV2.model_7/token_and_position_embedding_7/add:z:08model_7/transformer_block_7/dropout_28/Identity:output:0*
T0*-
_output_shapes
:???????????2!
model_7/transformer_block_7/add?
Qmodel_7/transformer_block_7/layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2S
Qmodel_7/transformer_block_7/layer_normalization_14/moments/mean/reduction_indices?
?model_7/transformer_block_7/layer_normalization_14/moments/meanMean#model_7/transformer_block_7/add:z:0Zmodel_7/transformer_block_7/layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2A
?model_7/transformer_block_7/layer_normalization_14/moments/mean?
Gmodel_7/transformer_block_7/layer_normalization_14/moments/StopGradientStopGradientHmodel_7/transformer_block_7/layer_normalization_14/moments/mean:output:0*
T0*,
_output_shapes
:??????????2I
Gmodel_7/transformer_block_7/layer_normalization_14/moments/StopGradient?
Lmodel_7/transformer_block_7/layer_normalization_14/moments/SquaredDifferenceSquaredDifference#model_7/transformer_block_7/add:z:0Pmodel_7/transformer_block_7/layer_normalization_14/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????2N
Lmodel_7/transformer_block_7/layer_normalization_14/moments/SquaredDifference?
Umodel_7/transformer_block_7/layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2W
Umodel_7/transformer_block_7/layer_normalization_14/moments/variance/reduction_indices?
Cmodel_7/transformer_block_7/layer_normalization_14/moments/varianceMeanPmodel_7/transformer_block_7/layer_normalization_14/moments/SquaredDifference:z:0^model_7/transformer_block_7/layer_normalization_14/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2E
Cmodel_7/transformer_block_7/layer_normalization_14/moments/variance?
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52D
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add/y?
@model_7/transformer_block_7/layer_normalization_14/batchnorm/addAddV2Lmodel_7/transformer_block_7/layer_normalization_14/moments/variance:output:0Kmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2B
@model_7/transformer_block_7/layer_normalization_14/batchnorm/add?
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/RsqrtRsqrtDmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2D
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/Rsqrt?
Omodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpXmodel_7_transformer_block_7_layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Omodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp?
@model_7/transformer_block_7/layer_normalization_14/batchnorm/mulMulFmodel_7/transformer_block_7/layer_normalization_14/batchnorm/Rsqrt:y:0Wmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2B
@model_7/transformer_block_7/layer_normalization_14/batchnorm/mul?
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul_1Mul#model_7/transformer_block_7/add:z:0Dmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2D
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul_1?
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul_2MulHmodel_7/transformer_block_7/layer_normalization_14/moments/mean:output:0Dmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2D
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul_2?
Kmodel_7/transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOpTmodel_7_transformer_block_7_layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Kmodel_7/transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp?
@model_7/transformer_block_7/layer_normalization_14/batchnorm/subSubSmodel_7/transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp:value:0Fmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2B
@model_7/transformer_block_7/layer_normalization_14/batchnorm/sub?
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add_1AddV2Fmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul_1:z:0Dmodel_7/transformer_block_7/layer_normalization_14/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2D
Bmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add_1?
Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpReadVariableOpSmodel_7_transformer_block_7_sequential_7_dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02L
Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp?
@model_7/transformer_block_7/sequential_7/dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2B
@model_7/transformer_block_7/sequential_7/dense_28/Tensordot/axes?
@model_7/transformer_block_7/sequential_7/dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@model_7/transformer_block_7/sequential_7/dense_28/Tensordot/free?
Amodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ShapeShapeFmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add_1:z:0*
T0*
_output_shapes
:2C
Amodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Shape?
Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axis?
Dmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2GatherV2Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Shape:output:0Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/free:output:0Rmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2F
Dmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2?
Kmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axis?
Fmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1GatherV2Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Shape:output:0Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/axes:output:0Tmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2H
Fmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1?
Amodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2C
Amodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const?
@model_7/transformer_block_7/sequential_7/dense_28/Tensordot/ProdProdMmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2:output:0Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2B
@model_7/transformer_block_7/sequential_7/dense_28/Tensordot/Prod?
Cmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const_1?
Bmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Prod_1ProdOmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1:output:0Lmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2D
Bmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Prod_1?
Gmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat/axis?
Bmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concatConcatV2Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/free:output:0Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/axes:output:0Pmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2D
Bmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat?
Amodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/stackPackImodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Prod:output:0Kmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2C
Amodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/stack?
Emodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/transpose	TransposeFmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add_1:z:0Kmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2G
Emodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/transpose?
Cmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReshapeReshapeImodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/transpose:y:0Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2E
Cmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Reshape?
Bmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/MatMulMatMulLmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Reshape:output:0Rmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2D
Bmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/MatMul?
Cmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2E
Cmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const_2?
Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axis?
Dmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat_1ConcatV2Mmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2:output:0Lmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/Const_2:output:0Rmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2F
Dmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat_1?
;model_7/transformer_block_7/sequential_7/dense_28/TensordotReshapeLmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/MatMul:product:0Mmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2=
;model_7/transformer_block_7/sequential_7/dense_28/Tensordot?
Hmodel_7/transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOpQmodel_7_transformer_block_7_sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodel_7/transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp?
9model_7/transformer_block_7/sequential_7/dense_28/BiasAddBiasAddDmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot:output:0Pmodel_7/transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2;
9model_7/transformer_block_7/sequential_7/dense_28/BiasAdd?
6model_7/transformer_block_7/sequential_7/dense_28/ReluReluBmodel_7/transformer_block_7/sequential_7/dense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@28
6model_7/transformer_block_7/sequential_7/dense_28/Relu?
Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOpReadVariableOpSmodel_7_transformer_block_7_sequential_7_dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype02L
Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp?
@model_7/transformer_block_7/sequential_7/dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2B
@model_7/transformer_block_7/sequential_7/dense_29/Tensordot/axes?
@model_7/transformer_block_7/sequential_7/dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@model_7/transformer_block_7/sequential_7/dense_29/Tensordot/free?
Amodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ShapeShapeDmodel_7/transformer_block_7/sequential_7/dense_28/Relu:activations:0*
T0*
_output_shapes
:2C
Amodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Shape?
Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axis?
Dmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2GatherV2Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Shape:output:0Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/free:output:0Rmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2F
Dmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2?
Kmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axis?
Fmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1GatherV2Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Shape:output:0Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/axes:output:0Tmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2H
Fmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1?
Amodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2C
Amodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const?
@model_7/transformer_block_7/sequential_7/dense_29/Tensordot/ProdProdMmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2:output:0Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2B
@model_7/transformer_block_7/sequential_7/dense_29/Tensordot/Prod?
Cmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const_1?
Bmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Prod_1ProdOmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1:output:0Lmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2D
Bmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Prod_1?
Gmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat/axis?
Bmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concatConcatV2Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/free:output:0Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/axes:output:0Pmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2D
Bmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat?
Amodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/stackPackImodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Prod:output:0Kmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2C
Amodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/stack?
Emodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/transpose	TransposeDmodel_7/transformer_block_7/sequential_7/dense_28/Relu:activations:0Kmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2G
Emodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/transpose?
Cmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReshapeReshapeImodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/transpose:y:0Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2E
Cmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Reshape?
Bmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/MatMulMatMulLmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Reshape:output:0Rmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2D
Bmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/MatMul?
Cmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2E
Cmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const_2?
Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axis?
Dmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat_1ConcatV2Mmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2:output:0Lmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/Const_2:output:0Rmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2F
Dmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat_1?
;model_7/transformer_block_7/sequential_7/dense_29/TensordotReshapeLmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/MatMul:product:0Mmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2=
;model_7/transformer_block_7/sequential_7/dense_29/Tensordot?
Hmodel_7/transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOpQmodel_7_transformer_block_7_sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel_7/transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp?
9model_7/transformer_block_7/sequential_7/dense_29/BiasAddBiasAddDmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot:output:0Pmodel_7/transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2;
9model_7/transformer_block_7/sequential_7/dense_29/BiasAdd?
/model_7/transformer_block_7/dropout_29/IdentityIdentityBmodel_7/transformer_block_7/sequential_7/dense_29/BiasAdd:output:0*
T0*-
_output_shapes
:???????????21
/model_7/transformer_block_7/dropout_29/Identity?
!model_7/transformer_block_7/add_1AddV2Fmodel_7/transformer_block_7/layer_normalization_14/batchnorm/add_1:z:08model_7/transformer_block_7/dropout_29/Identity:output:0*
T0*-
_output_shapes
:???????????2#
!model_7/transformer_block_7/add_1?
Qmodel_7/transformer_block_7/layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2S
Qmodel_7/transformer_block_7/layer_normalization_15/moments/mean/reduction_indices?
?model_7/transformer_block_7/layer_normalization_15/moments/meanMean%model_7/transformer_block_7/add_1:z:0Zmodel_7/transformer_block_7/layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2A
?model_7/transformer_block_7/layer_normalization_15/moments/mean?
Gmodel_7/transformer_block_7/layer_normalization_15/moments/StopGradientStopGradientHmodel_7/transformer_block_7/layer_normalization_15/moments/mean:output:0*
T0*,
_output_shapes
:??????????2I
Gmodel_7/transformer_block_7/layer_normalization_15/moments/StopGradient?
Lmodel_7/transformer_block_7/layer_normalization_15/moments/SquaredDifferenceSquaredDifference%model_7/transformer_block_7/add_1:z:0Pmodel_7/transformer_block_7/layer_normalization_15/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????2N
Lmodel_7/transformer_block_7/layer_normalization_15/moments/SquaredDifference?
Umodel_7/transformer_block_7/layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2W
Umodel_7/transformer_block_7/layer_normalization_15/moments/variance/reduction_indices?
Cmodel_7/transformer_block_7/layer_normalization_15/moments/varianceMeanPmodel_7/transformer_block_7/layer_normalization_15/moments/SquaredDifference:z:0^model_7/transformer_block_7/layer_normalization_15/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2E
Cmodel_7/transformer_block_7/layer_normalization_15/moments/variance?
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52D
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/add/y?
@model_7/transformer_block_7/layer_normalization_15/batchnorm/addAddV2Lmodel_7/transformer_block_7/layer_normalization_15/moments/variance:output:0Kmodel_7/transformer_block_7/layer_normalization_15/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2B
@model_7/transformer_block_7/layer_normalization_15/batchnorm/add?
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/RsqrtRsqrtDmodel_7/transformer_block_7/layer_normalization_15/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2D
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/Rsqrt?
Omodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpXmodel_7_transformer_block_7_layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Omodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp?
@model_7/transformer_block_7/layer_normalization_15/batchnorm/mulMulFmodel_7/transformer_block_7/layer_normalization_15/batchnorm/Rsqrt:y:0Wmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2B
@model_7/transformer_block_7/layer_normalization_15/batchnorm/mul?
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul_1Mul%model_7/transformer_block_7/add_1:z:0Dmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2D
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul_1?
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul_2MulHmodel_7/transformer_block_7/layer_normalization_15/moments/mean:output:0Dmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2D
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul_2?
Kmodel_7/transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOpTmodel_7_transformer_block_7_layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Kmodel_7/transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp?
@model_7/transformer_block_7/layer_normalization_15/batchnorm/subSubSmodel_7/transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp:value:0Fmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2B
@model_7/transformer_block_7/layer_normalization_15/batchnorm/sub?
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/add_1AddV2Fmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul_1:z:0Dmodel_7/transformer_block_7/layer_normalization_15/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2D
Bmodel_7/transformer_block_7/layer_normalization_15/batchnorm/add_1?
9model_7/global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2;
9model_7/global_average_pooling1d_6/Mean/reduction_indices?
'model_7/global_average_pooling1d_6/MeanMeanFmodel_7/transformer_block_7/layer_normalization_15/batchnorm/add_1:z:0Bmodel_7/global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2)
'model_7/global_average_pooling1d_6/Mean?
model_7/dropout_30/IdentityIdentity0model_7/global_average_pooling1d_6/Mean:output:0*
T0*(
_output_shapes
:??????????2
model_7/dropout_30/Identity?
&model_7/dense_30/MatMul/ReadVariableOpReadVariableOp/model_7_dense_30_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02(
&model_7/dense_30/MatMul/ReadVariableOp?
model_7/dense_30/MatMulMatMul$model_7/dropout_30/Identity:output:0.model_7/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_30/MatMul?
'model_7/dense_30/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_7/dense_30/BiasAdd/ReadVariableOp?
model_7/dense_30/BiasAddBiasAdd!model_7/dense_30/MatMul:product:0/model_7/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_30/BiasAdd?
model_7/dense_30/ReluRelu!model_7/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_7/dense_30/Relu?
model_7/dropout_31/IdentityIdentity#model_7/dense_30/Relu:activations:0*
T0*'
_output_shapes
:?????????2
model_7/dropout_31/Identity?
&model_7/dense_31/MatMul/ReadVariableOpReadVariableOp/model_7_dense_31_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&model_7/dense_31/MatMul/ReadVariableOp?
model_7/dense_31/MatMulMatMul$model_7/dropout_31/Identity:output:0.model_7/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_31/MatMul?
'model_7/dense_31/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_7/dense_31/BiasAdd/ReadVariableOp?
model_7/dense_31/BiasAddBiasAdd!model_7/dense_31/MatMul:product:0/model_7/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_31/BiasAdd?
model_7/dense_31/SoftmaxSoftmax!model_7/dense_31/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_7/dense_31/Softmax?
IdentityIdentity"model_7/dense_31/Softmax:softmax:0(^model_7/dense_30/BiasAdd/ReadVariableOp'^model_7/dense_30/MatMul/ReadVariableOp(^model_7/dense_31/BiasAdd/ReadVariableOp'^model_7/dense_31/MatMul/ReadVariableOpE^model_7/token_and_position_embedding_7/embedding_14/embedding_lookupE^model_7/token_and_position_embedding_7/embedding_15/embedding_lookupL^model_7/transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpP^model_7/transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpL^model_7/transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpP^model_7/transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpW^model_7/transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpa^model_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpJ^model_7/transformer_block_7/multi_head_attention_7/key/add/ReadVariableOpT^model_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpL^model_7/transformer_block_7/multi_head_attention_7/query/add/ReadVariableOpV^model_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpL^model_7/transformer_block_7/multi_head_attention_7/value/add/ReadVariableOpV^model_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpI^model_7/transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOpK^model_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpI^model_7/transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOpK^model_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2R
'model_7/dense_30/BiasAdd/ReadVariableOp'model_7/dense_30/BiasAdd/ReadVariableOp2P
&model_7/dense_30/MatMul/ReadVariableOp&model_7/dense_30/MatMul/ReadVariableOp2R
'model_7/dense_31/BiasAdd/ReadVariableOp'model_7/dense_31/BiasAdd/ReadVariableOp2P
&model_7/dense_31/MatMul/ReadVariableOp&model_7/dense_31/MatMul/ReadVariableOp2?
Dmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookupDmodel_7/token_and_position_embedding_7/embedding_14/embedding_lookup2?
Dmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookupDmodel_7/token_and_position_embedding_7/embedding_15/embedding_lookup2?
Kmodel_7/transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpKmodel_7/transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp2?
Omodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpOmodel_7/transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp2?
Kmodel_7/transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpKmodel_7/transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp2?
Omodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpOmodel_7/transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp2?
Vmodel_7/transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpVmodel_7/transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp2?
`model_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp`model_7/transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2?
Imodel_7/transformer_block_7/multi_head_attention_7/key/add/ReadVariableOpImodel_7/transformer_block_7/multi_head_attention_7/key/add/ReadVariableOp2?
Smodel_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpSmodel_7/transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2?
Kmodel_7/transformer_block_7/multi_head_attention_7/query/add/ReadVariableOpKmodel_7/transformer_block_7/multi_head_attention_7/query/add/ReadVariableOp2?
Umodel_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpUmodel_7/transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2?
Kmodel_7/transformer_block_7/multi_head_attention_7/value/add/ReadVariableOpKmodel_7/transformer_block_7/multi_head_attention_7/value/add/ReadVariableOp2?
Umodel_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpUmodel_7/transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2?
Hmodel_7/transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOpHmodel_7/transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp2?
Jmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpJmodel_7/transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp2?
Hmodel_7/transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOpHmodel_7/transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp2?
Jmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOpJmodel_7/transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_8
?
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_646025
dense_28_input
dense_28_646014
dense_28_646016
dense_29_646019
dense_29_646021
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCalldense_28_inputdense_28_646014dense_28_646016*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_6459482"
 dense_28/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_646019dense_29_646021*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_6459942"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_28_input
?
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_647861

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_30_layer_call_fn_647866

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_6465512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_model_7_layer_call_fn_646814
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_6467672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_8
?
G
+__inference_dropout_31_layer_call_fn_647918

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_6466132
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_647828

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_model_7_layer_call_fn_646918
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_6468712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_8
?	
?
D__inference_dense_31_layer_call_and_return_conditional_losses_646637

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
)__inference_dense_30_layer_call_fn_647891

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6465802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_31_layer_call_and_return_conditional_losses_646608

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_7_layer_call_fn_648065

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6460422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?+
__inference__traced_save_648405
file_prefix.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopU
Qsavev2_token_and_position_embedding_7_embedding_14_embeddings_read_readvariableopU
Qsavev2_token_and_position_embedding_7_embedding_15_embeddings_read_readvariableopV
Rsavev2_transformer_block_7_multi_head_attention_7_query_kernel_read_readvariableopT
Psavev2_transformer_block_7_multi_head_attention_7_query_bias_read_readvariableopT
Psavev2_transformer_block_7_multi_head_attention_7_key_kernel_read_readvariableopR
Nsavev2_transformer_block_7_multi_head_attention_7_key_bias_read_readvariableopV
Rsavev2_transformer_block_7_multi_head_attention_7_value_kernel_read_readvariableopT
Psavev2_transformer_block_7_multi_head_attention_7_value_bias_read_readvariableopa
]savev2_transformer_block_7_multi_head_attention_7_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_7_multi_head_attention_7_attention_output_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableopO
Ksavev2_transformer_block_7_layer_normalization_14_gamma_read_readvariableopN
Jsavev2_transformer_block_7_layer_normalization_14_beta_read_readvariableopO
Ksavev2_transformer_block_7_layer_normalization_15_gamma_read_readvariableopN
Jsavev2_transformer_block_7_layer_normalization_15_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableop5
1savev2_adam_dense_31_kernel_m_read_readvariableop3
/savev2_adam_dense_31_bias_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_7_embedding_14_embeddings_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_7_embedding_15_embeddings_m_read_readvariableop]
Ysavev2_adam_transformer_block_7_multi_head_attention_7_query_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_7_multi_head_attention_7_query_bias_m_read_readvariableop[
Wsavev2_adam_transformer_block_7_multi_head_attention_7_key_kernel_m_read_readvariableopY
Usavev2_adam_transformer_block_7_multi_head_attention_7_key_bias_m_read_readvariableop]
Ysavev2_adam_transformer_block_7_multi_head_attention_7_value_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_7_multi_head_attention_7_value_bias_m_read_readvariableoph
dsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_m_read_readvariableopf
bsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_m_read_readvariableop5
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableop5
1savev2_adam_dense_29_kernel_m_read_readvariableop3
/savev2_adam_dense_29_bias_m_read_readvariableopV
Rsavev2_adam_transformer_block_7_layer_normalization_14_gamma_m_read_readvariableopU
Qsavev2_adam_transformer_block_7_layer_normalization_14_beta_m_read_readvariableopV
Rsavev2_adam_transformer_block_7_layer_normalization_15_gamma_m_read_readvariableopU
Qsavev2_adam_transformer_block_7_layer_normalization_15_beta_m_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableop5
1savev2_adam_dense_31_kernel_v_read_readvariableop3
/savev2_adam_dense_31_bias_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_7_embedding_14_embeddings_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_7_embedding_15_embeddings_v_read_readvariableop]
Ysavev2_adam_transformer_block_7_multi_head_attention_7_query_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_7_multi_head_attention_7_query_bias_v_read_readvariableop[
Wsavev2_adam_transformer_block_7_multi_head_attention_7_key_kernel_v_read_readvariableopY
Usavev2_adam_transformer_block_7_multi_head_attention_7_key_bias_v_read_readvariableop]
Ysavev2_adam_transformer_block_7_multi_head_attention_7_value_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_7_multi_head_attention_7_value_bias_v_read_readvariableoph
dsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_v_read_readvariableopf
bsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_v_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableop5
1savev2_adam_dense_29_kernel_v_read_readvariableop3
/savev2_adam_dense_29_bias_v_read_readvariableopV
Rsavev2_adam_transformer_block_7_layer_normalization_14_gamma_v_read_readvariableopU
Qsavev2_adam_transformer_block_7_layer_normalization_14_beta_v_read_readvariableopV
Rsavev2_adam_transformer_block_7_layer_normalization_15_gamma_v_read_readvariableopU
Qsavev2_adam_transformer_block_7_layer_normalization_15_beta_v_read_readvariableop
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
ShardedFilename?$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?#
value?#B?#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?*
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopQsavev2_token_and_position_embedding_7_embedding_14_embeddings_read_readvariableopQsavev2_token_and_position_embedding_7_embedding_15_embeddings_read_readvariableopRsavev2_transformer_block_7_multi_head_attention_7_query_kernel_read_readvariableopPsavev2_transformer_block_7_multi_head_attention_7_query_bias_read_readvariableopPsavev2_transformer_block_7_multi_head_attention_7_key_kernel_read_readvariableopNsavev2_transformer_block_7_multi_head_attention_7_key_bias_read_readvariableopRsavev2_transformer_block_7_multi_head_attention_7_value_kernel_read_readvariableopPsavev2_transformer_block_7_multi_head_attention_7_value_bias_read_readvariableop]savev2_transformer_block_7_multi_head_attention_7_attention_output_kernel_read_readvariableop[savev2_transformer_block_7_multi_head_attention_7_attention_output_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableopKsavev2_transformer_block_7_layer_normalization_14_gamma_read_readvariableopJsavev2_transformer_block_7_layer_normalization_14_beta_read_readvariableopKsavev2_transformer_block_7_layer_normalization_15_gamma_read_readvariableopJsavev2_transformer_block_7_layer_normalization_15_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableop1savev2_adam_dense_31_kernel_m_read_readvariableop/savev2_adam_dense_31_bias_m_read_readvariableopXsavev2_adam_token_and_position_embedding_7_embedding_14_embeddings_m_read_readvariableopXsavev2_adam_token_and_position_embedding_7_embedding_15_embeddings_m_read_readvariableopYsavev2_adam_transformer_block_7_multi_head_attention_7_query_kernel_m_read_readvariableopWsavev2_adam_transformer_block_7_multi_head_attention_7_query_bias_m_read_readvariableopWsavev2_adam_transformer_block_7_multi_head_attention_7_key_kernel_m_read_readvariableopUsavev2_adam_transformer_block_7_multi_head_attention_7_key_bias_m_read_readvariableopYsavev2_adam_transformer_block_7_multi_head_attention_7_value_kernel_m_read_readvariableopWsavev2_adam_transformer_block_7_multi_head_attention_7_value_bias_m_read_readvariableopdsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_m_read_readvariableopbsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_m_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop1savev2_adam_dense_29_kernel_m_read_readvariableop/savev2_adam_dense_29_bias_m_read_readvariableopRsavev2_adam_transformer_block_7_layer_normalization_14_gamma_m_read_readvariableopQsavev2_adam_transformer_block_7_layer_normalization_14_beta_m_read_readvariableopRsavev2_adam_transformer_block_7_layer_normalization_15_gamma_m_read_readvariableopQsavev2_adam_transformer_block_7_layer_normalization_15_beta_m_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableop1savev2_adam_dense_31_kernel_v_read_readvariableop/savev2_adam_dense_31_bias_v_read_readvariableopXsavev2_adam_token_and_position_embedding_7_embedding_14_embeddings_v_read_readvariableopXsavev2_adam_token_and_position_embedding_7_embedding_15_embeddings_v_read_readvariableopYsavev2_adam_transformer_block_7_multi_head_attention_7_query_kernel_v_read_readvariableopWsavev2_adam_transformer_block_7_multi_head_attention_7_query_bias_v_read_readvariableopWsavev2_adam_transformer_block_7_multi_head_attention_7_key_kernel_v_read_readvariableopUsavev2_adam_transformer_block_7_multi_head_attention_7_key_bias_v_read_readvariableopYsavev2_adam_transformer_block_7_multi_head_attention_7_value_kernel_v_read_readvariableopWsavev2_adam_transformer_block_7_multi_head_attention_7_value_bias_v_read_readvariableopdsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_v_read_readvariableopbsavev2_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_v_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableop1savev2_adam_dense_29_kernel_v_read_readvariableop/savev2_adam_dense_29_bias_v_read_readvariableopRsavev2_adam_transformer_block_7_layer_normalization_14_gamma_v_read_readvariableopQsavev2_adam_transformer_block_7_layer_normalization_14_beta_v_read_readvariableopRsavev2_adam_transformer_block_7_layer_normalization_15_gamma_v_read_readvariableopQsavev2_adam_transformer_block_7_layer_normalization_15_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:::: : : : : :???:
??:??:	?:??:	?:??:	?:??:?:	?@:@:	@?:?:?:?:?:?: : : : :	?::::???:
??:??:	?:??:	?:??:	?:??:?:	?@:@:	@?:?:?:?:?:?:	?::::???:
??:??:	?:??:	?:??:	?:??:?:	?@:@:	@?:?:?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :'
#
!
_output_shapes
:???:&"
 
_output_shapes
:
??:*&
$
_output_shapes
:??:%!

_output_shapes
:	?:*&
$
_output_shapes
:??:%!

_output_shapes
:	?:*&
$
_output_shapes
:??:%!

_output_shapes
:	?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::'$#
!
_output_shapes
:???:&%"
 
_output_shapes
:
??:*&&
$
_output_shapes
:??:%'!

_output_shapes
:	?:*(&
$
_output_shapes
:??:%)!

_output_shapes
:	?:**&
$
_output_shapes
:??:%+!

_output_shapes
:	?:*,&
$
_output_shapes
:??:!-

_output_shapes	
:?:%.!

_output_shapes
:	?@: /

_output_shapes
:@:%0!

_output_shapes
:	@?:!1

_output_shapes	
:?:!2

_output_shapes	
:?:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:%6!

_output_shapes
:	?: 7

_output_shapes
::$8 

_output_shapes

:: 9

_output_shapes
::':#
!
_output_shapes
:???:&;"
 
_output_shapes
:
??:*<&
$
_output_shapes
:??:%=!

_output_shapes
:	?:*>&
$
_output_shapes
:??:%?!

_output_shapes
:	?:*@&
$
_output_shapes
:??:%A!

_output_shapes
:	?:*B&
$
_output_shapes
:??:!C

_output_shapes	
:?:%D!

_output_shapes
:	?@: E

_output_shapes
:@:%F!

_output_shapes
:	@?:!G

_output_shapes	
:?:!H

_output_shapes	
:?:!I

_output_shapes	
:?:!J

_output_shapes	
:?:!K

_output_shapes	
:?:L

_output_shapes
: 
?-
?
C__inference_model_7_layer_call_and_return_conditional_losses_646654
input_8)
%token_and_position_embedding_7_646138)
%token_and_position_embedding_7_646140
transformer_block_7_646494
transformer_block_7_646496
transformer_block_7_646498
transformer_block_7_646500
transformer_block_7_646502
transformer_block_7_646504
transformer_block_7_646506
transformer_block_7_646508
transformer_block_7_646510
transformer_block_7_646512
transformer_block_7_646514
transformer_block_7_646516
transformer_block_7_646518
transformer_block_7_646520
transformer_block_7_646522
transformer_block_7_646524
dense_30_646591
dense_30_646593
dense_31_646648
dense_31_646650
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?"dropout_30/StatefulPartitionedCall?"dropout_31/StatefulPartitionedCall?6token_and_position_embedding_7/StatefulPartitionedCall?+transformer_block_7/StatefulPartitionedCall?
6token_and_position_embedding_7/StatefulPartitionedCallStatefulPartitionedCallinput_8%token_and_position_embedding_7_646138%token_and_position_embedding_7_646140*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_64612728
6token_and_position_embedding_7/StatefulPartitionedCall?
+transformer_block_7/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_7/StatefulPartitionedCall:output:0transformer_block_7_646494transformer_block_7_646496transformer_block_7_646498transformer_block_7_646500transformer_block_7_646502transformer_block_7_646504transformer_block_7_646506transformer_block_7_646508transformer_block_7_646510transformer_block_7_646512transformer_block_7_646514transformer_block_7_646516transformer_block_7_646518transformer_block_7_646520transformer_block_7_646522transformer_block_7_646524*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_6462912-
+transformer_block_7/StatefulPartitionedCall?
*global_average_pooling1d_6/PartitionedCallPartitionedCall4transformer_block_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_6465322,
*global_average_pooling1d_6/PartitionedCall?
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_6465512$
"dropout_30/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0dense_30_646591dense_30_646593*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6465802"
 dense_30/StatefulPartitionedCall?
"dropout_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0#^dropout_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_6466082$
"dropout_31/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_31/StatefulPartitionedCall:output:0dense_31_646648dense_31_646650*
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
GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6466372"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall#^dropout_31/StatefulPartitionedCall7^token_and_position_embedding_7/StatefulPartitionedCall,^transformer_block_7/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall2H
"dropout_31/StatefulPartitionedCall"dropout_31/StatefulPartitionedCall2p
6token_and_position_embedding_7/StatefulPartitionedCall6token_and_position_embedding_7/StatefulPartitionedCall2Z
+transformer_block_7/StatefulPartitionedCall+transformer_block_7/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_8
??
?
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_646418

inputsF
Bmulti_head_attention_7_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_query_add_readvariableop_resourceD
@multi_head_attention_7_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_7_key_add_readvariableop_resourceF
Bmulti_head_attention_7_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_value_add_readvariableop_resourceQ
Mmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_7_attention_output_add_readvariableop_resource@
<layer_normalization_14_batchnorm_mul_readvariableop_resource<
8layer_normalization_14_batchnorm_readvariableop_resource;
7sequential_7_dense_28_tensordot_readvariableop_resource9
5sequential_7_dense_28_biasadd_readvariableop_resource;
7sequential_7_dense_29_tensordot_readvariableop_resource9
5sequential_7_dense_29_biasadd_readvariableop_resource@
<layer_normalization_15_batchnorm_mul_readvariableop_resource<
8layer_normalization_15_batchnorm_readvariableop_resource
identity??/layer_normalization_14/batchnorm/ReadVariableOp?3layer_normalization_14/batchnorm/mul/ReadVariableOp?/layer_normalization_15/batchnorm/ReadVariableOp?3layer_normalization_15/batchnorm/mul/ReadVariableOp?:multi_head_attention_7/attention_output/add/ReadVariableOp?Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_7/key/add/ReadVariableOp?7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/query/add/ReadVariableOp?9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/value/add/ReadVariableOp?9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?,sequential_7/dense_28/BiasAdd/ReadVariableOp?.sequential_7/dense_28/Tensordot/ReadVariableOp?,sequential_7/dense_29/BiasAdd/ReadVariableOp?.sequential_7/dense_29/Tensordot/ReadVariableOp?
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/query/einsum/EinsumEinsuminputsAmulti_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/query/einsum/Einsum?
/multi_head_attention_7/query/add/ReadVariableOpReadVariableOp8multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/query/add/ReadVariableOp?
 multi_head_attention_7/query/addAddV23multi_head_attention_7/query/einsum/Einsum:output:07multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/query/add?
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_7_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype029
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_7/key/einsum/EinsumEinsuminputs?multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2*
(multi_head_attention_7/key/einsum/Einsum?
-multi_head_attention_7/key/add/ReadVariableOpReadVariableOp6multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-multi_head_attention_7/key/add/ReadVariableOp?
multi_head_attention_7/key/addAddV21multi_head_attention_7/key/einsum/Einsum:output:05multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2 
multi_head_attention_7/key/add?
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/value/einsum/EinsumEinsuminputsAmulti_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/value/einsum/Einsum?
/multi_head_attention_7/value/add/ReadVariableOpReadVariableOp8multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/value/add/ReadVariableOp?
 multi_head_attention_7/value/addAddV23multi_head_attention_7/value/einsum/Einsum:output:07multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/value/add?
multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??=2
multi_head_attention_7/Mul/y?
multi_head_attention_7/MulMul$multi_head_attention_7/query/add:z:0%multi_head_attention_7/Mul/y:output:0*
T0*1
_output_shapes
:???????????2
multi_head_attention_7/Mul?
$multi_head_attention_7/einsum/EinsumEinsum"multi_head_attention_7/key/add:z:0multi_head_attention_7/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_7/einsum/Einsum?
&multi_head_attention_7/softmax/SoftmaxSoftmax-multi_head_attention_7/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_7/softmax/Softmax?
'multi_head_attention_7/dropout/IdentityIdentity0multi_head_attention_7/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2)
'multi_head_attention_7/dropout/Identity?
&multi_head_attention_7/einsum_1/EinsumEinsum0multi_head_attention_7/dropout/Identity:output:0$multi_head_attention_7/value/add:z:0*
N*
T0*1
_output_shapes
:???????????*
equationacbe,aecd->abcd2(
&multi_head_attention_7/einsum_1/Einsum?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02F
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_7/attention_output/einsum/EinsumEinsum/multi_head_attention_7/einsum_1/Einsum:output:0Lmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:???????????*
equationabcd,cde->abe27
5multi_head_attention_7/attention_output/einsum/Einsum?
:multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:multi_head_attention_7/attention_output/add/ReadVariableOp?
+multi_head_attention_7/attention_output/addAddV2>multi_head_attention_7/attention_output/einsum/Einsum:output:0Bmulti_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2-
+multi_head_attention_7/attention_output/add?
dropout_28/IdentityIdentity/multi_head_attention_7/attention_output/add:z:0*
T0*-
_output_shapes
:???????????2
dropout_28/Identityq
addAddV2inputsdropout_28/Identity:output:0*
T0*-
_output_shapes
:???????????2
add?
5layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_14/moments/mean/reduction_indices?
#layer_normalization_14/moments/meanMeanadd:z:0>layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_14/moments/mean?
+layer_normalization_14/moments/StopGradientStopGradient,layer_normalization_14/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_14/moments/StopGradient?
0layer_normalization_14/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_14/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_14/moments/SquaredDifference?
9layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_14/moments/variance/reduction_indices?
'layer_normalization_14/moments/varianceMean4layer_normalization_14/moments/SquaredDifference:z:0Blayer_normalization_14/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_14/moments/variance?
&layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_14/batchnorm/add/y?
$layer_normalization_14/batchnorm/addAddV20layer_normalization_14/moments/variance:output:0/layer_normalization_14/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_14/batchnorm/add?
&layer_normalization_14/batchnorm/RsqrtRsqrt(layer_normalization_14/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_14/batchnorm/Rsqrt?
3layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_14/batchnorm/mul/ReadVariableOp?
$layer_normalization_14/batchnorm/mulMul*layer_normalization_14/batchnorm/Rsqrt:y:0;layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/mul?
&layer_normalization_14/batchnorm/mul_1Muladd:z:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_1?
&layer_normalization_14/batchnorm/mul_2Mul,layer_normalization_14/moments/mean:output:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_2?
/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_14/batchnorm/ReadVariableOp?
$layer_normalization_14/batchnorm/subSub7layer_normalization_14/batchnorm/ReadVariableOp:value:0*layer_normalization_14/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/sub?
&layer_normalization_14/batchnorm/add_1AddV2*layer_normalization_14/batchnorm/mul_1:z:0(layer_normalization_14/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/add_1?
.sequential_7/dense_28/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_7/dense_28/Tensordot/ReadVariableOp?
$sequential_7/dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_28/Tensordot/axes?
$sequential_7/dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_28/Tensordot/free?
%sequential_7/dense_28/Tensordot/ShapeShape*layer_normalization_14/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/Shape?
-sequential_7/dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/GatherV2/axis?
(sequential_7/dense_28/Tensordot/GatherV2GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/free:output:06sequential_7/dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/GatherV2?
/sequential_7/dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_28/Tensordot/GatherV2_1/axis?
*sequential_7/dense_28/Tensordot/GatherV2_1GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/axes:output:08sequential_7/dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_28/Tensordot/GatherV2_1?
%sequential_7/dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_28/Tensordot/Const?
$sequential_7/dense_28/Tensordot/ProdProd1sequential_7/dense_28/Tensordot/GatherV2:output:0.sequential_7/dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_28/Tensordot/Prod?
'sequential_7/dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_28/Tensordot/Const_1?
&sequential_7/dense_28/Tensordot/Prod_1Prod3sequential_7/dense_28/Tensordot/GatherV2_1:output:00sequential_7/dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_28/Tensordot/Prod_1?
+sequential_7/dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_28/Tensordot/concat/axis?
&sequential_7/dense_28/Tensordot/concatConcatV2-sequential_7/dense_28/Tensordot/free:output:0-sequential_7/dense_28/Tensordot/axes:output:04sequential_7/dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_28/Tensordot/concat?
%sequential_7/dense_28/Tensordot/stackPack-sequential_7/dense_28/Tensordot/Prod:output:0/sequential_7/dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/stack?
)sequential_7/dense_28/Tensordot/transpose	Transpose*layer_normalization_14/batchnorm/add_1:z:0/sequential_7/dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2+
)sequential_7/dense_28/Tensordot/transpose?
'sequential_7/dense_28/Tensordot/ReshapeReshape-sequential_7/dense_28/Tensordot/transpose:y:0.sequential_7/dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_28/Tensordot/Reshape?
&sequential_7/dense_28/Tensordot/MatMulMatMul0sequential_7/dense_28/Tensordot/Reshape:output:06sequential_7/dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_7/dense_28/Tensordot/MatMul?
'sequential_7/dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_7/dense_28/Tensordot/Const_2?
-sequential_7/dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/concat_1/axis?
(sequential_7/dense_28/Tensordot/concat_1ConcatV21sequential_7/dense_28/Tensordot/GatherV2:output:00sequential_7/dense_28/Tensordot/Const_2:output:06sequential_7/dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/concat_1?
sequential_7/dense_28/TensordotReshape0sequential_7/dense_28/Tensordot/MatMul:product:01sequential_7/dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2!
sequential_7/dense_28/Tensordot?
,sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_7/dense_28/BiasAdd/ReadVariableOp?
sequential_7/dense_28/BiasAddBiasAdd(sequential_7/dense_28/Tensordot:output:04sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/BiasAdd?
sequential_7/dense_28/ReluRelu&sequential_7/dense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/Relu?
.sequential_7/dense_29/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype020
.sequential_7/dense_29/Tensordot/ReadVariableOp?
$sequential_7/dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_29/Tensordot/axes?
$sequential_7/dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_29/Tensordot/free?
%sequential_7/dense_29/Tensordot/ShapeShape(sequential_7/dense_28/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/Shape?
-sequential_7/dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/GatherV2/axis?
(sequential_7/dense_29/Tensordot/GatherV2GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/free:output:06sequential_7/dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/GatherV2?
/sequential_7/dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_29/Tensordot/GatherV2_1/axis?
*sequential_7/dense_29/Tensordot/GatherV2_1GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/axes:output:08sequential_7/dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_29/Tensordot/GatherV2_1?
%sequential_7/dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_29/Tensordot/Const?
$sequential_7/dense_29/Tensordot/ProdProd1sequential_7/dense_29/Tensordot/GatherV2:output:0.sequential_7/dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_29/Tensordot/Prod?
'sequential_7/dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_29/Tensordot/Const_1?
&sequential_7/dense_29/Tensordot/Prod_1Prod3sequential_7/dense_29/Tensordot/GatherV2_1:output:00sequential_7/dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_29/Tensordot/Prod_1?
+sequential_7/dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_29/Tensordot/concat/axis?
&sequential_7/dense_29/Tensordot/concatConcatV2-sequential_7/dense_29/Tensordot/free:output:0-sequential_7/dense_29/Tensordot/axes:output:04sequential_7/dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_29/Tensordot/concat?
%sequential_7/dense_29/Tensordot/stackPack-sequential_7/dense_29/Tensordot/Prod:output:0/sequential_7/dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/stack?
)sequential_7/dense_29/Tensordot/transpose	Transpose(sequential_7/dense_28/Relu:activations:0/sequential_7/dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2+
)sequential_7/dense_29/Tensordot/transpose?
'sequential_7/dense_29/Tensordot/ReshapeReshape-sequential_7/dense_29/Tensordot/transpose:y:0.sequential_7/dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_29/Tensordot/Reshape?
&sequential_7/dense_29/Tensordot/MatMulMatMul0sequential_7/dense_29/Tensordot/Reshape:output:06sequential_7/dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_7/dense_29/Tensordot/MatMul?
'sequential_7/dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2)
'sequential_7/dense_29/Tensordot/Const_2?
-sequential_7/dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/concat_1/axis?
(sequential_7/dense_29/Tensordot/concat_1ConcatV21sequential_7/dense_29/Tensordot/GatherV2:output:00sequential_7/dense_29/Tensordot/Const_2:output:06sequential_7/dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/concat_1?
sequential_7/dense_29/TensordotReshape0sequential_7/dense_29/Tensordot/MatMul:product:01sequential_7/dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2!
sequential_7/dense_29/Tensordot?
,sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_29/BiasAdd/ReadVariableOp?
sequential_7/dense_29/BiasAddBiasAdd(sequential_7/dense_29/Tensordot:output:04sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
sequential_7/dense_29/BiasAdd?
dropout_29/IdentityIdentity&sequential_7/dense_29/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dropout_29/Identity?
add_1AddV2*layer_normalization_14/batchnorm/add_1:z:0dropout_29/Identity:output:0*
T0*-
_output_shapes
:???????????2
add_1?
5layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_15/moments/mean/reduction_indices?
#layer_normalization_15/moments/meanMean	add_1:z:0>layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_15/moments/mean?
+layer_normalization_15/moments/StopGradientStopGradient,layer_normalization_15/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_15/moments/StopGradient?
0layer_normalization_15/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_15/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_15/moments/SquaredDifference?
9layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_15/moments/variance/reduction_indices?
'layer_normalization_15/moments/varianceMean4layer_normalization_15/moments/SquaredDifference:z:0Blayer_normalization_15/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_15/moments/variance?
&layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_15/batchnorm/add/y?
$layer_normalization_15/batchnorm/addAddV20layer_normalization_15/moments/variance:output:0/layer_normalization_15/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_15/batchnorm/add?
&layer_normalization_15/batchnorm/RsqrtRsqrt(layer_normalization_15/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_15/batchnorm/Rsqrt?
3layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_15/batchnorm/mul/ReadVariableOp?
$layer_normalization_15/batchnorm/mulMul*layer_normalization_15/batchnorm/Rsqrt:y:0;layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/mul?
&layer_normalization_15/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_1?
&layer_normalization_15/batchnorm/mul_2Mul,layer_normalization_15/moments/mean:output:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_2?
/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_15/batchnorm/ReadVariableOp?
$layer_normalization_15/batchnorm/subSub7layer_normalization_15/batchnorm/ReadVariableOp:value:0*layer_normalization_15/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/sub?
&layer_normalization_15/batchnorm/add_1AddV2*layer_normalization_15/batchnorm/mul_1:z:0(layer_normalization_15/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/add_1?
IdentityIdentity*layer_normalization_15/batchnorm/add_1:z:00^layer_normalization_14/batchnorm/ReadVariableOp4^layer_normalization_14/batchnorm/mul/ReadVariableOp0^layer_normalization_15/batchnorm/ReadVariableOp4^layer_normalization_15/batchnorm/mul/ReadVariableOp;^multi_head_attention_7/attention_output/add/ReadVariableOpE^multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_7/key/add/ReadVariableOp8^multi_head_attention_7/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/query/add/ReadVariableOp:^multi_head_attention_7/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/value/add/ReadVariableOp:^multi_head_attention_7/value/einsum/Einsum/ReadVariableOp-^sequential_7/dense_28/BiasAdd/ReadVariableOp/^sequential_7/dense_28/Tensordot/ReadVariableOp-^sequential_7/dense_29/BiasAdd/ReadVariableOp/^sequential_7/dense_29/Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*l
_input_shapes[
Y:???????????::::::::::::::::2b
/layer_normalization_14/batchnorm/ReadVariableOp/layer_normalization_14/batchnorm/ReadVariableOp2j
3layer_normalization_14/batchnorm/mul/ReadVariableOp3layer_normalization_14/batchnorm/mul/ReadVariableOp2b
/layer_normalization_15/batchnorm/ReadVariableOp/layer_normalization_15/batchnorm/ReadVariableOp2j
3layer_normalization_15/batchnorm/mul/ReadVariableOp3layer_normalization_15/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_7/attention_output/add/ReadVariableOp:multi_head_attention_7/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_7/key/add/ReadVariableOp-multi_head_attention_7/key/add/ReadVariableOp2r
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/query/add/ReadVariableOp/multi_head_attention_7/query/add/ReadVariableOp2v
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/value/add/ReadVariableOp/multi_head_attention_7/value/add/ReadVariableOp2v
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2\
,sequential_7/dense_28/BiasAdd/ReadVariableOp,sequential_7/dense_28/BiasAdd/ReadVariableOp2`
.sequential_7/dense_28/Tensordot/ReadVariableOp.sequential_7/dense_28/Tensordot/ReadVariableOp2\
,sequential_7/dense_29/BiasAdd/ReadVariableOp,sequential_7/dense_29/BiasAdd/ReadVariableOp2`
.sequential_7/dense_29/Tensordot/ReadVariableOp.sequential_7/dense_29/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
~
)__inference_dense_31_layer_call_fn_647938

inputs
unknown
	unknown_0
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
GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6466372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_29_layer_call_and_return_conditional_losses_648148

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
d
+__inference_dropout_31_layer_call_fn_647913

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_6466082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_30_layer_call_and_return_conditional_losses_646580

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_31_layer_call_and_return_conditional_losses_646613

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_647621

inputsF
Bmulti_head_attention_7_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_query_add_readvariableop_resourceD
@multi_head_attention_7_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_7_key_add_readvariableop_resourceF
Bmulti_head_attention_7_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_value_add_readvariableop_resourceQ
Mmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_7_attention_output_add_readvariableop_resource@
<layer_normalization_14_batchnorm_mul_readvariableop_resource<
8layer_normalization_14_batchnorm_readvariableop_resource;
7sequential_7_dense_28_tensordot_readvariableop_resource9
5sequential_7_dense_28_biasadd_readvariableop_resource;
7sequential_7_dense_29_tensordot_readvariableop_resource9
5sequential_7_dense_29_biasadd_readvariableop_resource@
<layer_normalization_15_batchnorm_mul_readvariableop_resource<
8layer_normalization_15_batchnorm_readvariableop_resource
identity??/layer_normalization_14/batchnorm/ReadVariableOp?3layer_normalization_14/batchnorm/mul/ReadVariableOp?/layer_normalization_15/batchnorm/ReadVariableOp?3layer_normalization_15/batchnorm/mul/ReadVariableOp?:multi_head_attention_7/attention_output/add/ReadVariableOp?Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_7/key/add/ReadVariableOp?7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/query/add/ReadVariableOp?9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/value/add/ReadVariableOp?9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?,sequential_7/dense_28/BiasAdd/ReadVariableOp?.sequential_7/dense_28/Tensordot/ReadVariableOp?,sequential_7/dense_29/BiasAdd/ReadVariableOp?.sequential_7/dense_29/Tensordot/ReadVariableOp?
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/query/einsum/EinsumEinsuminputsAmulti_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/query/einsum/Einsum?
/multi_head_attention_7/query/add/ReadVariableOpReadVariableOp8multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/query/add/ReadVariableOp?
 multi_head_attention_7/query/addAddV23multi_head_attention_7/query/einsum/Einsum:output:07multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/query/add?
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_7_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype029
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_7/key/einsum/EinsumEinsuminputs?multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2*
(multi_head_attention_7/key/einsum/Einsum?
-multi_head_attention_7/key/add/ReadVariableOpReadVariableOp6multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-multi_head_attention_7/key/add/ReadVariableOp?
multi_head_attention_7/key/addAddV21multi_head_attention_7/key/einsum/Einsum:output:05multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2 
multi_head_attention_7/key/add?
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/value/einsum/EinsumEinsuminputsAmulti_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/value/einsum/Einsum?
/multi_head_attention_7/value/add/ReadVariableOpReadVariableOp8multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/value/add/ReadVariableOp?
 multi_head_attention_7/value/addAddV23multi_head_attention_7/value/einsum/Einsum:output:07multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/value/add?
multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??=2
multi_head_attention_7/Mul/y?
multi_head_attention_7/MulMul$multi_head_attention_7/query/add:z:0%multi_head_attention_7/Mul/y:output:0*
T0*1
_output_shapes
:???????????2
multi_head_attention_7/Mul?
$multi_head_attention_7/einsum/EinsumEinsum"multi_head_attention_7/key/add:z:0multi_head_attention_7/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_7/einsum/Einsum?
&multi_head_attention_7/softmax/SoftmaxSoftmax-multi_head_attention_7/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_7/softmax/Softmax?
,multi_head_attention_7/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,multi_head_attention_7/dropout/dropout/Const?
*multi_head_attention_7/dropout/dropout/MulMul0multi_head_attention_7/softmax/Softmax:softmax:05multi_head_attention_7/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:???????????2,
*multi_head_attention_7/dropout/dropout/Mul?
,multi_head_attention_7/dropout/dropout/ShapeShape0multi_head_attention_7/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_7/dropout/dropout/Shape?
Cmulti_head_attention_7/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_7/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:???????????*
dtype02E
Cmulti_head_attention_7/dropout/dropout/random_uniform/RandomUniform?
5multi_head_attention_7/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_7/dropout/dropout/GreaterEqual/y?
3multi_head_attention_7/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_7/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_7/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:???????????25
3multi_head_attention_7/dropout/dropout/GreaterEqual?
+multi_head_attention_7/dropout/dropout/CastCast7multi_head_attention_7/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:???????????2-
+multi_head_attention_7/dropout/dropout/Cast?
,multi_head_attention_7/dropout/dropout/Mul_1Mul.multi_head_attention_7/dropout/dropout/Mul:z:0/multi_head_attention_7/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:???????????2.
,multi_head_attention_7/dropout/dropout/Mul_1?
&multi_head_attention_7/einsum_1/EinsumEinsum0multi_head_attention_7/dropout/dropout/Mul_1:z:0$multi_head_attention_7/value/add:z:0*
N*
T0*1
_output_shapes
:???????????*
equationacbe,aecd->abcd2(
&multi_head_attention_7/einsum_1/Einsum?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02F
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_7/attention_output/einsum/EinsumEinsum/multi_head_attention_7/einsum_1/Einsum:output:0Lmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:???????????*
equationabcd,cde->abe27
5multi_head_attention_7/attention_output/einsum/Einsum?
:multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:multi_head_attention_7/attention_output/add/ReadVariableOp?
+multi_head_attention_7/attention_output/addAddV2>multi_head_attention_7/attention_output/einsum/Einsum:output:0Bmulti_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2-
+multi_head_attention_7/attention_output/addy
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_28/dropout/Const?
dropout_28/dropout/MulMul/multi_head_attention_7/attention_output/add:z:0!dropout_28/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2
dropout_28/dropout/Mul?
dropout_28/dropout/ShapeShape/multi_head_attention_7/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_28/dropout/Shape?
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype021
/dropout_28/dropout/random_uniform/RandomUniform?
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_28/dropout/GreaterEqual/y?
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????2!
dropout_28/dropout/GreaterEqual?
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2
dropout_28/dropout/Cast?
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2
dropout_28/dropout/Mul_1q
addAddV2inputsdropout_28/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????2
add?
5layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_14/moments/mean/reduction_indices?
#layer_normalization_14/moments/meanMeanadd:z:0>layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_14/moments/mean?
+layer_normalization_14/moments/StopGradientStopGradient,layer_normalization_14/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_14/moments/StopGradient?
0layer_normalization_14/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_14/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_14/moments/SquaredDifference?
9layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_14/moments/variance/reduction_indices?
'layer_normalization_14/moments/varianceMean4layer_normalization_14/moments/SquaredDifference:z:0Blayer_normalization_14/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_14/moments/variance?
&layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_14/batchnorm/add/y?
$layer_normalization_14/batchnorm/addAddV20layer_normalization_14/moments/variance:output:0/layer_normalization_14/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_14/batchnorm/add?
&layer_normalization_14/batchnorm/RsqrtRsqrt(layer_normalization_14/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_14/batchnorm/Rsqrt?
3layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_14/batchnorm/mul/ReadVariableOp?
$layer_normalization_14/batchnorm/mulMul*layer_normalization_14/batchnorm/Rsqrt:y:0;layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/mul?
&layer_normalization_14/batchnorm/mul_1Muladd:z:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_1?
&layer_normalization_14/batchnorm/mul_2Mul,layer_normalization_14/moments/mean:output:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_2?
/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_14/batchnorm/ReadVariableOp?
$layer_normalization_14/batchnorm/subSub7layer_normalization_14/batchnorm/ReadVariableOp:value:0*layer_normalization_14/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/sub?
&layer_normalization_14/batchnorm/add_1AddV2*layer_normalization_14/batchnorm/mul_1:z:0(layer_normalization_14/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/add_1?
.sequential_7/dense_28/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_7/dense_28/Tensordot/ReadVariableOp?
$sequential_7/dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_28/Tensordot/axes?
$sequential_7/dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_28/Tensordot/free?
%sequential_7/dense_28/Tensordot/ShapeShape*layer_normalization_14/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/Shape?
-sequential_7/dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/GatherV2/axis?
(sequential_7/dense_28/Tensordot/GatherV2GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/free:output:06sequential_7/dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/GatherV2?
/sequential_7/dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_28/Tensordot/GatherV2_1/axis?
*sequential_7/dense_28/Tensordot/GatherV2_1GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/axes:output:08sequential_7/dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_28/Tensordot/GatherV2_1?
%sequential_7/dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_28/Tensordot/Const?
$sequential_7/dense_28/Tensordot/ProdProd1sequential_7/dense_28/Tensordot/GatherV2:output:0.sequential_7/dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_28/Tensordot/Prod?
'sequential_7/dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_28/Tensordot/Const_1?
&sequential_7/dense_28/Tensordot/Prod_1Prod3sequential_7/dense_28/Tensordot/GatherV2_1:output:00sequential_7/dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_28/Tensordot/Prod_1?
+sequential_7/dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_28/Tensordot/concat/axis?
&sequential_7/dense_28/Tensordot/concatConcatV2-sequential_7/dense_28/Tensordot/free:output:0-sequential_7/dense_28/Tensordot/axes:output:04sequential_7/dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_28/Tensordot/concat?
%sequential_7/dense_28/Tensordot/stackPack-sequential_7/dense_28/Tensordot/Prod:output:0/sequential_7/dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/stack?
)sequential_7/dense_28/Tensordot/transpose	Transpose*layer_normalization_14/batchnorm/add_1:z:0/sequential_7/dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2+
)sequential_7/dense_28/Tensordot/transpose?
'sequential_7/dense_28/Tensordot/ReshapeReshape-sequential_7/dense_28/Tensordot/transpose:y:0.sequential_7/dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_28/Tensordot/Reshape?
&sequential_7/dense_28/Tensordot/MatMulMatMul0sequential_7/dense_28/Tensordot/Reshape:output:06sequential_7/dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_7/dense_28/Tensordot/MatMul?
'sequential_7/dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_7/dense_28/Tensordot/Const_2?
-sequential_7/dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/concat_1/axis?
(sequential_7/dense_28/Tensordot/concat_1ConcatV21sequential_7/dense_28/Tensordot/GatherV2:output:00sequential_7/dense_28/Tensordot/Const_2:output:06sequential_7/dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/concat_1?
sequential_7/dense_28/TensordotReshape0sequential_7/dense_28/Tensordot/MatMul:product:01sequential_7/dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2!
sequential_7/dense_28/Tensordot?
,sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_7/dense_28/BiasAdd/ReadVariableOp?
sequential_7/dense_28/BiasAddBiasAdd(sequential_7/dense_28/Tensordot:output:04sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/BiasAdd?
sequential_7/dense_28/ReluRelu&sequential_7/dense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/Relu?
.sequential_7/dense_29/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype020
.sequential_7/dense_29/Tensordot/ReadVariableOp?
$sequential_7/dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_29/Tensordot/axes?
$sequential_7/dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_29/Tensordot/free?
%sequential_7/dense_29/Tensordot/ShapeShape(sequential_7/dense_28/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/Shape?
-sequential_7/dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/GatherV2/axis?
(sequential_7/dense_29/Tensordot/GatherV2GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/free:output:06sequential_7/dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/GatherV2?
/sequential_7/dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_29/Tensordot/GatherV2_1/axis?
*sequential_7/dense_29/Tensordot/GatherV2_1GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/axes:output:08sequential_7/dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_29/Tensordot/GatherV2_1?
%sequential_7/dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_29/Tensordot/Const?
$sequential_7/dense_29/Tensordot/ProdProd1sequential_7/dense_29/Tensordot/GatherV2:output:0.sequential_7/dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_29/Tensordot/Prod?
'sequential_7/dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_29/Tensordot/Const_1?
&sequential_7/dense_29/Tensordot/Prod_1Prod3sequential_7/dense_29/Tensordot/GatherV2_1:output:00sequential_7/dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_29/Tensordot/Prod_1?
+sequential_7/dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_29/Tensordot/concat/axis?
&sequential_7/dense_29/Tensordot/concatConcatV2-sequential_7/dense_29/Tensordot/free:output:0-sequential_7/dense_29/Tensordot/axes:output:04sequential_7/dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_29/Tensordot/concat?
%sequential_7/dense_29/Tensordot/stackPack-sequential_7/dense_29/Tensordot/Prod:output:0/sequential_7/dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/stack?
)sequential_7/dense_29/Tensordot/transpose	Transpose(sequential_7/dense_28/Relu:activations:0/sequential_7/dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2+
)sequential_7/dense_29/Tensordot/transpose?
'sequential_7/dense_29/Tensordot/ReshapeReshape-sequential_7/dense_29/Tensordot/transpose:y:0.sequential_7/dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_29/Tensordot/Reshape?
&sequential_7/dense_29/Tensordot/MatMulMatMul0sequential_7/dense_29/Tensordot/Reshape:output:06sequential_7/dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_7/dense_29/Tensordot/MatMul?
'sequential_7/dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2)
'sequential_7/dense_29/Tensordot/Const_2?
-sequential_7/dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/concat_1/axis?
(sequential_7/dense_29/Tensordot/concat_1ConcatV21sequential_7/dense_29/Tensordot/GatherV2:output:00sequential_7/dense_29/Tensordot/Const_2:output:06sequential_7/dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/concat_1?
sequential_7/dense_29/TensordotReshape0sequential_7/dense_29/Tensordot/MatMul:product:01sequential_7/dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2!
sequential_7/dense_29/Tensordot?
,sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_29/BiasAdd/ReadVariableOp?
sequential_7/dense_29/BiasAddBiasAdd(sequential_7/dense_29/Tensordot:output:04sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
sequential_7/dense_29/BiasAddy
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_29/dropout/Const?
dropout_29/dropout/MulMul&sequential_7/dense_29/BiasAdd:output:0!dropout_29/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2
dropout_29/dropout/Mul?
dropout_29/dropout/ShapeShape&sequential_7/dense_29/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_29/dropout/Shape?
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype021
/dropout_29/dropout/random_uniform/RandomUniform?
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_29/dropout/GreaterEqual/y?
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????2!
dropout_29/dropout/GreaterEqual?
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2
dropout_29/dropout/Cast?
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2
dropout_29/dropout/Mul_1?
add_1AddV2*layer_normalization_14/batchnorm/add_1:z:0dropout_29/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????2
add_1?
5layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_15/moments/mean/reduction_indices?
#layer_normalization_15/moments/meanMean	add_1:z:0>layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_15/moments/mean?
+layer_normalization_15/moments/StopGradientStopGradient,layer_normalization_15/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_15/moments/StopGradient?
0layer_normalization_15/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_15/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_15/moments/SquaredDifference?
9layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_15/moments/variance/reduction_indices?
'layer_normalization_15/moments/varianceMean4layer_normalization_15/moments/SquaredDifference:z:0Blayer_normalization_15/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_15/moments/variance?
&layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_15/batchnorm/add/y?
$layer_normalization_15/batchnorm/addAddV20layer_normalization_15/moments/variance:output:0/layer_normalization_15/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_15/batchnorm/add?
&layer_normalization_15/batchnorm/RsqrtRsqrt(layer_normalization_15/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_15/batchnorm/Rsqrt?
3layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_15/batchnorm/mul/ReadVariableOp?
$layer_normalization_15/batchnorm/mulMul*layer_normalization_15/batchnorm/Rsqrt:y:0;layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/mul?
&layer_normalization_15/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_1?
&layer_normalization_15/batchnorm/mul_2Mul,layer_normalization_15/moments/mean:output:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_2?
/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_15/batchnorm/ReadVariableOp?
$layer_normalization_15/batchnorm/subSub7layer_normalization_15/batchnorm/ReadVariableOp:value:0*layer_normalization_15/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/sub?
&layer_normalization_15/batchnorm/add_1AddV2*layer_normalization_15/batchnorm/mul_1:z:0(layer_normalization_15/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/add_1?
IdentityIdentity*layer_normalization_15/batchnorm/add_1:z:00^layer_normalization_14/batchnorm/ReadVariableOp4^layer_normalization_14/batchnorm/mul/ReadVariableOp0^layer_normalization_15/batchnorm/ReadVariableOp4^layer_normalization_15/batchnorm/mul/ReadVariableOp;^multi_head_attention_7/attention_output/add/ReadVariableOpE^multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_7/key/add/ReadVariableOp8^multi_head_attention_7/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/query/add/ReadVariableOp:^multi_head_attention_7/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/value/add/ReadVariableOp:^multi_head_attention_7/value/einsum/Einsum/ReadVariableOp-^sequential_7/dense_28/BiasAdd/ReadVariableOp/^sequential_7/dense_28/Tensordot/ReadVariableOp-^sequential_7/dense_29/BiasAdd/ReadVariableOp/^sequential_7/dense_29/Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*l
_input_shapes[
Y:???????????::::::::::::::::2b
/layer_normalization_14/batchnorm/ReadVariableOp/layer_normalization_14/batchnorm/ReadVariableOp2j
3layer_normalization_14/batchnorm/mul/ReadVariableOp3layer_normalization_14/batchnorm/mul/ReadVariableOp2b
/layer_normalization_15/batchnorm/ReadVariableOp/layer_normalization_15/batchnorm/ReadVariableOp2j
3layer_normalization_15/batchnorm/mul/ReadVariableOp3layer_normalization_15/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_7/attention_output/add/ReadVariableOp:multi_head_attention_7/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_7/key/add/ReadVariableOp-multi_head_attention_7/key/add/ReadVariableOp2r
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/query/add/ReadVariableOp/multi_head_attention_7/query/add/ReadVariableOp2v
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/value/add/ReadVariableOp/multi_head_attention_7/value/add/ReadVariableOp2v
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2\
,sequential_7/dense_28/BiasAdd/ReadVariableOp,sequential_7/dense_28/BiasAdd/ReadVariableOp2`
.sequential_7/dense_28/Tensordot/ReadVariableOp.sequential_7/dense_28/Tensordot/ReadVariableOp2\
,sequential_7/dense_29/BiasAdd/ReadVariableOp,sequential_7/dense_29/BiasAdd/ReadVariableOp2`
.sequential_7/dense_29/Tensordot/ReadVariableOp.sequential_7/dense_29/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_7_layer_call_fn_646080
dense_28_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_28_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6460692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
-
_output_shapes
:???????????
(
_user_specified_namedense_28_input
? 
?
D__inference_dense_28_layer_call_and_return_conditional_losses_648109

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?3
"__inference__traced_restore_648640
file_prefix$
 assignvariableop_dense_30_kernel$
 assignvariableop_1_dense_30_bias&
"assignvariableop_2_dense_31_kernel$
 assignvariableop_3_dense_31_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rateM
Iassignvariableop_9_token_and_position_embedding_7_embedding_14_embeddingsN
Jassignvariableop_10_token_and_position_embedding_7_embedding_15_embeddingsO
Kassignvariableop_11_transformer_block_7_multi_head_attention_7_query_kernelM
Iassignvariableop_12_transformer_block_7_multi_head_attention_7_query_biasM
Iassignvariableop_13_transformer_block_7_multi_head_attention_7_key_kernelK
Gassignvariableop_14_transformer_block_7_multi_head_attention_7_key_biasO
Kassignvariableop_15_transformer_block_7_multi_head_attention_7_value_kernelM
Iassignvariableop_16_transformer_block_7_multi_head_attention_7_value_biasZ
Vassignvariableop_17_transformer_block_7_multi_head_attention_7_attention_output_kernelX
Tassignvariableop_18_transformer_block_7_multi_head_attention_7_attention_output_bias'
#assignvariableop_19_dense_28_kernel%
!assignvariableop_20_dense_28_bias'
#assignvariableop_21_dense_29_kernel%
!assignvariableop_22_dense_29_biasH
Dassignvariableop_23_transformer_block_7_layer_normalization_14_gammaG
Cassignvariableop_24_transformer_block_7_layer_normalization_14_betaH
Dassignvariableop_25_transformer_block_7_layer_normalization_15_gammaG
Cassignvariableop_26_transformer_block_7_layer_normalization_15_beta
assignvariableop_27_total
assignvariableop_28_count
assignvariableop_29_total_1
assignvariableop_30_count_1.
*assignvariableop_31_adam_dense_30_kernel_m,
(assignvariableop_32_adam_dense_30_bias_m.
*assignvariableop_33_adam_dense_31_kernel_m,
(assignvariableop_34_adam_dense_31_bias_mU
Qassignvariableop_35_adam_token_and_position_embedding_7_embedding_14_embeddings_mU
Qassignvariableop_36_adam_token_and_position_embedding_7_embedding_15_embeddings_mV
Rassignvariableop_37_adam_transformer_block_7_multi_head_attention_7_query_kernel_mT
Passignvariableop_38_adam_transformer_block_7_multi_head_attention_7_query_bias_mT
Passignvariableop_39_adam_transformer_block_7_multi_head_attention_7_key_kernel_mR
Nassignvariableop_40_adam_transformer_block_7_multi_head_attention_7_key_bias_mV
Rassignvariableop_41_adam_transformer_block_7_multi_head_attention_7_value_kernel_mT
Passignvariableop_42_adam_transformer_block_7_multi_head_attention_7_value_bias_ma
]assignvariableop_43_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_m_
[assignvariableop_44_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_m.
*assignvariableop_45_adam_dense_28_kernel_m,
(assignvariableop_46_adam_dense_28_bias_m.
*assignvariableop_47_adam_dense_29_kernel_m,
(assignvariableop_48_adam_dense_29_bias_mO
Kassignvariableop_49_adam_transformer_block_7_layer_normalization_14_gamma_mN
Jassignvariableop_50_adam_transformer_block_7_layer_normalization_14_beta_mO
Kassignvariableop_51_adam_transformer_block_7_layer_normalization_15_gamma_mN
Jassignvariableop_52_adam_transformer_block_7_layer_normalization_15_beta_m.
*assignvariableop_53_adam_dense_30_kernel_v,
(assignvariableop_54_adam_dense_30_bias_v.
*assignvariableop_55_adam_dense_31_kernel_v,
(assignvariableop_56_adam_dense_31_bias_vU
Qassignvariableop_57_adam_token_and_position_embedding_7_embedding_14_embeddings_vU
Qassignvariableop_58_adam_token_and_position_embedding_7_embedding_15_embeddings_vV
Rassignvariableop_59_adam_transformer_block_7_multi_head_attention_7_query_kernel_vT
Passignvariableop_60_adam_transformer_block_7_multi_head_attention_7_query_bias_vT
Passignvariableop_61_adam_transformer_block_7_multi_head_attention_7_key_kernel_vR
Nassignvariableop_62_adam_transformer_block_7_multi_head_attention_7_key_bias_vV
Rassignvariableop_63_adam_transformer_block_7_multi_head_attention_7_value_kernel_vT
Passignvariableop_64_adam_transformer_block_7_multi_head_attention_7_value_bias_va
]assignvariableop_65_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_v_
[assignvariableop_66_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_v.
*assignvariableop_67_adam_dense_28_kernel_v,
(assignvariableop_68_adam_dense_28_bias_v.
*assignvariableop_69_adam_dense_29_kernel_v,
(assignvariableop_70_adam_dense_29_bias_vO
Kassignvariableop_71_adam_transformer_block_7_layer_normalization_14_gamma_vN
Jassignvariableop_72_adam_transformer_block_7_layer_normalization_14_beta_vO
Kassignvariableop_73_adam_transformer_block_7_layer_normalization_15_gamma_vN
Jassignvariableop_74_adam_transformer_block_7_layer_normalization_15_beta_v
identity_76??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_8?AssignVariableOp_9?$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?#
value?#B?#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_30_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_30_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_31_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_31_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpIassignvariableop_9_token_and_position_embedding_7_embedding_14_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpJassignvariableop_10_token_and_position_embedding_7_embedding_15_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_block_7_multi_head_attention_7_query_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpIassignvariableop_12_transformer_block_7_multi_head_attention_7_query_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpIassignvariableop_13_transformer_block_7_multi_head_attention_7_key_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpGassignvariableop_14_transformer_block_7_multi_head_attention_7_key_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpKassignvariableop_15_transformer_block_7_multi_head_attention_7_value_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpIassignvariableop_16_transformer_block_7_multi_head_attention_7_value_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpVassignvariableop_17_transformer_block_7_multi_head_attention_7_attention_output_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpTassignvariableop_18_transformer_block_7_multi_head_attention_7_attention_output_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_28_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp!assignvariableop_20_dense_28_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp#assignvariableop_21_dense_29_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp!assignvariableop_22_dense_29_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpDassignvariableop_23_transformer_block_7_layer_normalization_14_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpCassignvariableop_24_transformer_block_7_layer_normalization_14_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpDassignvariableop_25_transformer_block_7_layer_normalization_15_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpCassignvariableop_26_transformer_block_7_layer_normalization_15_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_30_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_30_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_31_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_31_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpQassignvariableop_35_adam_token_and_position_embedding_7_embedding_14_embeddings_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpQassignvariableop_36_adam_token_and_position_embedding_7_embedding_15_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpRassignvariableop_37_adam_transformer_block_7_multi_head_attention_7_query_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_transformer_block_7_multi_head_attention_7_query_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_transformer_block_7_multi_head_attention_7_key_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpNassignvariableop_40_adam_transformer_block_7_multi_head_attention_7_key_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_block_7_multi_head_attention_7_value_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpPassignvariableop_42_adam_transformer_block_7_multi_head_attention_7_value_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp]assignvariableop_43_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp[assignvariableop_44_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_28_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_28_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_29_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_29_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpKassignvariableop_49_adam_transformer_block_7_layer_normalization_14_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpJassignvariableop_50_adam_transformer_block_7_layer_normalization_14_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpKassignvariableop_51_adam_transformer_block_7_layer_normalization_15_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOpJassignvariableop_52_adam_transformer_block_7_layer_normalization_15_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_30_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_30_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_31_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_31_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOpQassignvariableop_57_adam_token_and_position_embedding_7_embedding_14_embeddings_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOpQassignvariableop_58_adam_token_and_position_embedding_7_embedding_15_embeddings_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOpRassignvariableop_59_adam_transformer_block_7_multi_head_attention_7_query_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOpPassignvariableop_60_adam_transformer_block_7_multi_head_attention_7_query_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOpPassignvariableop_61_adam_transformer_block_7_multi_head_attention_7_key_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOpNassignvariableop_62_adam_transformer_block_7_multi_head_attention_7_key_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOpRassignvariableop_63_adam_transformer_block_7_multi_head_attention_7_value_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_transformer_block_7_multi_head_attention_7_value_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp]assignvariableop_65_adam_transformer_block_7_multi_head_attention_7_attention_output_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp[assignvariableop_66_adam_transformer_block_7_multi_head_attention_7_attention_output_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_28_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_28_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_29_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_29_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOpKassignvariableop_71_adam_transformer_block_7_layer_normalization_14_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOpJassignvariableop_72_adam_transformer_block_7_layer_normalization_14_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOpKassignvariableop_73_adam_transformer_block_7_layer_normalization_15_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOpJassignvariableop_74_adam_transformer_block_7_layer_normalization_15_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_749
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_75?
Identity_76IdentityIdentity_75:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_76"#
identity_76Identity_76:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_646069

inputs
dense_28_646058
dense_28_646060
dense_29_646063
dense_29_646065
identity?? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCallinputsdense_28_646058dense_28_646060*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_6459482"
 dense_28/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_646063dense_29_646065*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_6459942"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
W
;__inference_global_average_pooling1d_6_layer_call_fn_647833

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_6460962
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_model_7_layer_call_fn_647391

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_6467672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_647177

inputsG
Ctoken_and_position_embedding_7_embedding_15_embedding_lookup_646988G
Ctoken_and_position_embedding_7_embedding_14_embedding_lookup_646994Z
Vtransformer_block_7_multi_head_attention_7_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_7_multi_head_attention_7_query_add_readvariableop_resourceX
Ttransformer_block_7_multi_head_attention_7_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_7_multi_head_attention_7_key_add_readvariableop_resourceZ
Vtransformer_block_7_multi_head_attention_7_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_7_multi_head_attention_7_value_add_readvariableop_resourcee
atransformer_block_7_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_7_multi_head_attention_7_attention_output_add_readvariableop_resourceT
Ptransformer_block_7_layer_normalization_14_batchnorm_mul_readvariableop_resourceP
Ltransformer_block_7_layer_normalization_14_batchnorm_readvariableop_resourceO
Ktransformer_block_7_sequential_7_dense_28_tensordot_readvariableop_resourceM
Itransformer_block_7_sequential_7_dense_28_biasadd_readvariableop_resourceO
Ktransformer_block_7_sequential_7_dense_29_tensordot_readvariableop_resourceM
Itransformer_block_7_sequential_7_dense_29_biasadd_readvariableop_resourceT
Ptransformer_block_7_layer_normalization_15_batchnorm_mul_readvariableop_resourceP
Ltransformer_block_7_layer_normalization_15_batchnorm_readvariableop_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource+
'dense_31_matmul_readvariableop_resource,
(dense_31_biasadd_readvariableop_resource
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?<token_and_position_embedding_7/embedding_14/embedding_lookup?<token_and_position_embedding_7/embedding_15/embedding_lookup?Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp?Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp?Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp?Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp?Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp?Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp?Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp?Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp?Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp?Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp?@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp?Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp?
$token_and_position_embedding_7/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_7/Shape?
2token_and_position_embedding_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????24
2token_and_position_embedding_7/strided_slice/stack?
4token_and_position_embedding_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_7/strided_slice/stack_1?
4token_and_position_embedding_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_7/strided_slice/stack_2?
,token_and_position_embedding_7/strided_sliceStridedSlice-token_and_position_embedding_7/Shape:output:0;token_and_position_embedding_7/strided_slice/stack:output:0=token_and_position_embedding_7/strided_slice/stack_1:output:0=token_and_position_embedding_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_7/strided_slice?
*token_and_position_embedding_7/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_7/range/start?
*token_and_position_embedding_7/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_7/range/delta?
$token_and_position_embedding_7/rangeRange3token_and_position_embedding_7/range/start:output:05token_and_position_embedding_7/strided_slice:output:03token_and_position_embedding_7/range/delta:output:0*#
_output_shapes
:?????????2&
$token_and_position_embedding_7/range?
<token_and_position_embedding_7/embedding_15/embedding_lookupResourceGatherCtoken_and_position_embedding_7_embedding_15_embedding_lookup_646988-token_and_position_embedding_7/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_15/embedding_lookup/646988*(
_output_shapes
:??????????*
dtype02>
<token_and_position_embedding_7/embedding_15/embedding_lookup?
Etoken_and_position_embedding_7/embedding_15/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_7/embedding_15/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_15/embedding_lookup/646988*(
_output_shapes
:??????????2G
Etoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity?
Gtoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:??????????2I
Gtoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1?
0token_and_position_embedding_7/embedding_14/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????22
0token_and_position_embedding_7/embedding_14/Cast?
<token_and_position_embedding_7/embedding_14/embedding_lookupResourceGatherCtoken_and_position_embedding_7_embedding_14_embedding_lookup_6469944token_and_position_embedding_7/embedding_14/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_14/embedding_lookup/646994*-
_output_shapes
:???????????*
dtype02>
<token_and_position_embedding_7/embedding_14/embedding_lookup?
Etoken_and_position_embedding_7/embedding_14/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_7/embedding_14/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*V
_classL
JHloc:@token_and_position_embedding_7/embedding_14/embedding_lookup/646994*-
_output_shapes
:???????????2G
Etoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity?
Gtoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2I
Gtoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1?
"token_and_position_embedding_7/addAddV2Ptoken_and_position_embedding_7/embedding_14/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_7/embedding_15/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2$
"token_and_position_embedding_7/add?
Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_7_multi_head_attention_7_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02O
Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?
>transformer_block_7/multi_head_attention_7/query/einsum/EinsumEinsum&token_and_position_embedding_7/add:z:0Utransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2@
>transformer_block_7/multi_head_attention_7/query/einsum/Einsum?
Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOpReadVariableOpLtransformer_block_7_multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype02E
Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp?
4transformer_block_7/multi_head_attention_7/query/addAddV2Gtransformer_block_7/multi_head_attention_7/query/einsum/Einsum:output:0Ktransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????26
4transformer_block_7/multi_head_attention_7/query/add?
Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_7_multi_head_attention_7_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02M
Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?
<transformer_block_7/multi_head_attention_7/key/einsum/EinsumEinsum&token_and_position_embedding_7/add:z:0Stransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2>
<transformer_block_7/multi_head_attention_7/key/einsum/Einsum?
Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOpReadVariableOpJtransformer_block_7_multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype02C
Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp?
2transformer_block_7/multi_head_attention_7/key/addAddV2Etransformer_block_7/multi_head_attention_7/key/einsum/Einsum:output:0Itransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????24
2transformer_block_7/multi_head_attention_7/key/add?
Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_7_multi_head_attention_7_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02O
Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?
>transformer_block_7/multi_head_attention_7/value/einsum/EinsumEinsum&token_and_position_embedding_7/add:z:0Utransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2@
>transformer_block_7/multi_head_attention_7/value/einsum/Einsum?
Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOpReadVariableOpLtransformer_block_7_multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype02E
Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp?
4transformer_block_7/multi_head_attention_7/value/addAddV2Gtransformer_block_7/multi_head_attention_7/value/einsum/Einsum:output:0Ktransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????26
4transformer_block_7/multi_head_attention_7/value/add?
0transformer_block_7/multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??=22
0transformer_block_7/multi_head_attention_7/Mul/y?
.transformer_block_7/multi_head_attention_7/MulMul8transformer_block_7/multi_head_attention_7/query/add:z:09transformer_block_7/multi_head_attention_7/Mul/y:output:0*
T0*1
_output_shapes
:???????????20
.transformer_block_7/multi_head_attention_7/Mul?
8transformer_block_7/multi_head_attention_7/einsum/EinsumEinsum6transformer_block_7/multi_head_attention_7/key/add:z:02transformer_block_7/multi_head_attention_7/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2:
8transformer_block_7/multi_head_attention_7/einsum/Einsum?
:transformer_block_7/multi_head_attention_7/softmax/SoftmaxSoftmaxAtransformer_block_7/multi_head_attention_7/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2<
:transformer_block_7/multi_head_attention_7/softmax/Softmax?
@transformer_block_7/multi_head_attention_7/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2B
@transformer_block_7/multi_head_attention_7/dropout/dropout/Const?
>transformer_block_7/multi_head_attention_7/dropout/dropout/MulMulDtransformer_block_7/multi_head_attention_7/softmax/Softmax:softmax:0Itransformer_block_7/multi_head_attention_7/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:???????????2@
>transformer_block_7/multi_head_attention_7/dropout/dropout/Mul?
@transformer_block_7/multi_head_attention_7/dropout/dropout/ShapeShapeDtransformer_block_7/multi_head_attention_7/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2B
@transformer_block_7/multi_head_attention_7/dropout/dropout/Shape?
Wtransformer_block_7/multi_head_attention_7/dropout/dropout/random_uniform/RandomUniformRandomUniformItransformer_block_7/multi_head_attention_7/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:???????????*
dtype02Y
Wtransformer_block_7/multi_head_attention_7/dropout/dropout/random_uniform/RandomUniform?
Itransformer_block_7/multi_head_attention_7/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Itransformer_block_7/multi_head_attention_7/dropout/dropout/GreaterEqual/y?
Gtransformer_block_7/multi_head_attention_7/dropout/dropout/GreaterEqualGreaterEqual`transformer_block_7/multi_head_attention_7/dropout/dropout/random_uniform/RandomUniform:output:0Rtransformer_block_7/multi_head_attention_7/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:???????????2I
Gtransformer_block_7/multi_head_attention_7/dropout/dropout/GreaterEqual?
?transformer_block_7/multi_head_attention_7/dropout/dropout/CastCastKtransformer_block_7/multi_head_attention_7/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:???????????2A
?transformer_block_7/multi_head_attention_7/dropout/dropout/Cast?
@transformer_block_7/multi_head_attention_7/dropout/dropout/Mul_1MulBtransformer_block_7/multi_head_attention_7/dropout/dropout/Mul:z:0Ctransformer_block_7/multi_head_attention_7/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:???????????2B
@transformer_block_7/multi_head_attention_7/dropout/dropout/Mul_1?
:transformer_block_7/multi_head_attention_7/einsum_1/EinsumEinsumDtransformer_block_7/multi_head_attention_7/dropout/dropout/Mul_1:z:08transformer_block_7/multi_head_attention_7/value/add:z:0*
N*
T0*1
_output_shapes
:???????????*
equationacbe,aecd->abcd2<
:transformer_block_7/multi_head_attention_7/einsum_1/Einsum?
Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_7_multi_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02Z
Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?
Itransformer_block_7/multi_head_attention_7/attention_output/einsum/EinsumEinsumCtransformer_block_7/multi_head_attention_7/einsum_1/Einsum:output:0`transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:???????????*
equationabcd,cde->abe2K
Itransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum?
Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_7_multi_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp?
?transformer_block_7/multi_head_attention_7/attention_output/addAddV2Rtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum:output:0Vtransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2A
?transformer_block_7/multi_head_attention_7/attention_output/add?
,transformer_block_7/dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2.
,transformer_block_7/dropout_28/dropout/Const?
*transformer_block_7/dropout_28/dropout/MulMulCtransformer_block_7/multi_head_attention_7/attention_output/add:z:05transformer_block_7/dropout_28/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2,
*transformer_block_7/dropout_28/dropout/Mul?
,transformer_block_7/dropout_28/dropout/ShapeShapeCtransformer_block_7/multi_head_attention_7/attention_output/add:z:0*
T0*
_output_shapes
:2.
,transformer_block_7/dropout_28/dropout/Shape?
Ctransformer_block_7/dropout_28/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_7/dropout_28/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype02E
Ctransformer_block_7/dropout_28/dropout/random_uniform/RandomUniform?
5transformer_block_7/dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=27
5transformer_block_7/dropout_28/dropout/GreaterEqual/y?
3transformer_block_7/dropout_28/dropout/GreaterEqualGreaterEqualLtransformer_block_7/dropout_28/dropout/random_uniform/RandomUniform:output:0>transformer_block_7/dropout_28/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????25
3transformer_block_7/dropout_28/dropout/GreaterEqual?
+transformer_block_7/dropout_28/dropout/CastCast7transformer_block_7/dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2-
+transformer_block_7/dropout_28/dropout/Cast?
,transformer_block_7/dropout_28/dropout/Mul_1Mul.transformer_block_7/dropout_28/dropout/Mul:z:0/transformer_block_7/dropout_28/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2.
,transformer_block_7/dropout_28/dropout/Mul_1?
transformer_block_7/addAddV2&token_and_position_embedding_7/add:z:00transformer_block_7/dropout_28/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????2
transformer_block_7/add?
Itransformer_block_7/layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2K
Itransformer_block_7/layer_normalization_14/moments/mean/reduction_indices?
7transformer_block_7/layer_normalization_14/moments/meanMeantransformer_block_7/add:z:0Rtransformer_block_7/layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(29
7transformer_block_7/layer_normalization_14/moments/mean?
?transformer_block_7/layer_normalization_14/moments/StopGradientStopGradient@transformer_block_7/layer_normalization_14/moments/mean:output:0*
T0*,
_output_shapes
:??????????2A
?transformer_block_7/layer_normalization_14/moments/StopGradient?
Dtransformer_block_7/layer_normalization_14/moments/SquaredDifferenceSquaredDifferencetransformer_block_7/add:z:0Htransformer_block_7/layer_normalization_14/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????2F
Dtransformer_block_7/layer_normalization_14/moments/SquaredDifference?
Mtransformer_block_7/layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2O
Mtransformer_block_7/layer_normalization_14/moments/variance/reduction_indices?
;transformer_block_7/layer_normalization_14/moments/varianceMeanHtransformer_block_7/layer_normalization_14/moments/SquaredDifference:z:0Vtransformer_block_7/layer_normalization_14/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2=
;transformer_block_7/layer_normalization_14/moments/variance?
:transformer_block_7/layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52<
:transformer_block_7/layer_normalization_14/batchnorm/add/y?
8transformer_block_7/layer_normalization_14/batchnorm/addAddV2Dtransformer_block_7/layer_normalization_14/moments/variance:output:0Ctransformer_block_7/layer_normalization_14/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2:
8transformer_block_7/layer_normalization_14/batchnorm/add?
:transformer_block_7/layer_normalization_14/batchnorm/RsqrtRsqrt<transformer_block_7/layer_normalization_14/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2<
:transformer_block_7/layer_normalization_14/batchnorm/Rsqrt?
Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_7_layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp?
8transformer_block_7/layer_normalization_14/batchnorm/mulMul>transformer_block_7/layer_normalization_14/batchnorm/Rsqrt:y:0Otransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_14/batchnorm/mul?
:transformer_block_7/layer_normalization_14/batchnorm/mul_1Multransformer_block_7/add:z:0<transformer_block_7/layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_14/batchnorm/mul_1?
:transformer_block_7/layer_normalization_14/batchnorm/mul_2Mul@transformer_block_7/layer_normalization_14/moments/mean:output:0<transformer_block_7/layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_14/batchnorm/mul_2?
Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_7_layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp?
8transformer_block_7/layer_normalization_14/batchnorm/subSubKtransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp:value:0>transformer_block_7/layer_normalization_14/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_14/batchnorm/sub?
:transformer_block_7/layer_normalization_14/batchnorm/add_1AddV2>transformer_block_7/layer_normalization_14/batchnorm/mul_1:z:0<transformer_block_7/layer_normalization_14/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_14/batchnorm/add_1?
Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_7_sequential_7_dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02D
Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp?
8transformer_block_7/sequential_7/dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_7/sequential_7/dense_28/Tensordot/axes?
8transformer_block_7/sequential_7/dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_7/sequential_7/dense_28/Tensordot/free?
9transformer_block_7/sequential_7/dense_28/Tensordot/ShapeShape>transformer_block_7/layer_normalization_14/batchnorm/add_1:z:0*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_28/Tensordot/Shape?
Atransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axis?
<transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2GatherV2Btransformer_block_7/sequential_7/dense_28/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_28/Tensordot/free:output:0Jtransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2?
Ctransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axis?
>transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1GatherV2Btransformer_block_7/sequential_7/dense_28/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_28/Tensordot/axes:output:0Ltransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1?
9transformer_block_7/sequential_7/dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_7/sequential_7/dense_28/Tensordot/Const?
8transformer_block_7/sequential_7/dense_28/Tensordot/ProdProdEtransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2:output:0Btransformer_block_7/sequential_7/dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_7/sequential_7/dense_28/Tensordot/Prod?
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_1?
:transformer_block_7/sequential_7/dense_28/Tensordot/Prod_1ProdGtransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2_1:output:0Dtransformer_block_7/sequential_7/dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_7/sequential_7/dense_28/Tensordot/Prod_1?
?transformer_block_7/sequential_7/dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_7/sequential_7/dense_28/Tensordot/concat/axis?
:transformer_block_7/sequential_7/dense_28/Tensordot/concatConcatV2Atransformer_block_7/sequential_7/dense_28/Tensordot/free:output:0Atransformer_block_7/sequential_7/dense_28/Tensordot/axes:output:0Htransformer_block_7/sequential_7/dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_7/sequential_7/dense_28/Tensordot/concat?
9transformer_block_7/sequential_7/dense_28/Tensordot/stackPackAtransformer_block_7/sequential_7/dense_28/Tensordot/Prod:output:0Ctransformer_block_7/sequential_7/dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_28/Tensordot/stack?
=transformer_block_7/sequential_7/dense_28/Tensordot/transpose	Transpose>transformer_block_7/layer_normalization_14/batchnorm/add_1:z:0Ctransformer_block_7/sequential_7/dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2?
=transformer_block_7/sequential_7/dense_28/Tensordot/transpose?
;transformer_block_7/sequential_7/dense_28/Tensordot/ReshapeReshapeAtransformer_block_7/sequential_7/dense_28/Tensordot/transpose:y:0Btransformer_block_7/sequential_7/dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_7/sequential_7/dense_28/Tensordot/Reshape?
:transformer_block_7/sequential_7/dense_28/Tensordot/MatMulMatMulDtransformer_block_7/sequential_7/dense_28/Tensordot/Reshape:output:0Jtransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2<
:transformer_block_7/sequential_7/dense_28/Tensordot/MatMul?
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2=
;transformer_block_7/sequential_7/dense_28/Tensordot/Const_2?
Atransformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axis?
<transformer_block_7/sequential_7/dense_28/Tensordot/concat_1ConcatV2Etransformer_block_7/sequential_7/dense_28/Tensordot/GatherV2:output:0Dtransformer_block_7/sequential_7/dense_28/Tensordot/Const_2:output:0Jtransformer_block_7/sequential_7/dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_28/Tensordot/concat_1?
3transformer_block_7/sequential_7/dense_28/TensordotReshapeDtransformer_block_7/sequential_7/dense_28/Tensordot/MatMul:product:0Etransformer_block_7/sequential_7/dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@25
3transformer_block_7/sequential_7/dense_28/Tensordot?
@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_7_sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp?
1transformer_block_7/sequential_7/dense_28/BiasAddBiasAdd<transformer_block_7/sequential_7/dense_28/Tensordot:output:0Htransformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@23
1transformer_block_7/sequential_7/dense_28/BiasAdd?
.transformer_block_7/sequential_7/dense_28/ReluRelu:transformer_block_7/sequential_7/dense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@20
.transformer_block_7/sequential_7/dense_28/Relu?
Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_7_sequential_7_dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype02D
Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp?
8transformer_block_7/sequential_7/dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_7/sequential_7/dense_29/Tensordot/axes?
8transformer_block_7/sequential_7/dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_7/sequential_7/dense_29/Tensordot/free?
9transformer_block_7/sequential_7/dense_29/Tensordot/ShapeShape<transformer_block_7/sequential_7/dense_28/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_29/Tensordot/Shape?
Atransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axis?
<transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2GatherV2Btransformer_block_7/sequential_7/dense_29/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_29/Tensordot/free:output:0Jtransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2?
Ctransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axis?
>transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1GatherV2Btransformer_block_7/sequential_7/dense_29/Tensordot/Shape:output:0Atransformer_block_7/sequential_7/dense_29/Tensordot/axes:output:0Ltransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1?
9transformer_block_7/sequential_7/dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_7/sequential_7/dense_29/Tensordot/Const?
8transformer_block_7/sequential_7/dense_29/Tensordot/ProdProdEtransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2:output:0Btransformer_block_7/sequential_7/dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_7/sequential_7/dense_29/Tensordot/Prod?
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_1?
:transformer_block_7/sequential_7/dense_29/Tensordot/Prod_1ProdGtransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2_1:output:0Dtransformer_block_7/sequential_7/dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_7/sequential_7/dense_29/Tensordot/Prod_1?
?transformer_block_7/sequential_7/dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_7/sequential_7/dense_29/Tensordot/concat/axis?
:transformer_block_7/sequential_7/dense_29/Tensordot/concatConcatV2Atransformer_block_7/sequential_7/dense_29/Tensordot/free:output:0Atransformer_block_7/sequential_7/dense_29/Tensordot/axes:output:0Htransformer_block_7/sequential_7/dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_7/sequential_7/dense_29/Tensordot/concat?
9transformer_block_7/sequential_7/dense_29/Tensordot/stackPackAtransformer_block_7/sequential_7/dense_29/Tensordot/Prod:output:0Ctransformer_block_7/sequential_7/dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_7/sequential_7/dense_29/Tensordot/stack?
=transformer_block_7/sequential_7/dense_29/Tensordot/transpose	Transpose<transformer_block_7/sequential_7/dense_28/Relu:activations:0Ctransformer_block_7/sequential_7/dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2?
=transformer_block_7/sequential_7/dense_29/Tensordot/transpose?
;transformer_block_7/sequential_7/dense_29/Tensordot/ReshapeReshapeAtransformer_block_7/sequential_7/dense_29/Tensordot/transpose:y:0Btransformer_block_7/sequential_7/dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_7/sequential_7/dense_29/Tensordot/Reshape?
:transformer_block_7/sequential_7/dense_29/Tensordot/MatMulMatMulDtransformer_block_7/sequential_7/dense_29/Tensordot/Reshape:output:0Jtransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2<
:transformer_block_7/sequential_7/dense_29/Tensordot/MatMul?
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2=
;transformer_block_7/sequential_7/dense_29/Tensordot/Const_2?
Atransformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axis?
<transformer_block_7/sequential_7/dense_29/Tensordot/concat_1ConcatV2Etransformer_block_7/sequential_7/dense_29/Tensordot/GatherV2:output:0Dtransformer_block_7/sequential_7/dense_29/Tensordot/Const_2:output:0Jtransformer_block_7/sequential_7/dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_7/sequential_7/dense_29/Tensordot/concat_1?
3transformer_block_7/sequential_7/dense_29/TensordotReshapeDtransformer_block_7/sequential_7/dense_29/Tensordot/MatMul:product:0Etransformer_block_7/sequential_7/dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????25
3transformer_block_7/sequential_7/dense_29/Tensordot?
@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_7_sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp?
1transformer_block_7/sequential_7/dense_29/BiasAddBiasAdd<transformer_block_7/sequential_7/dense_29/Tensordot:output:0Htransformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????23
1transformer_block_7/sequential_7/dense_29/BiasAdd?
,transformer_block_7/dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2.
,transformer_block_7/dropout_29/dropout/Const?
*transformer_block_7/dropout_29/dropout/MulMul:transformer_block_7/sequential_7/dense_29/BiasAdd:output:05transformer_block_7/dropout_29/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2,
*transformer_block_7/dropout_29/dropout/Mul?
,transformer_block_7/dropout_29/dropout/ShapeShape:transformer_block_7/sequential_7/dense_29/BiasAdd:output:0*
T0*
_output_shapes
:2.
,transformer_block_7/dropout_29/dropout/Shape?
Ctransformer_block_7/dropout_29/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_7/dropout_29/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype02E
Ctransformer_block_7/dropout_29/dropout/random_uniform/RandomUniform?
5transformer_block_7/dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=27
5transformer_block_7/dropout_29/dropout/GreaterEqual/y?
3transformer_block_7/dropout_29/dropout/GreaterEqualGreaterEqualLtransformer_block_7/dropout_29/dropout/random_uniform/RandomUniform:output:0>transformer_block_7/dropout_29/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????25
3transformer_block_7/dropout_29/dropout/GreaterEqual?
+transformer_block_7/dropout_29/dropout/CastCast7transformer_block_7/dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2-
+transformer_block_7/dropout_29/dropout/Cast?
,transformer_block_7/dropout_29/dropout/Mul_1Mul.transformer_block_7/dropout_29/dropout/Mul:z:0/transformer_block_7/dropout_29/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2.
,transformer_block_7/dropout_29/dropout/Mul_1?
transformer_block_7/add_1AddV2>transformer_block_7/layer_normalization_14/batchnorm/add_1:z:00transformer_block_7/dropout_29/dropout/Mul_1:z:0*
T0*-
_output_shapes
:???????????2
transformer_block_7/add_1?
Itransformer_block_7/layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2K
Itransformer_block_7/layer_normalization_15/moments/mean/reduction_indices?
7transformer_block_7/layer_normalization_15/moments/meanMeantransformer_block_7/add_1:z:0Rtransformer_block_7/layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(29
7transformer_block_7/layer_normalization_15/moments/mean?
?transformer_block_7/layer_normalization_15/moments/StopGradientStopGradient@transformer_block_7/layer_normalization_15/moments/mean:output:0*
T0*,
_output_shapes
:??????????2A
?transformer_block_7/layer_normalization_15/moments/StopGradient?
Dtransformer_block_7/layer_normalization_15/moments/SquaredDifferenceSquaredDifferencetransformer_block_7/add_1:z:0Htransformer_block_7/layer_normalization_15/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????2F
Dtransformer_block_7/layer_normalization_15/moments/SquaredDifference?
Mtransformer_block_7/layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2O
Mtransformer_block_7/layer_normalization_15/moments/variance/reduction_indices?
;transformer_block_7/layer_normalization_15/moments/varianceMeanHtransformer_block_7/layer_normalization_15/moments/SquaredDifference:z:0Vtransformer_block_7/layer_normalization_15/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2=
;transformer_block_7/layer_normalization_15/moments/variance?
:transformer_block_7/layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52<
:transformer_block_7/layer_normalization_15/batchnorm/add/y?
8transformer_block_7/layer_normalization_15/batchnorm/addAddV2Dtransformer_block_7/layer_normalization_15/moments/variance:output:0Ctransformer_block_7/layer_normalization_15/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2:
8transformer_block_7/layer_normalization_15/batchnorm/add?
:transformer_block_7/layer_normalization_15/batchnorm/RsqrtRsqrt<transformer_block_7/layer_normalization_15/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2<
:transformer_block_7/layer_normalization_15/batchnorm/Rsqrt?
Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_7_layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp?
8transformer_block_7/layer_normalization_15/batchnorm/mulMul>transformer_block_7/layer_normalization_15/batchnorm/Rsqrt:y:0Otransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_15/batchnorm/mul?
:transformer_block_7/layer_normalization_15/batchnorm/mul_1Multransformer_block_7/add_1:z:0<transformer_block_7/layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_15/batchnorm/mul_1?
:transformer_block_7/layer_normalization_15/batchnorm/mul_2Mul@transformer_block_7/layer_normalization_15/moments/mean:output:0<transformer_block_7/layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_15/batchnorm/mul_2?
Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_7_layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp?
8transformer_block_7/layer_normalization_15/batchnorm/subSubKtransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp:value:0>transformer_block_7/layer_normalization_15/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2:
8transformer_block_7/layer_normalization_15/batchnorm/sub?
:transformer_block_7/layer_normalization_15/batchnorm/add_1AddV2>transformer_block_7/layer_normalization_15/batchnorm/mul_1:z:0<transformer_block_7/layer_normalization_15/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2<
:transformer_block_7/layer_normalization_15/batchnorm/add_1?
1global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_6/Mean/reduction_indices?
global_average_pooling1d_6/MeanMean>transformer_block_7/layer_normalization_15/batchnorm/add_1:z:0:global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_6/Meany
dropout_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_30/dropout/Const?
dropout_30/dropout/MulMul(global_average_pooling1d_6/Mean:output:0!dropout_30/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_30/dropout/Mul?
dropout_30/dropout/ShapeShape(global_average_pooling1d_6/Mean:output:0*
T0*
_output_shapes
:2
dropout_30/dropout/Shape?
/dropout_30/dropout/random_uniform/RandomUniformRandomUniform!dropout_30/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_30/dropout/random_uniform/RandomUniform?
!dropout_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_30/dropout/GreaterEqual/y?
dropout_30/dropout/GreaterEqualGreaterEqual8dropout_30/dropout/random_uniform/RandomUniform:output:0*dropout_30/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_30/dropout/GreaterEqual?
dropout_30/dropout/CastCast#dropout_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_30/dropout/Cast?
dropout_30/dropout/Mul_1Muldropout_30/dropout/Mul:z:0dropout_30/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_30/dropout/Mul_1?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMuldropout_30/dropout/Mul_1:z:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_30/Reluy
dropout_31/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_31/dropout/Const?
dropout_31/dropout/MulMuldense_30/Relu:activations:0!dropout_31/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_31/dropout/Mul
dropout_31/dropout/ShapeShapedense_30/Relu:activations:0*
T0*
_output_shapes
:2
dropout_31/dropout/Shape?
/dropout_31/dropout/random_uniform/RandomUniformRandomUniform!dropout_31/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_31/dropout/random_uniform/RandomUniform?
!dropout_31/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_31/dropout/GreaterEqual/y?
dropout_31/dropout/GreaterEqualGreaterEqual8dropout_31/dropout/random_uniform/RandomUniform:output:0*dropout_31/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_31/dropout/GreaterEqual?
dropout_31/dropout/CastCast#dropout_31/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_31/dropout/Cast?
dropout_31/dropout/Mul_1Muldropout_31/dropout/Mul:z:0dropout_31/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_31/dropout/Mul_1?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldropout_31/dropout/Mul_1:z:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAdd|
dense_31/SoftmaxSoftmaxdense_31/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_31/Softmax?
IdentityIdentitydense_31/Softmax:softmax:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp=^token_and_position_embedding_7/embedding_14/embedding_lookup=^token_and_position_embedding_7/embedding_15/embedding_lookupD^transformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpH^transformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpD^transformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpH^transformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpO^transformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpY^transformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_7/multi_head_attention_7/key/add/ReadVariableOpL^transformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpD^transformer_block_7/multi_head_attention_7/query/add/ReadVariableOpN^transformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpD^transformer_block_7/multi_head_attention_7/value/add/ReadVariableOpN^transformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpA^transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOpC^transformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpA^transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOpC^transformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2|
<token_and_position_embedding_7/embedding_14/embedding_lookup<token_and_position_embedding_7/embedding_14/embedding_lookup2|
<token_and_position_embedding_7/embedding_15/embedding_lookup<token_and_position_embedding_7/embedding_15/embedding_lookup2?
Ctransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOpCtransformer_block_7/layer_normalization_14/batchnorm/ReadVariableOp2?
Gtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOpGtransformer_block_7/layer_normalization_14/batchnorm/mul/ReadVariableOp2?
Ctransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOpCtransformer_block_7/layer_normalization_15/batchnorm/ReadVariableOp2?
Gtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOpGtransformer_block_7/layer_normalization_15/batchnorm/mul/ReadVariableOp2?
Ntransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOpNtransformer_block_7/multi_head_attention_7/attention_output/add/ReadVariableOp2?
Xtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_7/multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_block_7/multi_head_attention_7/key/add/ReadVariableOpAtransformer_block_7/multi_head_attention_7/key/add/ReadVariableOp2?
Ktransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOpKtransformer_block_7/multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_7/multi_head_attention_7/query/add/ReadVariableOpCtransformer_block_7/multi_head_attention_7/query/add/ReadVariableOp2?
Mtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOpMtransformer_block_7/multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_7/multi_head_attention_7/value/add/ReadVariableOpCtransformer_block_7/multi_head_attention_7/value/add/ReadVariableOp2?
Mtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOpMtransformer_block_7/multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2?
@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp@transformer_block_7/sequential_7/dense_28/BiasAdd/ReadVariableOp2?
Btransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOpBtransformer_block_7/sequential_7/dense_28/Tensordot/ReadVariableOp2?
@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp@transformer_block_7/sequential_7/dense_29/BiasAdd/ReadVariableOp2?
Btransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOpBtransformer_block_7/sequential_7/dense_29/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_646977
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_6459132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_8
?*
?
C__inference_model_7_layer_call_and_return_conditional_losses_646871

inputs)
%token_and_position_embedding_7_646819)
%token_and_position_embedding_7_646821
transformer_block_7_646824
transformer_block_7_646826
transformer_block_7_646828
transformer_block_7_646830
transformer_block_7_646832
transformer_block_7_646834
transformer_block_7_646836
transformer_block_7_646838
transformer_block_7_646840
transformer_block_7_646842
transformer_block_7_646844
transformer_block_7_646846
transformer_block_7_646848
transformer_block_7_646850
transformer_block_7_646852
transformer_block_7_646854
dense_30_646859
dense_30_646861
dense_31_646865
dense_31_646867
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?6token_and_position_embedding_7/StatefulPartitionedCall?+transformer_block_7/StatefulPartitionedCall?
6token_and_position_embedding_7/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_7_646819%token_and_position_embedding_7_646821*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_64612728
6token_and_position_embedding_7/StatefulPartitionedCall?
+transformer_block_7/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_7/StatefulPartitionedCall:output:0transformer_block_7_646824transformer_block_7_646826transformer_block_7_646828transformer_block_7_646830transformer_block_7_646832transformer_block_7_646834transformer_block_7_646836transformer_block_7_646838transformer_block_7_646840transformer_block_7_646842transformer_block_7_646844transformer_block_7_646846transformer_block_7_646848transformer_block_7_646850transformer_block_7_646852transformer_block_7_646854*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_6464182-
+transformer_block_7/StatefulPartitionedCall?
*global_average_pooling1d_6/PartitionedCallPartitionedCall4transformer_block_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_6465322,
*global_average_pooling1d_6/PartitionedCall?
dropout_30/PartitionedCallPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_6465562
dropout_30/PartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0dense_30_646859dense_30_646861*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6465802"
 dense_30/StatefulPartitionedCall?
dropout_31/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_6466132
dropout_31/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_31/PartitionedCall:output:0dense_31_646865dense_31_646867*
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
GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6466372"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall7^token_and_position_embedding_7/StatefulPartitionedCall,^transformer_block_7/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2p
6token_and_position_embedding_7/StatefulPartitionedCall6token_and_position_embedding_7/StatefulPartitionedCall2Z
+transformer_block_7/StatefulPartitionedCall+transformer_block_7/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_646127
x(
$embedding_15_embedding_lookup_646114(
$embedding_14_embedding_lookup_646120
identity??embedding_14/embedding_lookup?embedding_15/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:?????????2
range?
embedding_15/embedding_lookupResourceGather$embedding_15_embedding_lookup_646114range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_15/embedding_lookup/646114*(
_output_shapes
:??????????*
dtype02
embedding_15/embedding_lookup?
&embedding_15/embedding_lookup/IdentityIdentity&embedding_15/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_15/embedding_lookup/646114*(
_output_shapes
:??????????2(
&embedding_15/embedding_lookup/Identity?
(embedding_15/embedding_lookup/Identity_1Identity/embedding_15/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:??????????2*
(embedding_15/embedding_lookup/Identity_1s
embedding_14/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_14/Cast?
embedding_14/embedding_lookupResourceGather$embedding_14_embedding_lookup_646120embedding_14/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_14/embedding_lookup/646120*-
_output_shapes
:???????????*
dtype02
embedding_14/embedding_lookup?
&embedding_14/embedding_lookup/IdentityIdentity&embedding_14/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_14/embedding_lookup/646120*-
_output_shapes
:???????????2(
&embedding_14/embedding_lookup/Identity?
(embedding_14/embedding_lookup/Identity_1Identity/embedding_14/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2*
(embedding_14/embedding_lookup/Identity_1?
addAddV21embedding_14/embedding_lookup/Identity_1:output:01embedding_15/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2
add?
IdentityIdentityadd:z:0^embedding_14/embedding_lookup^embedding_15/embedding_lookup*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::2>
embedding_14/embedding_lookupembedding_14/embedding_lookup2>
embedding_15/embedding_lookupembedding_15/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
??
?
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_647748

inputsF
Bmulti_head_attention_7_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_query_add_readvariableop_resourceD
@multi_head_attention_7_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_7_key_add_readvariableop_resourceF
Bmulti_head_attention_7_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_7_value_add_readvariableop_resourceQ
Mmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_7_attention_output_add_readvariableop_resource@
<layer_normalization_14_batchnorm_mul_readvariableop_resource<
8layer_normalization_14_batchnorm_readvariableop_resource;
7sequential_7_dense_28_tensordot_readvariableop_resource9
5sequential_7_dense_28_biasadd_readvariableop_resource;
7sequential_7_dense_29_tensordot_readvariableop_resource9
5sequential_7_dense_29_biasadd_readvariableop_resource@
<layer_normalization_15_batchnorm_mul_readvariableop_resource<
8layer_normalization_15_batchnorm_readvariableop_resource
identity??/layer_normalization_14/batchnorm/ReadVariableOp?3layer_normalization_14/batchnorm/mul/ReadVariableOp?/layer_normalization_15/batchnorm/ReadVariableOp?3layer_normalization_15/batchnorm/mul/ReadVariableOp?:multi_head_attention_7/attention_output/add/ReadVariableOp?Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_7/key/add/ReadVariableOp?7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/query/add/ReadVariableOp?9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_7/value/add/ReadVariableOp?9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?,sequential_7/dense_28/BiasAdd/ReadVariableOp?.sequential_7/dense_28/Tensordot/ReadVariableOp?,sequential_7/dense_29/BiasAdd/ReadVariableOp?.sequential_7/dense_29/Tensordot/ReadVariableOp?
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/query/einsum/EinsumEinsuminputsAmulti_head_attention_7/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/query/einsum/Einsum?
/multi_head_attention_7/query/add/ReadVariableOpReadVariableOp8multi_head_attention_7_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/query/add/ReadVariableOp?
 multi_head_attention_7/query/addAddV23multi_head_attention_7/query/einsum/Einsum:output:07multi_head_attention_7/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/query/add?
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_7_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype029
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_7/key/einsum/EinsumEinsuminputs?multi_head_attention_7/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2*
(multi_head_attention_7/key/einsum/Einsum?
-multi_head_attention_7/key/add/ReadVariableOpReadVariableOp6multi_head_attention_7_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-multi_head_attention_7/key/add/ReadVariableOp?
multi_head_attention_7/key/addAddV21multi_head_attention_7/key/einsum/Einsum:output:05multi_head_attention_7/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2 
multi_head_attention_7/key/add?
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_7_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02;
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_7/value/einsum/EinsumEinsuminputsAmulti_head_attention_7/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:???????????*
equationabc,cde->abde2,
*multi_head_attention_7/value/einsum/Einsum?
/multi_head_attention_7/value/add/ReadVariableOpReadVariableOp8multi_head_attention_7_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype021
/multi_head_attention_7/value/add/ReadVariableOp?
 multi_head_attention_7/value/addAddV23multi_head_attention_7/value/einsum/Einsum:output:07multi_head_attention_7/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 multi_head_attention_7/value/add?
multi_head_attention_7/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??=2
multi_head_attention_7/Mul/y?
multi_head_attention_7/MulMul$multi_head_attention_7/query/add:z:0%multi_head_attention_7/Mul/y:output:0*
T0*1
_output_shapes
:???????????2
multi_head_attention_7/Mul?
$multi_head_attention_7/einsum/EinsumEinsum"multi_head_attention_7/key/add:z:0multi_head_attention_7/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_7/einsum/Einsum?
&multi_head_attention_7/softmax/SoftmaxSoftmax-multi_head_attention_7/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_7/softmax/Softmax?
'multi_head_attention_7/dropout/IdentityIdentity0multi_head_attention_7/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2)
'multi_head_attention_7/dropout/Identity?
&multi_head_attention_7/einsum_1/EinsumEinsum0multi_head_attention_7/dropout/Identity:output:0$multi_head_attention_7/value/add:z:0*
N*
T0*1
_output_shapes
:???????????*
equationacbe,aecd->abcd2(
&multi_head_attention_7/einsum_1/Einsum?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_7_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype02F
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_7/attention_output/einsum/EinsumEinsum/multi_head_attention_7/einsum_1/Einsum:output:0Lmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:???????????*
equationabcd,cde->abe27
5multi_head_attention_7/attention_output/einsum/Einsum?
:multi_head_attention_7/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_7_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:multi_head_attention_7/attention_output/add/ReadVariableOp?
+multi_head_attention_7/attention_output/addAddV2>multi_head_attention_7/attention_output/einsum/Einsum:output:0Bmulti_head_attention_7/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2-
+multi_head_attention_7/attention_output/add?
dropout_28/IdentityIdentity/multi_head_attention_7/attention_output/add:z:0*
T0*-
_output_shapes
:???????????2
dropout_28/Identityq
addAddV2inputsdropout_28/Identity:output:0*
T0*-
_output_shapes
:???????????2
add?
5layer_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_14/moments/mean/reduction_indices?
#layer_normalization_14/moments/meanMeanadd:z:0>layer_normalization_14/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_14/moments/mean?
+layer_normalization_14/moments/StopGradientStopGradient,layer_normalization_14/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_14/moments/StopGradient?
0layer_normalization_14/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_14/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_14/moments/SquaredDifference?
9layer_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_14/moments/variance/reduction_indices?
'layer_normalization_14/moments/varianceMean4layer_normalization_14/moments/SquaredDifference:z:0Blayer_normalization_14/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_14/moments/variance?
&layer_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_14/batchnorm/add/y?
$layer_normalization_14/batchnorm/addAddV20layer_normalization_14/moments/variance:output:0/layer_normalization_14/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_14/batchnorm/add?
&layer_normalization_14/batchnorm/RsqrtRsqrt(layer_normalization_14/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_14/batchnorm/Rsqrt?
3layer_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_14/batchnorm/mul/ReadVariableOp?
$layer_normalization_14/batchnorm/mulMul*layer_normalization_14/batchnorm/Rsqrt:y:0;layer_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/mul?
&layer_normalization_14/batchnorm/mul_1Muladd:z:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_1?
&layer_normalization_14/batchnorm/mul_2Mul,layer_normalization_14/moments/mean:output:0(layer_normalization_14/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/mul_2?
/layer_normalization_14/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_14_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_14/batchnorm/ReadVariableOp?
$layer_normalization_14/batchnorm/subSub7layer_normalization_14/batchnorm/ReadVariableOp:value:0*layer_normalization_14/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_14/batchnorm/sub?
&layer_normalization_14/batchnorm/add_1AddV2*layer_normalization_14/batchnorm/mul_1:z:0(layer_normalization_14/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_14/batchnorm/add_1?
.sequential_7/dense_28/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_28_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_7/dense_28/Tensordot/ReadVariableOp?
$sequential_7/dense_28/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_28/Tensordot/axes?
$sequential_7/dense_28/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_28/Tensordot/free?
%sequential_7/dense_28/Tensordot/ShapeShape*layer_normalization_14/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/Shape?
-sequential_7/dense_28/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/GatherV2/axis?
(sequential_7/dense_28/Tensordot/GatherV2GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/free:output:06sequential_7/dense_28/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/GatherV2?
/sequential_7/dense_28/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_28/Tensordot/GatherV2_1/axis?
*sequential_7/dense_28/Tensordot/GatherV2_1GatherV2.sequential_7/dense_28/Tensordot/Shape:output:0-sequential_7/dense_28/Tensordot/axes:output:08sequential_7/dense_28/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_28/Tensordot/GatherV2_1?
%sequential_7/dense_28/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_28/Tensordot/Const?
$sequential_7/dense_28/Tensordot/ProdProd1sequential_7/dense_28/Tensordot/GatherV2:output:0.sequential_7/dense_28/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_28/Tensordot/Prod?
'sequential_7/dense_28/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_28/Tensordot/Const_1?
&sequential_7/dense_28/Tensordot/Prod_1Prod3sequential_7/dense_28/Tensordot/GatherV2_1:output:00sequential_7/dense_28/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_28/Tensordot/Prod_1?
+sequential_7/dense_28/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_28/Tensordot/concat/axis?
&sequential_7/dense_28/Tensordot/concatConcatV2-sequential_7/dense_28/Tensordot/free:output:0-sequential_7/dense_28/Tensordot/axes:output:04sequential_7/dense_28/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_28/Tensordot/concat?
%sequential_7/dense_28/Tensordot/stackPack-sequential_7/dense_28/Tensordot/Prod:output:0/sequential_7/dense_28/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_28/Tensordot/stack?
)sequential_7/dense_28/Tensordot/transpose	Transpose*layer_normalization_14/batchnorm/add_1:z:0/sequential_7/dense_28/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2+
)sequential_7/dense_28/Tensordot/transpose?
'sequential_7/dense_28/Tensordot/ReshapeReshape-sequential_7/dense_28/Tensordot/transpose:y:0.sequential_7/dense_28/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_28/Tensordot/Reshape?
&sequential_7/dense_28/Tensordot/MatMulMatMul0sequential_7/dense_28/Tensordot/Reshape:output:06sequential_7/dense_28/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_7/dense_28/Tensordot/MatMul?
'sequential_7/dense_28/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_7/dense_28/Tensordot/Const_2?
-sequential_7/dense_28/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_28/Tensordot/concat_1/axis?
(sequential_7/dense_28/Tensordot/concat_1ConcatV21sequential_7/dense_28/Tensordot/GatherV2:output:00sequential_7/dense_28/Tensordot/Const_2:output:06sequential_7/dense_28/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_28/Tensordot/concat_1?
sequential_7/dense_28/TensordotReshape0sequential_7/dense_28/Tensordot/MatMul:product:01sequential_7/dense_28/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@2!
sequential_7/dense_28/Tensordot?
,sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_7/dense_28/BiasAdd/ReadVariableOp?
sequential_7/dense_28/BiasAddBiasAdd(sequential_7/dense_28/Tensordot:output:04sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/BiasAdd?
sequential_7/dense_28/ReluRelu&sequential_7/dense_28/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
sequential_7/dense_28/Relu?
.sequential_7/dense_29/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_29_tensordot_readvariableop_resource*
_output_shapes
:	@?*
dtype020
.sequential_7/dense_29/Tensordot/ReadVariableOp?
$sequential_7/dense_29/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_7/dense_29/Tensordot/axes?
$sequential_7/dense_29/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_7/dense_29/Tensordot/free?
%sequential_7/dense_29/Tensordot/ShapeShape(sequential_7/dense_28/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/Shape?
-sequential_7/dense_29/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/GatherV2/axis?
(sequential_7/dense_29/Tensordot/GatherV2GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/free:output:06sequential_7/dense_29/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/GatherV2?
/sequential_7/dense_29/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_7/dense_29/Tensordot/GatherV2_1/axis?
*sequential_7/dense_29/Tensordot/GatherV2_1GatherV2.sequential_7/dense_29/Tensordot/Shape:output:0-sequential_7/dense_29/Tensordot/axes:output:08sequential_7/dense_29/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_7/dense_29/Tensordot/GatherV2_1?
%sequential_7/dense_29/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_7/dense_29/Tensordot/Const?
$sequential_7/dense_29/Tensordot/ProdProd1sequential_7/dense_29/Tensordot/GatherV2:output:0.sequential_7/dense_29/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_7/dense_29/Tensordot/Prod?
'sequential_7/dense_29/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_7/dense_29/Tensordot/Const_1?
&sequential_7/dense_29/Tensordot/Prod_1Prod3sequential_7/dense_29/Tensordot/GatherV2_1:output:00sequential_7/dense_29/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_7/dense_29/Tensordot/Prod_1?
+sequential_7/dense_29/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_7/dense_29/Tensordot/concat/axis?
&sequential_7/dense_29/Tensordot/concatConcatV2-sequential_7/dense_29/Tensordot/free:output:0-sequential_7/dense_29/Tensordot/axes:output:04sequential_7/dense_29/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_7/dense_29/Tensordot/concat?
%sequential_7/dense_29/Tensordot/stackPack-sequential_7/dense_29/Tensordot/Prod:output:0/sequential_7/dense_29/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/dense_29/Tensordot/stack?
)sequential_7/dense_29/Tensordot/transpose	Transpose(sequential_7/dense_28/Relu:activations:0/sequential_7/dense_29/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@2+
)sequential_7/dense_29/Tensordot/transpose?
'sequential_7/dense_29/Tensordot/ReshapeReshape-sequential_7/dense_29/Tensordot/transpose:y:0.sequential_7/dense_29/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_7/dense_29/Tensordot/Reshape?
&sequential_7/dense_29/Tensordot/MatMulMatMul0sequential_7/dense_29/Tensordot/Reshape:output:06sequential_7/dense_29/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_7/dense_29/Tensordot/MatMul?
'sequential_7/dense_29/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2)
'sequential_7/dense_29/Tensordot/Const_2?
-sequential_7/dense_29/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/dense_29/Tensordot/concat_1/axis?
(sequential_7/dense_29/Tensordot/concat_1ConcatV21sequential_7/dense_29/Tensordot/GatherV2:output:00sequential_7/dense_29/Tensordot/Const_2:output:06sequential_7/dense_29/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_7/dense_29/Tensordot/concat_1?
sequential_7/dense_29/TensordotReshape0sequential_7/dense_29/Tensordot/MatMul:product:01sequential_7/dense_29/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2!
sequential_7/dense_29/Tensordot?
,sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_29/BiasAdd/ReadVariableOp?
sequential_7/dense_29/BiasAddBiasAdd(sequential_7/dense_29/Tensordot:output:04sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
sequential_7/dense_29/BiasAdd?
dropout_29/IdentityIdentity&sequential_7/dense_29/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dropout_29/Identity?
add_1AddV2*layer_normalization_14/batchnorm/add_1:z:0dropout_29/Identity:output:0*
T0*-
_output_shapes
:???????????2
add_1?
5layer_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:27
5layer_normalization_15/moments/mean/reduction_indices?
#layer_normalization_15/moments/meanMean	add_1:z:0>layer_normalization_15/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2%
#layer_normalization_15/moments/mean?
+layer_normalization_15/moments/StopGradientStopGradient,layer_normalization_15/moments/mean:output:0*
T0*,
_output_shapes
:??????????2-
+layer_normalization_15/moments/StopGradient?
0layer_normalization_15/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_15/moments/StopGradient:output:0*
T0*-
_output_shapes
:???????????22
0layer_normalization_15/moments/SquaredDifference?
9layer_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2;
9layer_normalization_15/moments/variance/reduction_indices?
'layer_normalization_15/moments/varianceMean4layer_normalization_15/moments/SquaredDifference:z:0Blayer_normalization_15/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2)
'layer_normalization_15/moments/variance?
&layer_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&layer_normalization_15/batchnorm/add/y?
$layer_normalization_15/batchnorm/addAddV20layer_normalization_15/moments/variance:output:0/layer_normalization_15/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2&
$layer_normalization_15/batchnorm/add?
&layer_normalization_15/batchnorm/RsqrtRsqrt(layer_normalization_15/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2(
&layer_normalization_15/batchnorm/Rsqrt?
3layer_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3layer_normalization_15/batchnorm/mul/ReadVariableOp?
$layer_normalization_15/batchnorm/mulMul*layer_normalization_15/batchnorm/Rsqrt:y:0;layer_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/mul?
&layer_normalization_15/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_1?
&layer_normalization_15/batchnorm/mul_2Mul,layer_normalization_15/moments/mean:output:0(layer_normalization_15/batchnorm/mul:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/mul_2?
/layer_normalization_15/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/layer_normalization_15/batchnorm/ReadVariableOp?
$layer_normalization_15/batchnorm/subSub7layer_normalization_15/batchnorm/ReadVariableOp:value:0*layer_normalization_15/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:???????????2&
$layer_normalization_15/batchnorm/sub?
&layer_normalization_15/batchnorm/add_1AddV2*layer_normalization_15/batchnorm/mul_1:z:0(layer_normalization_15/batchnorm/sub:z:0*
T0*-
_output_shapes
:???????????2(
&layer_normalization_15/batchnorm/add_1?
IdentityIdentity*layer_normalization_15/batchnorm/add_1:z:00^layer_normalization_14/batchnorm/ReadVariableOp4^layer_normalization_14/batchnorm/mul/ReadVariableOp0^layer_normalization_15/batchnorm/ReadVariableOp4^layer_normalization_15/batchnorm/mul/ReadVariableOp;^multi_head_attention_7/attention_output/add/ReadVariableOpE^multi_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_7/key/add/ReadVariableOp8^multi_head_attention_7/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/query/add/ReadVariableOp:^multi_head_attention_7/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_7/value/add/ReadVariableOp:^multi_head_attention_7/value/einsum/Einsum/ReadVariableOp-^sequential_7/dense_28/BiasAdd/ReadVariableOp/^sequential_7/dense_28/Tensordot/ReadVariableOp-^sequential_7/dense_29/BiasAdd/ReadVariableOp/^sequential_7/dense_29/Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*l
_input_shapes[
Y:???????????::::::::::::::::2b
/layer_normalization_14/batchnorm/ReadVariableOp/layer_normalization_14/batchnorm/ReadVariableOp2j
3layer_normalization_14/batchnorm/mul/ReadVariableOp3layer_normalization_14/batchnorm/mul/ReadVariableOp2b
/layer_normalization_15/batchnorm/ReadVariableOp/layer_normalization_15/batchnorm/ReadVariableOp2j
3layer_normalization_15/batchnorm/mul/ReadVariableOp3layer_normalization_15/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_7/attention_output/add/ReadVariableOp:multi_head_attention_7/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_7/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_7/key/add/ReadVariableOp-multi_head_attention_7/key/add/ReadVariableOp2r
7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp7multi_head_attention_7/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/query/add/ReadVariableOp/multi_head_attention_7/query/add/ReadVariableOp2v
9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp9multi_head_attention_7/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_7/value/add/ReadVariableOp/multi_head_attention_7/value/add/ReadVariableOp2v
9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp9multi_head_attention_7/value/einsum/Einsum/ReadVariableOp2\
,sequential_7/dense_28/BiasAdd/ReadVariableOp,sequential_7/dense_28/BiasAdd/ReadVariableOp2`
.sequential_7/dense_28/Tensordot/ReadVariableOp.sequential_7/dense_28/Tensordot/ReadVariableOp2\
,sequential_7/dense_29/BiasAdd/ReadVariableOp,sequential_7/dense_29/BiasAdd/ReadVariableOp2`
.sequential_7/dense_29/Tensordot/ReadVariableOp.sequential_7/dense_29/Tensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_30_layer_call_and_return_conditional_losses_647856

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_30_layer_call_fn_647871

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_6465562
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_31_layer_call_and_return_conditional_losses_647903

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
C__inference_model_7_layer_call_and_return_conditional_losses_646709
input_8)
%token_and_position_embedding_7_646657)
%token_and_position_embedding_7_646659
transformer_block_7_646662
transformer_block_7_646664
transformer_block_7_646666
transformer_block_7_646668
transformer_block_7_646670
transformer_block_7_646672
transformer_block_7_646674
transformer_block_7_646676
transformer_block_7_646678
transformer_block_7_646680
transformer_block_7_646682
transformer_block_7_646684
transformer_block_7_646686
transformer_block_7_646688
transformer_block_7_646690
transformer_block_7_646692
dense_30_646697
dense_30_646699
dense_31_646703
dense_31_646705
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?6token_and_position_embedding_7/StatefulPartitionedCall?+transformer_block_7/StatefulPartitionedCall?
6token_and_position_embedding_7/StatefulPartitionedCallStatefulPartitionedCallinput_8%token_and_position_embedding_7_646657%token_and_position_embedding_7_646659*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_64612728
6token_and_position_embedding_7/StatefulPartitionedCall?
+transformer_block_7/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_7/StatefulPartitionedCall:output:0transformer_block_7_646662transformer_block_7_646664transformer_block_7_646666transformer_block_7_646668transformer_block_7_646670transformer_block_7_646672transformer_block_7_646674transformer_block_7_646676transformer_block_7_646678transformer_block_7_646680transformer_block_7_646682transformer_block_7_646684transformer_block_7_646686transformer_block_7_646688transformer_block_7_646690transformer_block_7_646692*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_6464182-
+transformer_block_7/StatefulPartitionedCall?
*global_average_pooling1d_6/PartitionedCallPartitionedCall4transformer_block_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_6465322,
*global_average_pooling1d_6/PartitionedCall?
dropout_30/PartitionedCallPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_6465562
dropout_30/PartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0dense_30_646697dense_30_646699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6465802"
 dense_30/StatefulPartitionedCall?
dropout_31/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_6466132
dropout_31/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_31/PartitionedCall:output:0dense_31_646703dense_31_646705*
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
GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6466372"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall7^token_and_position_embedding_7/StatefulPartitionedCall,^transformer_block_7/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2p
6token_and_position_embedding_7/StatefulPartitionedCall6token_and_position_embedding_7/StatefulPartitionedCall2Z
+transformer_block_7/StatefulPartitionedCall+transformer_block_7/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_8
?
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_646556

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
?__inference_token_and_position_embedding_7_layer_call_fn_647473
x
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *c
f^R\
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_6461272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:??????????

_user_specified_namex
?
~
)__inference_dense_28_layer_call_fn_648118

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_6459482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_31_layer_call_and_return_conditional_losses_647929

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_model_7_layer_call_fn_647440

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_6468712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_7_layer_call_fn_648078

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6460692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_30_layer_call_and_return_conditional_losses_646551

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_29_layer_call_fn_648157

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_6459942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_30_layer_call_and_return_conditional_losses_647882

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_81
serving_default_input_8:0??????????<
dense_310
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
regularization_losses
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?
_tf_keras_network?{"class_name": "Functional", "name": "model_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "TokenAndPositionEmbedding", "config": {"layer was saved without config": true}, "name": "token_and_position_embedding_7", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "TransformerBlock", "config": {"layer was saved without config": true}, "name": "transformer_block_7", "inbound_nodes": [[["token_and_position_embedding_7", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling1d_6", "inbound_nodes": [[["transformer_block_7", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_30", "inbound_nodes": [[["global_average_pooling1d_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_30", "inbound_nodes": [[["dropout_30", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_31", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_31", "inbound_nodes": [[["dense_30", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_31", "inbound_nodes": [[["dropout_31", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["dense_31", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 200]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_8", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}}
?
	token_emb
pos_emb
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "TokenAndPositionEmbedding", "name": "token_and_position_embedding_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "TransformerBlock", "name": "transformer_block_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
	variables
 regularization_losses
!trainable_variables
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling1D", "name": "global_average_pooling1d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling1d_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#	variables
$regularization_losses
%trainable_variables
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

'kernel
(bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
-	variables
.regularization_losses
/trainable_variables
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_31", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_31", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?"
	optimizer
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
?
Nlayer_regularization_losses
Onon_trainable_variables

Players

	variables
regularization_losses
Qmetrics
Rlayer_metrics
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
<
embeddings
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_14", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 20001, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?
=
embeddings
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_15", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 200, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
[layer_regularization_losses

\layers
]non_trainable_variables
	variables
regularization_losses
^metrics
_layer_metrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
f	variables
gregularization_losses
htrainable_variables
i	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MultiHeadAttention", "name": "multi_head_attention_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multi_head_attention_7", "trainable": true, "dtype": "float32", "num_heads": 2, "key_dim": 128, "value_dim": 128, "dropout": 0.0, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}
?
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_28_input"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_28_input"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
?
paxis
	Jgamma
Kbeta
q	variables
rregularization_losses
strainable_variables
t	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "layer_normalization_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_14", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 128]}}
?
uaxis
	Lgamma
Mbeta
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "layer_normalization_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_15", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 128]}}
?
z	variables
{regularization_losses
|trainable_variables
}	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
~	variables
regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
	variables
regularization_losses
?metrics
?layer_metrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
	variables
 regularization_losses
?metrics
?layer_metrics
!trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
#	variables
$regularization_losses
?metrics
?layer_metrics
%trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_30/kernel
:2dense_30/bias
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
)	variables
*regularization_losses
?metrics
?layer_metrics
+trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
-	variables
.regularization_losses
?metrics
?layer_metrics
/trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_31/kernel
:2dense_31/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
3	variables
4regularization_losses
?metrics
?layer_metrics
5trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
K:I???26token_and_position_embedding_7/embedding_14/embeddings
J:H
??26token_and_position_embedding_7/embedding_15/embeddings
O:M??27transformer_block_7/multi_head_attention_7/query/kernel
H:F	?25transformer_block_7/multi_head_attention_7/query/bias
M:K??25transformer_block_7/multi_head_attention_7/key/kernel
F:D	?23transformer_block_7/multi_head_attention_7/key/bias
O:M??27transformer_block_7/multi_head_attention_7/value/kernel
H:F	?25transformer_block_7/multi_head_attention_7/value/bias
Z:X??2Btransformer_block_7/multi_head_attention_7/attention_output/kernel
O:M?2@transformer_block_7/multi_head_attention_7/attention_output/bias
": 	?@2dense_28/kernel
:@2dense_28/bias
": 	@?2dense_29/kernel
:?2dense_29/bias
?:=?20transformer_block_7/layer_normalization_14/gamma
>:<?2/transformer_block_7/layer_normalization_14/beta
?:=?20transformer_block_7/layer_normalization_15/gamma
>:<?2/transformer_block_7/layer_normalization_15/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
<0"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
S	variables
Tregularization_losses
?metrics
?layer_metrics
Utrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
W	variables
Xregularization_losses
?metrics
?layer_metrics
Ytrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 128], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 128]}}
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 128], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 128]}}
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 128], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 128]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Softmax", "name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [3]}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.0, "noise_shape": null, "seed": null}}
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 128], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 2, 128]}}
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
f	variables
gregularization_losses
?metrics
?layer_metrics
htrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Fkernel
Gbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 128]}}
?

Hkernel
Ibias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 64]}}
<
F0
G1
H2
I3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?layers
l	variables
mregularization_losses
?metrics
?layer_metrics
ntrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
q	variables
rregularization_losses
?metrics
?layer_metrics
strainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
v	variables
wregularization_losses
?metrics
?layer_metrics
xtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
z	variables
{regularization_losses
?metrics
?layer_metrics
|trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
~	variables
regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
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
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
`0
a1
b2
c3
d4
e5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?	variables
?regularization_losses
?metrics
?layer_metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
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
':%	?2Adam/dense_30/kernel/m
 :2Adam/dense_30/bias/m
&:$2Adam/dense_31/kernel/m
 :2Adam/dense_31/bias/m
P:N???2=Adam/token_and_position_embedding_7/embedding_14/embeddings/m
O:M
??2=Adam/token_and_position_embedding_7/embedding_15/embeddings/m
T:R??2>Adam/transformer_block_7/multi_head_attention_7/query/kernel/m
M:K	?2<Adam/transformer_block_7/multi_head_attention_7/query/bias/m
R:P??2<Adam/transformer_block_7/multi_head_attention_7/key/kernel/m
K:I	?2:Adam/transformer_block_7/multi_head_attention_7/key/bias/m
T:R??2>Adam/transformer_block_7/multi_head_attention_7/value/kernel/m
M:K	?2<Adam/transformer_block_7/multi_head_attention_7/value/bias/m
_:]??2IAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/m
T:R?2GAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/m
':%	?@2Adam/dense_28/kernel/m
 :@2Adam/dense_28/bias/m
':%	@?2Adam/dense_29/kernel/m
!:?2Adam/dense_29/bias/m
D:B?27Adam/transformer_block_7/layer_normalization_14/gamma/m
C:A?26Adam/transformer_block_7/layer_normalization_14/beta/m
D:B?27Adam/transformer_block_7/layer_normalization_15/gamma/m
C:A?26Adam/transformer_block_7/layer_normalization_15/beta/m
':%	?2Adam/dense_30/kernel/v
 :2Adam/dense_30/bias/v
&:$2Adam/dense_31/kernel/v
 :2Adam/dense_31/bias/v
P:N???2=Adam/token_and_position_embedding_7/embedding_14/embeddings/v
O:M
??2=Adam/token_and_position_embedding_7/embedding_15/embeddings/v
T:R??2>Adam/transformer_block_7/multi_head_attention_7/query/kernel/v
M:K	?2<Adam/transformer_block_7/multi_head_attention_7/query/bias/v
R:P??2<Adam/transformer_block_7/multi_head_attention_7/key/kernel/v
K:I	?2:Adam/transformer_block_7/multi_head_attention_7/key/bias/v
T:R??2>Adam/transformer_block_7/multi_head_attention_7/value/kernel/v
M:K	?2<Adam/transformer_block_7/multi_head_attention_7/value/bias/v
_:]??2IAdam/transformer_block_7/multi_head_attention_7/attention_output/kernel/v
T:R?2GAdam/transformer_block_7/multi_head_attention_7/attention_output/bias/v
':%	?@2Adam/dense_28/kernel/v
 :@2Adam/dense_28/bias/v
':%	@?2Adam/dense_29/kernel/v
!:?2Adam/dense_29/bias/v
D:B?27Adam/transformer_block_7/layer_normalization_14/gamma/v
C:A?26Adam/transformer_block_7/layer_normalization_14/beta/v
D:B?27Adam/transformer_block_7/layer_normalization_15/gamma/v
C:A?26Adam/transformer_block_7/layer_normalization_15/beta/v
?2?
C__inference_model_7_layer_call_and_return_conditional_losses_647342
C__inference_model_7_layer_call_and_return_conditional_losses_647177
C__inference_model_7_layer_call_and_return_conditional_losses_646654
C__inference_model_7_layer_call_and_return_conditional_losses_646709?
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
!__inference__wrapped_model_645913?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *'?$
"?
input_8??????????
?2?
(__inference_model_7_layer_call_fn_647391
(__inference_model_7_layer_call_fn_646918
(__inference_model_7_layer_call_fn_646814
(__inference_model_7_layer_call_fn_647440?
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
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_647464?
???
FullArgSpec
args?
jself
jx
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
?__inference_token_and_position_embedding_7_layer_call_fn_647473?
???
FullArgSpec
args?
jself
jx
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
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_647748
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_647621?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_transformer_block_7_layer_call_fn_647822
4__inference_transformer_block_7_layer_call_fn_647785?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_647839
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_647828?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_global_average_pooling1d_6_layer_call_fn_647844
;__inference_global_average_pooling1d_6_layer_call_fn_647833?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_30_layer_call_and_return_conditional_losses_647861
F__inference_dropout_30_layer_call_and_return_conditional_losses_647856?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_30_layer_call_fn_647871
+__inference_dropout_30_layer_call_fn_647866?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_30_layer_call_and_return_conditional_losses_647882?
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
)__inference_dense_30_layer_call_fn_647891?
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
F__inference_dropout_31_layer_call_and_return_conditional_losses_647903
F__inference_dropout_31_layer_call_and_return_conditional_losses_647908?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_31_layer_call_fn_647913
+__inference_dropout_31_layer_call_fn_647918?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_31_layer_call_and_return_conditional_losses_647929?
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
)__inference_dense_31_layer_call_fn_647938?
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
$__inference_signature_wrapper_646977input_8"?
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
 
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_7_layer_call_and_return_conditional_losses_647995
H__inference_sequential_7_layer_call_and_return_conditional_losses_648052
H__inference_sequential_7_layer_call_and_return_conditional_losses_646025
H__inference_sequential_7_layer_call_and_return_conditional_losses_646011?
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
?2?
-__inference_sequential_7_layer_call_fn_646053
-__inference_sequential_7_layer_call_fn_648078
-__inference_sequential_7_layer_call_fn_646080
-__inference_sequential_7_layer_call_fn_648065?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
D__inference_dense_28_layer_call_and_return_conditional_losses_648109?
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
)__inference_dense_28_layer_call_fn_648118?
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
D__inference_dense_29_layer_call_and_return_conditional_losses_648148?
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
)__inference_dense_29_layer_call_fn_648157?
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
 ?
!__inference__wrapped_model_645913?=<>?@ABCDEJKFGHILM'(121?.
'?$
"?
input_8??????????
? "3?0
.
dense_31"?
dense_31??????????
D__inference_dense_28_layer_call_and_return_conditional_losses_648109gFG5?2
+?(
&?#
inputs???????????
? "*?'
 ?
0??????????@
? ?
)__inference_dense_28_layer_call_fn_648118ZFG5?2
+?(
&?#
inputs???????????
? "???????????@?
D__inference_dense_29_layer_call_and_return_conditional_losses_648148gHI4?1
*?'
%?"
inputs??????????@
? "+?(
!?
0???????????
? ?
)__inference_dense_29_layer_call_fn_648157ZHI4?1
*?'
%?"
inputs??????????@
? "?????????????
D__inference_dense_30_layer_call_and_return_conditional_losses_647882]'(0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_30_layer_call_fn_647891P'(0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dense_31_layer_call_and_return_conditional_losses_647929\12/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_31_layer_call_fn_647938O12/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_30_layer_call_and_return_conditional_losses_647856^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
F__inference_dropout_30_layer_call_and_return_conditional_losses_647861^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
+__inference_dropout_30_layer_call_fn_647866Q4?1
*?'
!?
inputs??????????
p
? "????????????
+__inference_dropout_30_layer_call_fn_647871Q4?1
*?'
!?
inputs??????????
p 
? "????????????
F__inference_dropout_31_layer_call_and_return_conditional_losses_647903\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
F__inference_dropout_31_layer_call_and_return_conditional_losses_647908\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ~
+__inference_dropout_31_layer_call_fn_647913O3?0
)?&
 ?
inputs?????????
p
? "??????????~
+__inference_dropout_31_layer_call_fn_647918O3?0
)?&
 ?
inputs?????????
p 
? "???????????
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_647828{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_647839c9?6
/?,
&?#
inputs???????????

 
? "&?#
?
0??????????
? ?
;__inference_global_average_pooling1d_6_layer_call_fn_647833nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
;__inference_global_average_pooling1d_6_layer_call_fn_647844V9?6
/?,
&?#
inputs???????????

 
? "????????????
C__inference_model_7_layer_call_and_return_conditional_losses_646654z=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_8??????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_646709z=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_8??????????
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_647177y=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_647342y=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
(__inference_model_7_layer_call_fn_646814m=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_8??????????
p

 
? "???????????
(__inference_model_7_layer_call_fn_646918m=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_8??????????
p 

 
? "???????????
(__inference_model_7_layer_call_fn_647391l=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p

 
? "???????????
(__inference_model_7_layer_call_fn_647440l=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p 

 
? "???????????
H__inference_sequential_7_layer_call_and_return_conditional_losses_646011zFGHIE?B
;?8
.?+
dense_28_input???????????
p

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_646025zFGHIE?B
;?8
.?+
dense_28_input???????????
p 

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_647995rFGHI=?:
3?0
&?#
inputs???????????
p

 
? "+?(
!?
0???????????
? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_648052rFGHI=?:
3?0
&?#
inputs???????????
p 

 
? "+?(
!?
0???????????
? ?
-__inference_sequential_7_layer_call_fn_646053mFGHIE?B
;?8
.?+
dense_28_input???????????
p

 
? "?????????????
-__inference_sequential_7_layer_call_fn_646080mFGHIE?B
;?8
.?+
dense_28_input???????????
p 

 
? "?????????????
-__inference_sequential_7_layer_call_fn_648065eFGHI=?:
3?0
&?#
inputs???????????
p

 
? "?????????????
-__inference_sequential_7_layer_call_fn_648078eFGHI=?:
3?0
&?#
inputs???????????
p 

 
? "?????????????
$__inference_signature_wrapper_646977?=<>?@ABCDEJKFGHILM'(12<?9
? 
2?/
-
input_8"?
input_8??????????"3?0
.
dense_31"?
dense_31??????????
Z__inference_token_and_position_embedding_7_layer_call_and_return_conditional_losses_647464^=<+?(
!?
?
x??????????
? "+?(
!?
0???????????
? ?
?__inference_token_and_position_embedding_7_layer_call_fn_647473Q=<+?(
!?
?
x??????????
? "?????????????
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_647621z>?@ABCDEJKFGHILM9?6
/?,
&?#
inputs???????????
p
? "+?(
!?
0???????????
? ?
O__inference_transformer_block_7_layer_call_and_return_conditional_losses_647748z>?@ABCDEJKFGHILM9?6
/?,
&?#
inputs???????????
p 
? "+?(
!?
0???????????
? ?
4__inference_transformer_block_7_layer_call_fn_647785m>?@ABCDEJKFGHILM9?6
/?,
&?#
inputs???????????
p
? "?????????????
4__inference_transformer_block_7_layer_call_fn_647822m>?@ABCDEJKFGHILM9?6
/?,
&?#
inputs???????????
p 
? "????????????