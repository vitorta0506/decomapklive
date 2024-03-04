.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/google/protobuf/Descriptors$b;

.field static final t:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final u:Lcom/google/protobuf/Descriptors$b;

.field static final v:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final w:Lcom/google/protobuf/Descriptors$b;

.field static final x:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final y:Lcom/google/protobuf/Descriptors$b;

.field static final z:Lcom/google/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "\n&google/api/expr/v1alpha1/checked.proto\u0012\u0018google.api.expr.v1alpha1\u001a%google/api/expr/v1alpha1/syntax.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u001cgoogle/protobuf/struct.proto\"\u00b6\u0003\n\u000bCheckedExpr\u0012N\n\rreference_map\u0018\u0002 \u0003(\u000b27.google.api.expr.v1alpha1.CheckedExpr.ReferenceMapEntry\u0012D\n\u0008type_map\u0018\u0003 \u0003(\u000b22.google.api.expr.v1alpha1.CheckedExpr.TypeMapEntry\u00129\n\u000bsource_info\u0018\u0005 \u0001(\u000b2$.google.api.expr.v1alpha1.SourceInfo\u0012,\n\u0004expr\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u001aX\n\u0011ReferenceMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u00122\n\u0005value\u0018\u0002 \u0001(\u000b2#.google.api.expr.v1alpha1.Reference:\u00028\u0001\u001aN\n\u000cTypeMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u0012-\n\u0005value\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type:\u00028\u0001\"\u0082\n\n\u0004Type\u0012%\n\u0003dyn\u0018\u0001 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012*\n\u0004null\u0018\u0002 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000\u0012A\n\tprimitive\u0018\u0003 \u0001(\u000e2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\u0000\u0012?\n\u0007wrapper\u0018\u0004 \u0001(\u000e2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\u0000\u0012B\n\nwell_known\u0018\u0005 \u0001(\u000e2,.google.api.expr.v1alpha1.Type.WellKnownTypeH\u0000\u0012<\n\tlist_type\u0018\u0006 \u0001(\u000b2\'.google.api.expr.v1alpha1.Type.ListTypeH\u0000\u0012:\n\u0008map_type\u0018\u0007 \u0001(\u000b2&.google.api.expr.v1alpha1.Type.MapTypeH\u0000\u0012?\n\u0008function\u0018\u0008 \u0001(\u000b2+.google.api.expr.v1alpha1.Type.FunctionTypeH\u0000\u0012\u0016\n\u000cmessage_type\u0018\t \u0001(\tH\u0000\u0012\u0014\n\ntype_param\u0018\n \u0001(\tH\u0000\u0012.\n\u0004type\u0018\u000b \u0001(\u000b2\u001e.google.api.expr.v1alpha1.TypeH\u0000\u0012\'\n\u0005error\u0018\u000c \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012D\n\rabstract_type\u0018\u000e \u0001(\u000b2+.google.api.expr.v1alpha1.Type.AbstractTypeH\u0000\u001a=\n\u0008ListType\u00121\n\telem_type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u001ao\n\u0007MapType\u00120\n\u0008key_type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u00122\n\nvalue_type\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u001av\n\u000cFunctionType\u00123\n\u000bresult_type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u00121\n\targ_types\u0018\u0002 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Type\u001aU\n\u000cAbstractType\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00127\n\u000fparameter_types\u0018\u0002 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Type\"s\n\rPrimitiveType\u0012\u001e\n\u001aPRIMITIVE_TYPE_UNSPECIFIED\u0010\u0000\u0012\u0008\n\u0004BOOL\u0010\u0001\u0012\t\n\u0005INT64\u0010\u0002\u0012\n\n\u0006UINT64\u0010\u0003\u0012\n\n\u0006DOUBLE\u0010\u0004\u0012\n\n\u0006STRING\u0010\u0005\u0012\t\n\u0005BYTES\u0010\u0006\"V\n\rWellKnownType\u0012\u001f\n\u001bWELL_KNOWN_TYPE_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003ANY\u0010\u0001\u0012\r\n\tTIMESTAMP\u0010\u0002\u0012\u000c\n\u0008DURATION\u0010\u0003B\u000b\n\ttype_kind\"\u00b9\u0004\n\u0004Decl\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00129\n\u0005ident\u0018\u0002 \u0001(\u000b2(.google.api.expr.v1alpha1.Decl.IdentDeclH\u0000\u0012?\n\u0008function\u0018\u0003 \u0001(\u000b2+.google.api.expr.v1alpha1.Decl.FunctionDeclH\u0000\u001ay\n\tIdentDecl\u0012,\n\u0004type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u00121\n\u0005value\u0018\u0002 \u0001(\u000b2\".google.api.expr.v1alpha1.Constant\u0012\u000b\n\u0003doc\u0018\u0003 \u0001(\t\u001a\u009e\u0002\n\u000cFunctionDecl\u0012G\n\toverloads\u0018\u0001 \u0003(\u000b24.google.api.expr.v1alpha1.Decl.FunctionDecl.Overload\u001a\u00c4\u0001\n\u0008Overload\u0012\u0013\n\u000boverload_id\u0018\u0001 \u0001(\t\u0012.\n\u0006params\u0018\u0002 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Type\u0012\u0013\n\u000btype_params\u0018\u0003 \u0003(\t\u00123\n\u000bresult_type\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u0012\u001c\n\u0014is_instance_function\u0018\u0005 \u0001(\u0008\u0012\u000b\n\u0003doc\u0018\u0006 \u0001(\tB\u000b\n\tdecl_kind\"a\n\tReference\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000boverload_id\u0018\u0003 \u0003(\t\u00121\n\u0005value\u0018\u0004 \u0001(\u000b2\".google.api.expr.v1alpha1.ConstantBl\n\u001ccom.google.api.expr.v1alpha1B\tDeclProtoP\u0001Z<google.golang.org/genproto/googleapis/api/expr/v1alpha1;expr\u00f8\u0001\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->A:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ReferenceMap"

    const-string v7, "TypeMap"

    const-string v8, "SourceInfo"

    const-string v9, "Expr"

    filled-new-array {v3, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Key"

    const-string v8, "Value"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v2, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "Dyn"

    const-string v10, "Null"

    const-string v11, "Primitive"

    const-string v12, "Wrapper"

    const-string v13, "WellKnown"

    const-string v14, "ListType"

    const-string v15, "MapType"

    const-string v16, "Function"

    const-string v17, "MessageType"

    const-string v18, "TypeParam"

    const-string v19, "Type"

    const-string v20, "Error"

    const-string v21, "AbstractType"

    const-string v22, "TypeKind"

    filled-new-array/range {v9 .. v22}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "ElemType"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "KeyType"

    const-string v9, "ValueType"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->m:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "ResultType"

    const-string v9, "ArgTypes"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->o:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v7, "ParameterTypes"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->q:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Ident"

    const-string v7, "Function"

    const-string v9, "DeclKind"

    filled-new-array {v3, v6, v7, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->s:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Type"

    const-string v9, "Doc"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v6, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->u:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Overloads"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->w:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "OverloadId"

    const-string v10, "Params"

    const-string v11, "TypeParams"

    const-string v12, "ResultType"

    const-string v13, "IsInstanceFunction"

    const-string v14, "Doc"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->y:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "OverloadId"

    filled-new-array {v3, v2, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lcom/google/protobuf/z;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->A:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
