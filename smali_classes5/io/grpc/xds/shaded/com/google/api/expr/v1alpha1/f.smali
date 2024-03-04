.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static C:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 22

    const-string v0, "\n%google/api/expr/v1alpha1/syntax.proto\u0012\u0018google.api.expr.v1alpha1\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"u\n\nParsedExpr\u0012,\n\u0004expr\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u00129\n\u000bsource_info\u0018\u0003 \u0001(\u000b2$.google.api.expr.v1alpha1.SourceInfo\"\u00c5\n\n\u0004Expr\u0012\n\n\u0002id\u0018\u0002 \u0001(\u0003\u00128\n\nconst_expr\u0018\u0003 \u0001(\u000b2\".google.api.expr.v1alpha1.ConstantH\u0000\u0012:\n\nident_expr\u0018\u0004 \u0001(\u000b2$.google.api.expr.v1alpha1.Expr.IdentH\u0000\u0012<\n\u000bselect_expr\u0018\u0005 \u0001(\u000b2%.google.api.expr.v1alpha1.Expr.SelectH\u0000\u00128\n\tcall_expr\u0018\u0006 \u0001(\u000b2#.google.api.expr.v1alpha1.Expr.CallH\u0000\u0012>\n\tlist_expr\u0018\u0007 \u0001(\u000b2).google.api.expr.v1alpha1.Expr.CreateListH\u0000\u0012B\n\u000bstruct_expr\u0018\u0008 \u0001(\u000b2+.google.api.expr.v1alpha1.Expr.CreateStructH\u0000\u0012J\n\u0012comprehension_expr\u0018\t \u0001(\u000b2,.google.api.expr.v1alpha1.Expr.ComprehensionH\u0000\u001a\u0015\n\u0005Ident\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u001a[\n\u0006Select\u0012/\n\u0007operand\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012\r\n\u0005field\u0018\u0002 \u0001(\t\u0012\u0011\n\ttest_only\u0018\u0003 \u0001(\u0008\u001av\n\u0004Call\u0012.\n\u0006target\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012\u0010\n\u0008function\u0018\u0002 \u0001(\t\u0012,\n\u0004args\u0018\u0003 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u001a>\n\nCreateList\u00120\n\u0008elements\u0018\u0001 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u001a\u0081\u0002\n\u000cCreateStruct\u0012\u0014\n\u000cmessage_name\u0018\u0001 \u0001(\t\u0012B\n\u0007entries\u0018\u0002 \u0003(\u000b21.google.api.expr.v1alpha1.Expr.CreateStruct.Entry\u001a\u0096\u0001\n\u0005Entry\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u0013\n\tfield_key\u0018\u0002 \u0001(\tH\u0000\u00121\n\u0007map_key\u0018\u0003 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprH\u0000\u0012-\n\u0005value\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprB\n\n\u0008key_kind\u001a\u00b5\u0002\n\rComprehension\u0012\u0010\n\u0008iter_var\u0018\u0001 \u0001(\t\u00122\n\niter_range\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012\u0010\n\u0008accu_var\u0018\u0003 \u0001(\t\u00121\n\taccu_init\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u00126\n\u000eloop_condition\u0018\u0005 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u00121\n\tloop_step\u0018\u0006 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012.\n\u0006result\u0018\u0007 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprB\u000b\n\texpr_kind\"\u00cd\u0002\n\u0008Constant\u00120\n\nnull_value\u0018\u0001 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000\u0012\u0014\n\nbool_value\u0018\u0002 \u0001(\u0008H\u0000\u0012\u0015\n\u000bint64_value\u0018\u0003 \u0001(\u0003H\u0000\u0012\u0016\n\u000cuint64_value\u0018\u0004 \u0001(\u0004H\u0000\u0012\u0016\n\u000cdouble_value\u0018\u0005 \u0001(\u0001H\u0000\u0012\u0016\n\u000cstring_value\u0018\u0006 \u0001(\tH\u0000\u0012\u0015\n\u000bbytes_value\u0018\u0007 \u0001(\u000cH\u0000\u00127\n\u000eduration_value\u0018\u0008 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0002\u0018\u0001H\u0000\u00129\n\u000ftimestamp_value\u0018\t \u0001(\u000b2\u001a.google.protobuf.TimestampB\u0002\u0018\u0001H\u0000B\u000f\n\rconstant_kind\"\u00e4\u0002\n\nSourceInfo\u0012\u0016\n\u000esyntax_version\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008location\u0018\u0002 \u0001(\t\u0012\u0014\n\u000cline_offsets\u0018\u0003 \u0003(\u0005\u0012F\n\tpositions\u0018\u0004 \u0003(\u000b23.google.api.expr.v1alpha1.SourceInfo.PositionsEntry\u0012I\n\u000bmacro_calls\u0018\u0005 \u0003(\u000b24.google.api.expr.v1alpha1.SourceInfo.MacroCallsEntry\u001a0\n\u000ePositionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0005:\u00028\u0001\u001aQ\n\u000fMacroCallsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u0012-\n\u0005value\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr:\u00028\u0001\"P\n\u000eSourcePosition\u0012\u0010\n\u0008location\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\u0005\u0012\u000c\n\u0004line\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006column\u0018\u0004 \u0001(\u0005Bn\n\u001ccom.google.api.expr.v1alpha1B\u000bSyntaxProtoP\u0001Z<google.golang.org/genproto/googleapis/api/expr/v1alpha1;expr\u00f8\u0001\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Expr"

    const-string v7, "SourceInfo"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->c:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Id"

    const-string v8, "ConstExpr"

    const-string v9, "IdentExpr"

    const-string v10, "SelectExpr"

    const-string v11, "CallExpr"

    const-string v12, "ListExpr"

    const-string v13, "StructExpr"

    const-string v14, "ComprehensionExpr"

    const-string v15, "ExprKind"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->e:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Name"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->g:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Operand"

    const-string v8, "Field"

    const-string v9, "TestOnly"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->i:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Target"

    const-string v8, "Function"

    const-string v9, "Args"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->k:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Elements"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->m:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v7, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "MessageName"

    const-string v9, "Entries"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v7, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->o:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v7, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Id"

    const-string v9, "FieldKey"

    const-string v10, "MapKey"

    const-string v11, "Value"

    const-string v12, "KeyKind"

    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v7, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->q:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "IterVar"

    const-string v13, "IterRange"

    const-string v14, "AccuVar"

    const-string v15, "AccuInit"

    const-string v16, "LoopCondition"

    const-string v17, "LoopStep"

    const-string v18, "Result"

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->s:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "NullValue"

    const-string v13, "BoolValue"

    const-string v14, "Int64Value"

    const-string v15, "Uint64Value"

    const-string v16, "DoubleValue"

    const-string v17, "StringValue"

    const-string v18, "BytesValue"

    const-string v19, "DurationValue"

    const-string v20, "TimestampValue"

    const-string v21, "ConstantKind"

    filled-new-array/range {v12 .. v21}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->u:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SyntaxVersion"

    const-string v6, "Location"

    const-string v7, "LineOffsets"

    const-string v8, "Positions"

    const-string v9, "MacroCalls"

    filled-new-array {v2, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->w:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Key"

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->y:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->A:Lcom/google/protobuf/Descriptors$b;

    .line 33
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Offset"

    const-string v3, "Line"

    const-string v4, "Column"

    filled-new-array {v6, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 34
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
