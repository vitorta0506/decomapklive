.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UInt32Rules"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;
    }
.end annotation


# static fields
.field public static final CONST_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

.field public static final GTE_FIELD_NUMBER:I = 0x5

.field public static final GT_FIELD_NUMBER:I = 0x4

.field public static final IN_FIELD_NUMBER:I = 0x6

.field public static final LTE_FIELD_NUMBER:I = 0x3

.field public static final LT_FIELD_NUMBER:I = 0x2

.field public static final NOT_IN_FIELD_NUMBER:I = 0x7

.field public static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private const_:I

.field private gt_:I

.field private gte_:I

.field private in_:Lcom/google/protobuf/u0$g;

.field private lt_:I

.field private lte_:I

.field private memoizedIsInitialized:B

.field private notIn_:Lcom/google/protobuf/u0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_10

    const/16 v5, 0x8

    if-eq v3, v5, :cond_f

    const/16 v6, 0x10

    if-eq v3, v6, :cond_e

    const/16 v7, 0x18

    if-eq v3, v7, :cond_d

    const/16 v7, 0x20

    if-eq v3, v7, :cond_c

    const/16 v5, 0x28

    if-eq v3, v5, :cond_b

    const/16 v5, 0x30

    if-eq v3, v5, :cond_9

    const/16 v5, 0x32

    if-eq v3, v5, :cond_6

    const/16 v5, 0x38

    if-eq v3, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v3

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->q(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_2

    .line 17
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x40

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_3

    .line 19
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_5

    .line 21
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x40

    .line 22
    :cond_5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v3

    .line 24
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->q(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_7

    .line 26
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x20

    .line 27
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_8

    .line 28
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->p(I)V

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_a

    .line 30
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x20

    .line 31
    :cond_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto/16 :goto_0

    .line 32
    :cond_b
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    or-int/2addr v3, v6

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v3

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gte_:I

    goto/16 :goto_0

    .line 34
    :cond_c
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v3

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gt_:I

    goto/16 :goto_0

    .line 36
    :cond_d
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v3

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lte_:I

    goto/16 :goto_0

    .line 38
    :cond_e
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    .line 39
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v3

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lt_:I

    goto/16 :goto_0

    .line 40
    :cond_f
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    .line 41
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v3

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->const_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 43
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 44
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_11

    .line 45
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    :cond_11
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_12

    .line 46
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    .line 47
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_14

    .line 49
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    :cond_14
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_15

    .line 50
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    .line 51
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$11200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11300()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->const_:I

    return p1
.end method

.method static synthetic access$11702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lt_:I

    return p1
.end method

.method static synthetic access$11802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lte_:I

    return p1
.end method

.method static synthetic access$11902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gt_:I

    return p1
.end method

.method static synthetic access$12002(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gte_:I

    return p1
.end method

.method static synthetic access$12100(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;)Lcom/google/protobuf/u0$g;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    return-object p0
.end method

.method static synthetic access$12102(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    return-object p1
.end method

.method static synthetic access$12200(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;)Lcom/google/protobuf/u0$g;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    return-object p0
.end method

.method static synthetic access$12202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    return-object p1
.end method

.method static synthetic access$12302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    return p1
.end method

.method static synthetic access$12400(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$12500()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12600(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12700()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12800()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12900(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13000()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasConst()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasConst()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getConst()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getConst()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLt()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLt()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLt()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getLt()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getLt()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLte()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLte()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLte()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getLte()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getLte()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGt()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGt()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getGt()I

    move-result v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getGt()I

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGte()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGte()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGte()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getGte()I

    move-result v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getGte()I

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getInList()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getNotInList()Ljava/util/List;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getNotInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public getConst()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->const_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object v0
.end method

.method public getGt()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gt_:I

    return v0
.end method

.method public getGte()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gte_:I

    return v0
.end method

.method public getIn(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    return-object v0
.end method

.method public getLt()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lt_:I

    return v0
.end method

.method public getLte()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lte_:I

    return v0
.end method

.method public getNotIn(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getNotInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotInList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->const_:I

    .line 4
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 6
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lt_:I

    .line 7
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 8
    :cond_2
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 9
    iget v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lte_:I

    .line 10
    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 11
    :cond_3
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 12
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gt_:I

    .line 13
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 14
    :cond_4
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 15
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gte_:I

    .line 16
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 17
    :goto_1
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 18
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    .line 19
    invoke-interface {v5, v3}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v4

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getInList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 21
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 22
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    .line 23
    invoke-interface {v4, v2}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v3

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getNotInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 25
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasConst()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasGt()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGte()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLt()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLte()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getConst()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLt()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getLt()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasLte()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getLte()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGt()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getGt()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hasGte()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getGte()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getInCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getInList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getNotInCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getNotInList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->d()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->const_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lt_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->lte_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gt_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->gte_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v3, v1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_5
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v2, v0}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
