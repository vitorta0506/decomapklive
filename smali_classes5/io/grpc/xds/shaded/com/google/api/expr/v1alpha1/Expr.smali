.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$e;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$g;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$f;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$d;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$i;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$h;
    }
.end annotation


# static fields
.field public static final CALL_EXPR_FIELD_NUMBER:I = 0x6

.field public static final COMPREHENSION_EXPR_FIELD_NUMBER:I = 0x9

.field public static final CONST_EXPR_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

.field public static final IDENT_EXPR_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final LIST_EXPR_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_EXPR_FIELD_NUMBER:I = 0x5

.field public static final STRUCT_EXPR_FIELD_NUMBER:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private exprKindCase_:I

.field private exprKind_:Ljava/lang/Object;

.field private id_:J

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_18

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    const/16 v4, 0x10

    if-eq v2, v4, :cond_16

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-eq v2, v4, :cond_13

    const/16 v4, 0x22

    if-eq v2, v4, :cond_10

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_d

    const/16 v4, 0x32

    if-eq v2, v4, :cond_a

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x42

    if-eq v2, v4, :cond_4

    const/16 v4, 0x4a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension$b;->h0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension$b;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 23
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$b;

    .line 24
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    goto/16 :goto_0

    .line 26
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList$b;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList$b;

    .line 30
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    .line 31
    :cond_9
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    goto/16 :goto_0

    .line 32
    :cond_a
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    .line 33
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call$b;

    move-result-object v5

    .line 34
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 35
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call$b;

    .line 36
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    .line 37
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    goto/16 :goto_0

    .line 38
    :cond_d
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    .line 39
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select$b;

    move-result-object v5

    .line 40
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    if-eqz v5, :cond_f

    .line 41
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select$b;->g0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select$b;

    .line 42
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    .line 43
    :cond_f
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    goto/16 :goto_0

    .line 44
    :cond_10
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    .line 45
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident$b;

    move-result-object v5

    .line 46
    :cond_11
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    if-eqz v5, :cond_12

    .line 47
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident$b;->g0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident$b;

    .line 48
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    .line 49
    :cond_12
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    goto/16 :goto_0

    .line 50
    :cond_13
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 51
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant$c;

    move-result-object v5

    .line 52
    :cond_14
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    if-eqz v5, :cond_15

    .line 53
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant$c;->h0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant$c;

    .line 54
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant$c;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    .line 55
    :cond_15
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    goto/16 :goto_0

    .line 56
    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->id_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_17
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 58
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 59
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 62
    :cond_18
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$8200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8402(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->id_:J

    return-wide p1
.end method

.method static synthetic access$8502(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8602(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    return p1
.end method

.method static synthetic access$8700(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$8800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getId()J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getExprKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getExprKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v5

    .line 7
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getComprehensionExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getComprehensionExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getStructExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getStructExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 12
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getListExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getListExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 14
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getCallExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getCallExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 16
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getSelectExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getSelectExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 18
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getIdentExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getIdentExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 20
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getConstExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getConstExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 22
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v5

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCallExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    move-result-object v0

    return-object v0
.end method

.method public getCallExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    move-result-object v0

    return-object v0
.end method

.method public getComprehensionExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    move-result-object v0

    return-object v0
.end method

.method public getComprehensionExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    move-result-object v0

    return-object v0
.end method

.method public getConstExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    move-result-object v0

    return-object v0
.end method

.method public getConstExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/b;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object v0
.end method

.method public getExprKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->id_:J

    return-wide v0
.end method

.method public getIdentExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    move-result-object v0

    return-object v0
.end method

.method public getIdentExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$h;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    move-result-object v0

    return-object v0
.end method

.method public getListExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    move-result-object v0

    return-object v0
.end method

.method public getListExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSelectExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    move-result-object v0

    return-object v0
.end method

.method public getSelectExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->id_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v3, 0x2

    .line 3
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    .line 6
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    .line 23
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    .line 24
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStructExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    move-result-object v0

    return-object v0
.end method

.method public getStructExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasCallExpr()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasComprehensionExpr()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConstExpr()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdentExpr()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListExpr()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelectExpr()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStructExpr()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getId()J

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getComprehensionExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getStructExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getListExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getCallExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getSelectExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getIdentExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getConstExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    const-class v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-direct {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Constant;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Ident;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Select;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Call;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateList;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->exprKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$Comprehension;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
