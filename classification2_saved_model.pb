��
� � 
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
k
Equal
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(�
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
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
�
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0���������"
value_indexint(0���������"+

vocab_sizeint���������(0���������"
	delimiterstring	�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
n
NotEqual
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(�
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
�
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.4.02unknown8��
b
bouncesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
t
latest_ecommerce_progressPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
d
	pageviewsPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
g
time_on_sitePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
j
channelGroupingPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
H
Equal/yConst*
_output_shapes
: *
dtype0*
valueB B 
V
EqualEqualchannelGroupingEqual/y*
T0*#
_output_shapes
:���������
j
ConstConst*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
D
ShapeShapechannelGrouping*
T0*
_output_shapes
:
H
TileTileConstShape*
T0*#
_output_shapes
:���������
`
SelectV2SelectV2EqualTilechannelGrouping*
T0*#
_output_shapes
:���������
b
countryPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
J
	Equal_1/yConst*
_output_shapes
: *
dtype0*
valueB B 
R
Equal_1Equalcountry	Equal_1/y*
T0*#
_output_shapes
:���������
l
Const_1Const*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
>
Shape_1Shapecountry*
T0*
_output_shapes
:
N
Tile_1TileConst_1Shape_1*
T0*#
_output_shapes
:���������
^

SelectV2_1SelectV2Equal_1Tile_1country*
T0*#
_output_shapes
:���������
i
deviceCategoryPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
J
	Equal_2/yConst*
_output_shapes
: *
dtype0*
valueB B 
Y
Equal_2EqualdeviceCategory	Equal_2/y*
T0*#
_output_shapes
:���������
l
Const_2Const*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
E
Shape_2ShapedeviceCategory*
T0*
_output_shapes
:
N
Tile_2TileConst_2Shape_2*
T0*#
_output_shapes
:���������
e

SelectV2_2SelectV2Equal_2Tile_2deviceCategory*
T0*#
_output_shapes
:���������
a
mediumPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
J
	Equal_3/yConst*
_output_shapes
: *
dtype0*
valueB B 
Q
Equal_3Equalmedium	Equal_3/y*
T0*#
_output_shapes
:���������
l
Const_3Const*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
=
Shape_3Shapemedium*
T0*
_output_shapes
:
N
Tile_3TileConst_3Shape_3*
T0*#
_output_shapes
:���������
]

SelectV2_3SelectV2Equal_3Tile_3medium*
T0*#
_output_shapes
:���������
a
sourcePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
J
	Equal_4/yConst*
_output_shapes
: *
dtype0*
valueB B 
Q
Equal_4Equalsource	Equal_4/y*
T0*#
_output_shapes
:���������
l
Const_4Const*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
=
Shape_4Shapesource*
T0*
_output_shapes
:
N
Tile_4TileConst_4Shape_4*
T0*#
_output_shapes
:���������
]

SelectV2_4SelectV2Equal_4Tile_4source*
T0*#
_output_shapes
:���������
m
"input_layer/bounces/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
input_layer/bounces/ExpandDims
ExpandDimsbounces"input_layer/bounces/ExpandDims/dim*
T0*'
_output_shapes
:���������
g
input_layer/bounces/ShapeShapeinput_layer/bounces/ExpandDims*
T0*
_output_shapes
:
q
'input_layer/bounces/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
s
)input_layer/bounces/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
s
)input_layer/bounces/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
!input_layer/bounces/strided_sliceStridedSliceinput_layer/bounces/Shape'input_layer/bounces/strided_slice/stack)input_layer/bounces/strided_slice/stack_1)input_layer/bounces/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
e
#input_layer/bounces/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
!input_layer/bounces/Reshape/shapePack!input_layer/bounces/strided_slice#input_layer/bounces/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
input_layer/bounces/ReshapeReshapeinput_layer/bounces/ExpandDims!input_layer/bounces/Reshape/shape*
T0*'
_output_shapes
:���������

4input_layer/channelGrouping_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
0input_layer/channelGrouping_indicator/ExpandDims
ExpandDimsSelectV24input_layer/channelGrouping_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
Dinput_layer/channelGrouping_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
>input_layer/channelGrouping_indicator/to_sparse_input/NotEqualNotEqual0input_layer/channelGrouping_indicator/ExpandDimsDinput_layer/channelGrouping_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
=input_layer/channelGrouping_indicator/to_sparse_input/indicesWhere>input_layer/channelGrouping_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
<input_layer/channelGrouping_indicator/to_sparse_input/valuesGatherNd0input_layer/channelGrouping_indicator/ExpandDims=input_layer/channelGrouping_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
Ainput_layer/channelGrouping_indicator/to_sparse_input/dense_shapeShape0input_layer/channelGrouping_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
�
Rinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/channelGrouping.txt
�
Minput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Rinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/channelGrouping.txt_8_-2_-1*
value_dtype0	
�
pinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Rinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/hash_tableRinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/asset_path*
	key_index���������*
value_index���������*

vocab_size
�
Iinput_layer/channelGrouping_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Rinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/hash_table<input_layer/channelGrouping_indicator/to_sparse_input/valuesMinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
Ainput_layer/channelGrouping_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
3input_layer/channelGrouping_indicator/SparseToDenseSparseToDense=input_layer/channelGrouping_indicator/to_sparse_input/indicesAinput_layer/channelGrouping_indicator/to_sparse_input/dense_shapeIinput_layer/channelGrouping_indicator/hash_table_Lookup/LookupTableFindV2Ainput_layer/channelGrouping_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
x
3input_layer/channelGrouping_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
z
5input_layer/channelGrouping_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
u
3input_layer/channelGrouping_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
�
-input_layer/channelGrouping_indicator/one_hotOneHot3input_layer/channelGrouping_indicator/SparseToDense3input_layer/channelGrouping_indicator/one_hot/depth3input_layer/channelGrouping_indicator/one_hot/Const5input_layer/channelGrouping_indicator/one_hot/Const_1*
T0*+
_output_shapes
:���������
�
;input_layer/channelGrouping_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
)input_layer/channelGrouping_indicator/SumSum-input_layer/channelGrouping_indicator/one_hot;input_layer/channelGrouping_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
+input_layer/channelGrouping_indicator/ShapeShape)input_layer/channelGrouping_indicator/Sum*
T0*
_output_shapes
:
�
9input_layer/channelGrouping_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
;input_layer/channelGrouping_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
;input_layer/channelGrouping_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
3input_layer/channelGrouping_indicator/strided_sliceStridedSlice+input_layer/channelGrouping_indicator/Shape9input_layer/channelGrouping_indicator/strided_slice/stack;input_layer/channelGrouping_indicator/strided_slice/stack_1;input_layer/channelGrouping_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5input_layer/channelGrouping_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
3input_layer/channelGrouping_indicator/Reshape/shapePack3input_layer/channelGrouping_indicator/strided_slice5input_layer/channelGrouping_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
-input_layer/channelGrouping_indicator/ReshapeReshape)input_layer/channelGrouping_indicator/Sum3input_layer/channelGrouping_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
w
,input_layer/country_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
(input_layer/country_indicator/ExpandDims
ExpandDims
SelectV2_1,input_layer/country_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
}
<input_layer/country_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
6input_layer/country_indicator/to_sparse_input/NotEqualNotEqual(input_layer/country_indicator/ExpandDims<input_layer/country_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
5input_layer/country_indicator/to_sparse_input/indicesWhere6input_layer/country_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
4input_layer/country_indicator/to_sparse_input/valuesGatherNd(input_layer/country_indicator/ExpandDims5input_layer/country_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
9input_layer/country_indicator/to_sparse_input/dense_shapeShape(input_layer/country_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
�
Binput_layer/country_indicator/country_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/country.txt
�
=input_layer/country_indicator/country_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Binput_layer/country_indicator/country_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/country.txt_218_-2_-1*
value_dtype0	
�
`input_layer/country_indicator/country_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Binput_layer/country_indicator/country_lookup/hash_table/hash_tableBinput_layer/country_indicator/country_lookup/hash_table/asset_path*
	key_index���������*
value_index���������*

vocab_size�
�
Ainput_layer/country_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Binput_layer/country_indicator/country_lookup/hash_table/hash_table4input_layer/country_indicator/to_sparse_input/values=input_layer/country_indicator/country_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
9input_layer/country_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
+input_layer/country_indicator/SparseToDenseSparseToDense5input_layer/country_indicator/to_sparse_input/indices9input_layer/country_indicator/to_sparse_input/dense_shapeAinput_layer/country_indicator/hash_table_Lookup/LookupTableFindV29input_layer/country_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
p
+input_layer/country_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
r
-input_layer/country_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
n
+input_layer/country_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :�
�
%input_layer/country_indicator/one_hotOneHot+input_layer/country_indicator/SparseToDense+input_layer/country_indicator/one_hot/depth+input_layer/country_indicator/one_hot/Const-input_layer/country_indicator/one_hot/Const_1*
T0*,
_output_shapes
:����������
�
3input_layer/country_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
!input_layer/country_indicator/SumSum%input_layer/country_indicator/one_hot3input_layer/country_indicator/Sum/reduction_indices*
T0*(
_output_shapes
:����������
t
#input_layer/country_indicator/ShapeShape!input_layer/country_indicator/Sum*
T0*
_output_shapes
:
{
1input_layer/country_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
}
3input_layer/country_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
}
3input_layer/country_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
+input_layer/country_indicator/strided_sliceStridedSlice#input_layer/country_indicator/Shape1input_layer/country_indicator/strided_slice/stack3input_layer/country_indicator/strided_slice/stack_13input_layer/country_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
p
-input_layer/country_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�
�
+input_layer/country_indicator/Reshape/shapePack+input_layer/country_indicator/strided_slice-input_layer/country_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
%input_layer/country_indicator/ReshapeReshape!input_layer/country_indicator/Sum+input_layer/country_indicator/Reshape/shape*
T0*(
_output_shapes
:����������
~
3input_layer/deviceCategory_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
/input_layer/deviceCategory_indicator/ExpandDims
ExpandDims
SelectV2_23input_layer/deviceCategory_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
Cinput_layer/deviceCategory_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
=input_layer/deviceCategory_indicator/to_sparse_input/NotEqualNotEqual/input_layer/deviceCategory_indicator/ExpandDimsCinput_layer/deviceCategory_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
<input_layer/deviceCategory_indicator/to_sparse_input/indicesWhere=input_layer/deviceCategory_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
;input_layer/deviceCategory_indicator/to_sparse_input/valuesGatherNd/input_layer/deviceCategory_indicator/ExpandDims<input_layer/deviceCategory_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
@input_layer/deviceCategory_indicator/to_sparse_input/dense_shapeShape/input_layer/deviceCategory_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
�
Pinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/deviceCategory.txt
�
Kinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Pinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/deviceCategory.txt_3_-2_-1*
value_dtype0	
�
ninput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Pinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/hash_tablePinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/asset_path*
	key_index���������*
value_index���������*

vocab_size
�
Hinput_layer/deviceCategory_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Pinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/hash_table;input_layer/deviceCategory_indicator/to_sparse_input/valuesKinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
@input_layer/deviceCategory_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
2input_layer/deviceCategory_indicator/SparseToDenseSparseToDense<input_layer/deviceCategory_indicator/to_sparse_input/indices@input_layer/deviceCategory_indicator/to_sparse_input/dense_shapeHinput_layer/deviceCategory_indicator/hash_table_Lookup/LookupTableFindV2@input_layer/deviceCategory_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
w
2input_layer/deviceCategory_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
y
4input_layer/deviceCategory_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
t
2input_layer/deviceCategory_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
�
,input_layer/deviceCategory_indicator/one_hotOneHot2input_layer/deviceCategory_indicator/SparseToDense2input_layer/deviceCategory_indicator/one_hot/depth2input_layer/deviceCategory_indicator/one_hot/Const4input_layer/deviceCategory_indicator/one_hot/Const_1*
T0*+
_output_shapes
:���������
�
:input_layer/deviceCategory_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
(input_layer/deviceCategory_indicator/SumSum,input_layer/deviceCategory_indicator/one_hot:input_layer/deviceCategory_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
*input_layer/deviceCategory_indicator/ShapeShape(input_layer/deviceCategory_indicator/Sum*
T0*
_output_shapes
:
�
8input_layer/deviceCategory_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
:input_layer/deviceCategory_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
:input_layer/deviceCategory_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
2input_layer/deviceCategory_indicator/strided_sliceStridedSlice*input_layer/deviceCategory_indicator/Shape8input_layer/deviceCategory_indicator/strided_slice/stack:input_layer/deviceCategory_indicator/strided_slice/stack_1:input_layer/deviceCategory_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
v
4input_layer/deviceCategory_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
2input_layer/deviceCategory_indicator/Reshape/shapePack2input_layer/deviceCategory_indicator/strided_slice4input_layer/deviceCategory_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
,input_layer/deviceCategory_indicator/ReshapeReshape(input_layer/deviceCategory_indicator/Sum2input_layer/deviceCategory_indicator/Reshape/shape*
T0*'
_output_shapes
:���������

4input_layer/latest_ecommerce_progress/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
0input_layer/latest_ecommerce_progress/ExpandDims
ExpandDimslatest_ecommerce_progress4input_layer/latest_ecommerce_progress/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
+input_layer/latest_ecommerce_progress/ShapeShape0input_layer/latest_ecommerce_progress/ExpandDims*
T0*
_output_shapes
:
�
9input_layer/latest_ecommerce_progress/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
;input_layer/latest_ecommerce_progress/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
;input_layer/latest_ecommerce_progress/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
3input_layer/latest_ecommerce_progress/strided_sliceStridedSlice+input_layer/latest_ecommerce_progress/Shape9input_layer/latest_ecommerce_progress/strided_slice/stack;input_layer/latest_ecommerce_progress/strided_slice/stack_1;input_layer/latest_ecommerce_progress/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5input_layer/latest_ecommerce_progress/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
3input_layer/latest_ecommerce_progress/Reshape/shapePack3input_layer/latest_ecommerce_progress/strided_slice5input_layer/latest_ecommerce_progress/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
-input_layer/latest_ecommerce_progress/ReshapeReshape0input_layer/latest_ecommerce_progress/ExpandDims3input_layer/latest_ecommerce_progress/Reshape/shape*
T0*'
_output_shapes
:���������
v
+input_layer/medium_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
'input_layer/medium_indicator/ExpandDims
ExpandDims
SelectV2_3+input_layer/medium_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
|
;input_layer/medium_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
5input_layer/medium_indicator/to_sparse_input/NotEqualNotEqual'input_layer/medium_indicator/ExpandDims;input_layer/medium_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
4input_layer/medium_indicator/to_sparse_input/indicesWhere5input_layer/medium_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
3input_layer/medium_indicator/to_sparse_input/valuesGatherNd'input_layer/medium_indicator/ExpandDims4input_layer/medium_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
8input_layer/medium_indicator/to_sparse_input/dense_shapeShape'input_layer/medium_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
�
@input_layer/medium_indicator/medium_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/medium.txt
�
;input_layer/medium_indicator/medium_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
@input_layer/medium_indicator/medium_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/medium.txt_7_-2_-1*
value_dtype0	
�
^input_layer/medium_indicator/medium_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2@input_layer/medium_indicator/medium_lookup/hash_table/hash_table@input_layer/medium_indicator/medium_lookup/hash_table/asset_path*
	key_index���������*
value_index���������*

vocab_size
�
@input_layer/medium_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@input_layer/medium_indicator/medium_lookup/hash_table/hash_table3input_layer/medium_indicator/to_sparse_input/values;input_layer/medium_indicator/medium_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
8input_layer/medium_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
*input_layer/medium_indicator/SparseToDenseSparseToDense4input_layer/medium_indicator/to_sparse_input/indices8input_layer/medium_indicator/to_sparse_input/dense_shape@input_layer/medium_indicator/hash_table_Lookup/LookupTableFindV28input_layer/medium_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
o
*input_layer/medium_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
q
,input_layer/medium_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
l
*input_layer/medium_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
�
$input_layer/medium_indicator/one_hotOneHot*input_layer/medium_indicator/SparseToDense*input_layer/medium_indicator/one_hot/depth*input_layer/medium_indicator/one_hot/Const,input_layer/medium_indicator/one_hot/Const_1*
T0*+
_output_shapes
:���������
�
2input_layer/medium_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
 input_layer/medium_indicator/SumSum$input_layer/medium_indicator/one_hot2input_layer/medium_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
r
"input_layer/medium_indicator/ShapeShape input_layer/medium_indicator/Sum*
T0*
_output_shapes
:
z
0input_layer/medium_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
|
2input_layer/medium_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
|
2input_layer/medium_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
*input_layer/medium_indicator/strided_sliceStridedSlice"input_layer/medium_indicator/Shape0input_layer/medium_indicator/strided_slice/stack2input_layer/medium_indicator/strided_slice/stack_12input_layer/medium_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
n
,input_layer/medium_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
*input_layer/medium_indicator/Reshape/shapePack*input_layer/medium_indicator/strided_slice,input_layer/medium_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
$input_layer/medium_indicator/ReshapeReshape input_layer/medium_indicator/Sum*input_layer/medium_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
o
$input_layer/pageviews/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
 input_layer/pageviews/ExpandDims
ExpandDims	pageviews$input_layer/pageviews/ExpandDims/dim*
T0*'
_output_shapes
:���������
k
input_layer/pageviews/ShapeShape input_layer/pageviews/ExpandDims*
T0*
_output_shapes
:
s
)input_layer/pageviews/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+input_layer/pageviews/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+input_layer/pageviews/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
#input_layer/pageviews/strided_sliceStridedSliceinput_layer/pageviews/Shape)input_layer/pageviews/strided_slice/stack+input_layer/pageviews/strided_slice/stack_1+input_layer/pageviews/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
g
%input_layer/pageviews/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
#input_layer/pageviews/Reshape/shapePack#input_layer/pageviews/strided_slice%input_layer/pageviews/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
input_layer/pageviews/ReshapeReshape input_layer/pageviews/ExpandDims#input_layer/pageviews/Reshape/shape*
T0*'
_output_shapes
:���������
v
+input_layer/source_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
'input_layer/source_indicator/ExpandDims
ExpandDims
SelectV2_4+input_layer/source_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
|
;input_layer/source_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
5input_layer/source_indicator/to_sparse_input/NotEqualNotEqual'input_layer/source_indicator/ExpandDims;input_layer/source_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
4input_layer/source_indicator/to_sparse_input/indicesWhere5input_layer/source_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
3input_layer/source_indicator/to_sparse_input/valuesGatherNd'input_layer/source_indicator/ExpandDims4input_layer/source_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
8input_layer/source_indicator/to_sparse_input/dense_shapeShape'input_layer/source_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
�
@input_layer/source_indicator/source_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/source.txt
�
;input_layer/source_indicator/source_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
@input_layer/source_indicator/source_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/jc-d/home/cloud-dataengine-materialize-tempstore/serving-materialize/serving.shard/0/478/ttl=12h/6d6ad37d11d4d0b6/assets/source.txt_282_-2_-1*
value_dtype0	
�
^input_layer/source_indicator/source_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2@input_layer/source_indicator/source_lookup/hash_table/hash_table@input_layer/source_indicator/source_lookup/hash_table/asset_path*
	key_index���������*
value_index���������*

vocab_size�
�
@input_layer/source_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@input_layer/source_indicator/source_lookup/hash_table/hash_table3input_layer/source_indicator/to_sparse_input/values;input_layer/source_indicator/source_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
8input_layer/source_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
*input_layer/source_indicator/SparseToDenseSparseToDense4input_layer/source_indicator/to_sparse_input/indices8input_layer/source_indicator/to_sparse_input/dense_shape@input_layer/source_indicator/hash_table_Lookup/LookupTableFindV28input_layer/source_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
o
*input_layer/source_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
q
,input_layer/source_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
m
*input_layer/source_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :�
�
$input_layer/source_indicator/one_hotOneHot*input_layer/source_indicator/SparseToDense*input_layer/source_indicator/one_hot/depth*input_layer/source_indicator/one_hot/Const,input_layer/source_indicator/one_hot/Const_1*
T0*,
_output_shapes
:����������
�
2input_layer/source_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
 input_layer/source_indicator/SumSum$input_layer/source_indicator/one_hot2input_layer/source_indicator/Sum/reduction_indices*
T0*(
_output_shapes
:����������
r
"input_layer/source_indicator/ShapeShape input_layer/source_indicator/Sum*
T0*
_output_shapes
:
z
0input_layer/source_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
|
2input_layer/source_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
|
2input_layer/source_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
*input_layer/source_indicator/strided_sliceStridedSlice"input_layer/source_indicator/Shape0input_layer/source_indicator/strided_slice/stack2input_layer/source_indicator/strided_slice/stack_12input_layer/source_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
o
,input_layer/source_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�
�
*input_layer/source_indicator/Reshape/shapePack*input_layer/source_indicator/strided_slice,input_layer/source_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
$input_layer/source_indicator/ReshapeReshape input_layer/source_indicator/Sum*input_layer/source_indicator/Reshape/shape*
T0*(
_output_shapes
:����������
r
'input_layer/time_on_site/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
#input_layer/time_on_site/ExpandDims
ExpandDimstime_on_site'input_layer/time_on_site/ExpandDims/dim*
T0*'
_output_shapes
:���������
q
input_layer/time_on_site/ShapeShape#input_layer/time_on_site/ExpandDims*
T0*
_output_shapes
:
v
,input_layer/time_on_site/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
x
.input_layer/time_on_site/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
x
.input_layer/time_on_site/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
&input_layer/time_on_site/strided_sliceStridedSliceinput_layer/time_on_site/Shape,input_layer/time_on_site/strided_slice/stack.input_layer/time_on_site/strided_slice/stack_1.input_layer/time_on_site/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
j
(input_layer/time_on_site/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&input_layer/time_on_site/Reshape/shapePack&input_layer/time_on_site/strided_slice(input_layer/time_on_site/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
 input_layer/time_on_site/ReshapeReshape#input_layer/time_on_site/ExpandDims&input_layer/time_on_site/Reshape/shape*
T0*'
_output_shapes
:���������
Y
input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
�
input_layer/concatConcatV2input_layer/bounces/Reshape-input_layer/channelGrouping_indicator/Reshape%input_layer/country_indicator/Reshape,input_layer/deviceCategory_indicator/Reshape-input_layer/latest_ecommerce_progress/Reshape$input_layer/medium_indicator/Reshapeinput_layer/pageviews/Reshape$input_layer/source_indicator/Reshape input_layer/time_on_site/Reshapeinput_layer/concat/axis*
N	*
T0*(
_output_shapes
:����������
�!
Const_5Const*
_output_shapes
:	�*
dtype0*� 
value� B� 	�"� C�v8*�ѿ��s�Z�տ�^�lￖ䲍ݿ�E�@�vU�'y��X���¿	�{��q쿙~�����T�H���c\�P���U*S𿝏��	��M�v��O�:Y ��1����f@n�BB��|�j'��ev	K)���V���!N���p�������2��0��9&zS�3ϒ&����cwME��v��I��+�:o�U�������Z�"�ȋb9�-�?�W�.P(іo�5����*��6���"s0<d�����C�puxQzr��
b��� �@�I��￲��$=gￍ��]�y�0�g]��@0*�H��d���������^�k!Ϲs�ΰ�zr��%Vb�.�ZOKR�1󿅲N�C��?J�K���m��0�X�e��Q���c]2���$�����߮���l7o�𿏷B��D��{	'�쿎�����ص����F����^ￕh�H��Y�?���y9���ؿ�,��$��χ����Y�qt���":��2y�%=���m��z��{IY�����^���*��d���ď�hD�t�C]�g��ε�|��7ޙ޷�BV��y��1����K|!���L�4�m񿻢��Y��h��s��Y�`�����6�t�����_��q�q;�￺P@ȝ��:QӃI��.�����c?L8��$rA���i7gX���2?��n�6\m����OR�|qW�$�Ѱ�N�ٹ\)�}�K�V�%��!By�!�ѳ)ؙ�a����\Ps�]�_Y���￫����9���@����`�m��p������	�Y²R�//�۝�5>�y�D�w<b�Ӭ��%I��Iw���~F4dD�\@u! ���5�@P{�K�i���c=�����Xc@��;����U�~��	?�%�y�kzrI�66����ZwT����J鬱�%��&6����&6����&6��쿧������ơ9d�쿤����1�-���������7�4���!�T��)S�?{��7��������=��(�~Q�^u�b�Q��@���Ǩ�-���򦎅��T[X��p𿜫�RV��O��L쿑�����uq4��ￚ��[y�!��Ī���<��j���y+�l^7�Pw�!앏��CJ2r6%�@P2��3���.���t*����؅��b�i�6�8��r�i�4�3W[Z���=��u�W"9�UF� �+�����F�>	���~�kU�CuRC���)#aR";�A��9��c-�fT�D�K�U��߳ƑAK�e1P��e1P�[� �Z�>����onؗ@��YP�:����u3���Hg���ٌ\kM��=c�VY￟�	Y�
��P{�(�er�?���81Z�}�?�(��(��O,E����1����yO3ʒ�!�p�wQ���ￗl��9�����(���
���k�ӂ`￥A�|����LO��K����m� �ܪ� ��C��"�:�uo���xE���M|B�^a��`z����]1m 𿆎V�|��)����XA+����?i�@ �o𿌓5'���mV��B𿁩�Ul��3���HU$ݴ�	�����h���|��y�S��sZɖW�-�L�o��]��+��
���e�ҫ����?��s�Z�տ`d�����^�lￖ䲍ݿ�E�@�	�{��q쿙~�������"����?e��ra��Lj,_��c�M����Z�6����:KL�����];0M��S)�����;�ew�P򿮘<}|�.�mVu]�����9��nP�}Y�� �@����抳�L����A0"���bU���B�6��m4��VM￭�H�;��3���J��;5NϜ���_�v���5�����H��=y���4�G�񿲾s�Z�տ�����񿟗P2���}EP�q��}����?�JѾ���:%*�w��������rյ�V#��d?�]N��d?�]N��if�6��B�Jd��迳�,G���Q
�����)�0���r��SY�̀ڿn�nj��7��C���FbC�j���9Jn
��r瘎�򿙔��\!��KE�7����A&�w�ȿS�uÍ��j�n�^0L�B�����u�M���ܿ�4iw����T���C��]��*��݉���
�bVl�e�Ot�g���r�����������P��J���iK������I
����s�R����s�R����Vx��'X8X���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���g6�#���8ܓ���4i�>&�����������J�^�1�2��O�4�EI��S*�&E��[��&E��[��x����R��bF￥�#3|M��s�L4��<�#��+�?��*y����C�>���C�>�����c���W2$���w����ڋ������������NSi�󿝦K��w��k!�K,���V]���ߥCϷ��ɓ"9� ��l��1p���(�{�� aW��Ā>`��p�E�\���<������J-�UL��w��=�M\*�&�����	O6��$����r�hb& �~4T�W������$�̓h�7��<���r��?Ҥ4�)���+C�����V��Ip�Z͍�ɲ����MC����ɽi��(�������(.b��r������������������]�����1.��K5e�~����'LO��8iށ�#��]نQ��"n;f���_�i���u5�ݬ��?;�#���sQ�2^����@�K�񿢣O��H��˭��ܝ�����ߧ�����G �.���}����
�3@������Rnk����+hm��v^q���r!R^���䲍ݿv�����}XX���(z����OM`�P*���Ȥe/��W{/;e���(�)���?���h��Ht�6���[�(��d�8\b�L-G������ud6����ϳ��\*C���S��O�����|�t����2A$%�N��}$����Q�f���Ⓓ�񿥿��Թ�i&wL1����D�����,�����܌ݺ�����W�����ߐ��e�۾�.H�xZ���81Z����81Z��򿑊�%�y�����s����D����Ͻ��b0�= dJX�})�	���/���
<�\��jOQ��SU�����=��&���CRfv����}����`�`��l���9n�t^�?}�YMA��N{{j�_���W�:����??*��,hӜ�����[{��������S���J}��h���L-�Z����]dE��� �D�����K�ӫ����2c�lǩ����$����;�������`&���g��~�����a���=��o���nt�U �Y�����(��B����̉(�����#� ��q���P�*�A�j���� ̦���Bf�������hZ��=,����Dqv�É�?���~���+�~��������P�`��6��<t��?���[��%����Q���Z�TU�*� ���T���m�����F>�;Q� �X"��o�"�r����ؿ2Yf�?'������޻�����<�U!C��'k�����P_OuW����0�,���)"�4�����Ĝ��/eR�٣�Ix�����w�42��������&�II����١����h�1���mV�0Z�-��؆����%Ά�4Q�P?��$������D�� �8�������۰4�ޮ����	zY�`(?
�
weightsVarHandleOp*
_class
loc:@weights*
_output_shapes
: *
dtype0*
shape:	�*
shared_name	weights
_
(weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpweights*
_output_shapes
: 
A
weights/AssignAssignVariableOpweightsConst_5*
dtype0
d
weights/Read/ReadVariableOpReadVariableOpweights*
_output_shapes
:	�*
dtype0
P
Const_6Const*
_output_shapes
: *
dtype0*
valueB 2�S.L6��
�
	interceptVarHandleOp*
_class
loc:@intercept*
_output_shapes
: *
dtype0*
shape: *
shared_name	intercept
c
*intercept/IsInitialized/VarIsInitializedOpVarIsInitializedOp	intercept*
_output_shapes
: 
E
intercept/AssignAssignVariableOp	interceptConst_6*
dtype0
_
intercept/Read/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
b
CastCastinput_layer/concat*

DstT0*

SrcT0*(
_output_shapes
:����������
^
MatMul/ReadVariableOpReadVariableOpweights*
_output_shapes
:	�*
dtype0
_
MatMulMatMulCastMatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
T
Add/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
X
AddAddMatMulAdd/ReadVariableOp*
T0*'
_output_shapes
:���������
I
SigmoidSigmoidAdd*
T0*'
_output_shapes
:���������
>
Shape_5ShapeSigmoid*
T0*
_output_shapes
:
S

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      �?
S
onesFillShape_5
ones/Const*
T0*'
_output_shapes
:���������
K
subSubonesSigmoid*
T0*'
_output_shapes
:���������
S
output_probs/axisConst*
_output_shapes
: *
dtype0*
value	B :
t
output_probsConcatV2Sigmoidsuboutput_probs/axis*
N*
T0*'
_output_shapes
:���������
T
Const_7Const*
_output_shapes
:*
dtype0*
valueBB1B0
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
Z

ExpandDims
ExpandDimsConst_7ExpandDims/dim*
T0*
_output_shapes

:
C
Shape_6Shapeoutput_probs*
T0*
_output_shapes
:
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
strided_sliceStridedSliceShape_6strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
[
output_labels/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
w
output_labels/multiplesPackstrided_sliceoutput_labels/multiples/1*
N*
T0*
_output_shapes
:
l
output_labelsTile
ExpandDimsoutput_labels/multiples*
T0*'
_output_shapes
:���������
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
^
ArgMaxArgMaxoutput_probsArgMax/dimension*
T0*#
_output_shapes
:���������
=
Shape_7ShapeArgMax*
T0	*
_output_shapes
:
_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
strided_slice_1StridedSliceShape_7strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : 
M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
^
rangeRangerange/startstrided_slice_1range/delta*#
_output_shapes
:���������
R
Cast_1Castrange*

DstT0	*

SrcT0*#
_output_shapes
:���������
d
stackPackCast_1ArgMax*
N*
T0	*'
_output_shapes
:���������*

axis
n
GatherNdGatherNdoutput_labelsstack*
Tindices0	*
Tparams0*#
_output_shapes
:���������
c
output_class/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   
g
output_classReshapeGatherNdoutput_class/shape*
T0*'
_output_shapes
:���������
0
initNoOp^intercept/Assign^weights/Assign
�
init_all_tablesNoOpq^input_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/table_init/InitializeTableFromTextFileV2a^input_layer/country_indicator/country_lookup/hash_table/table_init/InitializeTableFromTextFileV2o^input_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/table_init/InitializeTableFromTextFileV2_^input_layer/medium_indicator/medium_lookup/hash_table/table_init/InitializeTableFromTextFileV2_^input_layer/source_indicator/source_lookup/hash_table/table_init/InitializeTableFromTextFileV2
+

group_depsNoOp^init^init_all_tables
�
init_all_tables_1NoOpq^input_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/table_init/InitializeTableFromTextFileV2a^input_layer/country_indicator/country_lookup/hash_table/table_init/InitializeTableFromTextFileV2o^input_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/table_init/InitializeTableFromTextFileV2_^input_layer/medium_indicator/medium_lookup/hash_table/table_init/InitializeTableFromTextFileV2_^input_layer/source_indicator/source_lookup/hash_table/table_init/InitializeTableFromTextFileV2
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
�
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_34dd6623fa1242cc86dcf3d7f00bd9ff/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesintercept/Read/ReadVariableOpweights/Read/ReadVariableOp"/device:CPU:0*
dtypes
2
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOp	interceptsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
R
save/AssignVariableOp_1AssignVariableOpweightssave/Identity_2*
dtype0
L
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1
-
save/restore_allNoOp^save/restore_shard"�<
save/Const:0save/Identity:0save/restore_all (5 @F8"�
asset_filepaths�
�
Tinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/asset_path:0
Dinput_layer/country_indicator/country_lookup/hash_table/asset_path:0
Rinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/asset_path:0
Binput_layer/medium_indicator/medium_lookup/hash_table/asset_path:0
Binput_layer/source_indicator/source_lookup/hash_table/asset_path:0"�
saved_model_assets�*�
�
+type.googleapis.com/tensorflow.AssetFileDefm
V
Tinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/asset_path:0channelGrouping.txt
�
+type.googleapis.com/tensorflow.AssetFileDefU
F
Dinput_layer/country_indicator/country_lookup/hash_table/asset_path:0country.txt
�
+type.googleapis.com/tensorflow.AssetFileDefj
T
Rinput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/asset_path:0deviceCategory.txt
�
+type.googleapis.com/tensorflow.AssetFileDefR
D
Binput_layer/medium_indicator/medium_lookup/hash_table/asset_path:0
medium.txt
�
+type.googleapis.com/tensorflow.AssetFileDefR
D
Binput_layer/source_indicator/source_lookup/hash_table/asset_path:0
source.txt",
saved_model_main_op

init_all_tables_1"�
table_initializer�
�
pinput_layer/channelGrouping_indicator/channelGrouping_lookup/hash_table/table_init/InitializeTableFromTextFileV2
`input_layer/country_indicator/country_lookup/hash_table/table_init/InitializeTableFromTextFileV2
ninput_layer/deviceCategory_indicator/deviceCategory_lookup/hash_table/table_init/InitializeTableFromTextFileV2
^input_layer/medium_indicator/medium_lookup/hash_table/table_init/InitializeTableFromTextFileV2
^input_layer/source_indicator/source_lookup/hash_table/table_init/InitializeTableFromTextFileV2"�
trainable_variables��
I
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2	Const_5:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_6:08"�
	variables��
I
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2	Const_5:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_6:08*�
serving_default�
'
bounces
	bounces:0���������
7
channelGrouping$
channelGrouping:0���������
'
country
	country:0���������
5
deviceCategory#
deviceCategory:0���������
K
latest_ecommerce_progress.
latest_ecommerce_progress:0���������
%
medium
medium:0���������
+
	pageviews
pageviews:0���������
%
source
source:0���������
1
time_on_site!
time_on_site:0���������K
"predicted_will_buy_on_return_visit%
output_class:0���������G
will_buy_on_return_visit_probs%
output_probs:0���������I
will_buy_on_return_visit_values&
output_labels:0���������tensorflow/serving/predict