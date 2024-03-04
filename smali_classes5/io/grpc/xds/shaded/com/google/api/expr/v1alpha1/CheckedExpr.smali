.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

.field public static final EXPR_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_MAP_FIELD_NUMBER:I = 0x2

.field public static final SOURCE_INFO_FIELD_NUMBER:I = 0x5

.field public static final TYPE_MAP_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

.field private memoizedIsInitialized:B

.field private referenceMap_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

.field private typeMap_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->memoizedIsInitialized:B

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

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;-><init>()V

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/16 v5, 0x12

    if-eq v3, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x22

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object v6

    .line 14
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    iput-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-eqz v6, :cond_0

    .line 15
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    .line 16
    invoke-virtual {v6}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v6

    .line 19
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    iput-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v6, :cond_0

    .line 20
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    .line 21
    invoke-virtual {v6}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 22
    sget-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->typeMap_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x2

    .line 23
    :cond_6
    sget-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    .line 24
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 25
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 26
    iget-object v4, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->typeMap_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 27
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    .line 28
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_8

    .line 29
    sget-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->referenceMap_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x1

    .line 30
    :cond_8
    sget-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;->a:Lcom/google/protobuf/e1;

    .line 31
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 32
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 33
    iget-object v4, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->referenceMap_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 34
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;

    .line 35
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 37
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 41
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->referenceMap_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->referenceMap_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->typeMap_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->typeMap_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetReferenceMap()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->referenceMap_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetTypeMap()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->typeMap_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsReferenceMap(J)Z
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsTypeMap(J)Z
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    .line 4
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 5
    invoke-direct {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 8
    invoke-direct {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasSourceInfo()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasSourceInfo()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasSourceInfo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasExpr()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasExpr()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 15
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasExpr()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    return-object v0
.end method

.method public getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExprOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getReferenceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getReferenceMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceMapCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getReferenceMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceMapOrDefault(JLio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;

    :cond_0
    return-object p3
.end method

.method public getReferenceMapOrThrow(J)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    sget-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/4 v3, 0x2

    .line 7
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    sget-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/4 v3, 0x3

    .line 13
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceInfoOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/e;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getTypeMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMapCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getTypeMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMapOrDefault(JLio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    :cond_0
    return-object p3
.end method

.method public getTypeMapOrThrow(J)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasExpr()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceInfo()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasSourceInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasExpr()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    const-class v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    invoke-direct {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetReferenceMap()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;->a:Lcom/google/protobuf/e1;

    const/4 v2, 0x2

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeLongMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->internalGetTypeMap()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeLongMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->expr_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->sourceInfo_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
