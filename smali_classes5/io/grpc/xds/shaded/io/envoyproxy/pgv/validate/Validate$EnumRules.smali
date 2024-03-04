.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumRules"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;
    }
.end annotation


# static fields
.field public static final CONST_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

.field public static final DEFINED_ONLY_FIELD_NUMBER:I = 0x2

.field public static final IN_FIELD_NUMBER:I = 0x3

.field public static final NOT_IN_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;",
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

.field private definedOnly_:Z

.field private in_:Lcom/google/protobuf/u0$g;

.field private memoizedIsInitialized:B

.field private notIn_:Lcom/google/protobuf/u0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x8

    if-nez v1, :cond_10

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_d

    if-eq v4, v3, :cond_c

    const/16 v6, 0x10

    if-eq v4, v6, :cond_b

    const/16 v6, 0x18

    if-eq v4, v6, :cond_9

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_6

    const/16 v6, 0x20

    if-eq v4, v6, :cond_4

    const/16 v6, 0x22

    if-eq v4, v6, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v4

    .line 15
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->q(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_2

    .line 17
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v5

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x8

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_3

    .line 19
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_5

    .line 21
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x8

    .line 22
    :cond_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v4

    .line 24
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->q(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_7

    .line 26
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v5

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x4

    .line 27
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_8

    .line 28
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->p(I)V

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_a

    .line 30
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x4

    .line 31
    :cond_a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto/16 :goto_0

    .line 32
    :cond_b
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->definedOnly_:Z

    goto/16 :goto_0

    .line 34
    :cond_c
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->const_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

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

    :goto_4
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_e

    .line 39
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    :cond_e
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_f

    .line 40
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    .line 41
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_10
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_11

    .line 43
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    :cond_11
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_12

    .line 44
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    .line 45
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 46
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
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$36100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$36200()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36300()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36502(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->const_:I

    return p1
.end method

.method static synthetic access$36602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->definedOnly_:Z

    return p1
.end method

.method static synthetic access$36700(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;)Lcom/google/protobuf/u0$g;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    return-object p0
.end method

.method static synthetic access$36702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    return-object p1
.end method

.method static synthetic access$36800(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;)Lcom/google/protobuf/u0$g;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    return-object p0
.end method

.method static synthetic access$36802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    return-object p1
.end method

.method static synthetic access$36902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    return p1
.end method

.method static synthetic access$37000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$37100()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37200(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$37300()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37400()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37500(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$37600()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->A()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasConst()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasConst()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getConst()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getConst()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasDefinedOnly()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasDefinedOnly()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasDefinedOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDefinedOnly()Z

    move-result v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDefinedOnly()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getInList()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getNotInList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getNotInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    :cond_8
    return v0
.end method

.method public getConst()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->const_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object v0
.end method

.method public getDefinedOnly()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->definedOnly_:Z

    return v0
.end method

.method public getIn(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    return-object v0
.end method

.method public getNotIn(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getNotInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->const_:I

    .line 4
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 6
    iget-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->definedOnly_:Z

    .line 7
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 9
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    .line 10
    invoke-interface {v5, v3}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v4

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getInList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 12
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 13
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    .line 14
    invoke-interface {v4, v2}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getNotInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDefinedOnly()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getConst()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hasDefinedOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDefinedOnly()Z

    move-result v1

    .line 7
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getInCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getInList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getNotInCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getNotInList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->B()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->const_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->definedOnly_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->in_:Lcom/google/protobuf/u0$g;

    invoke-interface {v3, v1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->notIn_:Lcom/google/protobuf/u0$g;

    invoke-interface {v2, v0}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
