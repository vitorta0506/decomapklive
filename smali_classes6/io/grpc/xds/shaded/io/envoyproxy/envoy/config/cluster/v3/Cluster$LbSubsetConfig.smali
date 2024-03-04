.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LbSubsetConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetSelector;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

.field public static final DEFAULT_SUBSET_FIELD_NUMBER:I = 0x2

.field public static final FALLBACK_POLICY_FIELD_NUMBER:I = 0x1

.field public static final LIST_AS_ANY_FIELD_NUMBER:I = 0x7

.field public static final LOCALITY_WEIGHT_AWARE_FIELD_NUMBER:I = 0x4

.field public static final PANIC_MODE_ANY_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_LOCALITY_WEIGHT_FIELD_NUMBER:I = 0x5

.field public static final SUBSET_SELECTORS_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private defaultSubset_:Lcom/google/protobuf/Struct;

.field private fallbackPolicy_:I

.field private listAsAny_:Z

.field private localityWeightAware_:Z

.field private memoizedIsInitialized:B

.field private panicModeAny_:Z

.field private scaleLocalityWeight_:Z

.field private subsetSelectors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_c

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x28

    if-eq v4, v5, :cond_3

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    const/16 v5, 0x38

    if-eq v4, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->listAsAny_:Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->panicModeAny_:Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->scaleLocalityWeight_:Z

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->localityWeightAware_:Z

    goto :goto_0

    :cond_5
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_6

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 19
    :cond_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetSelector;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetSelector;

    .line 21
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    .line 22
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

    if-eqz v5, :cond_8

    .line 23
    invoke-virtual {v5}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v4

    .line 24
    :cond_8
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Struct;

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    .line 26
    invoke-virtual {v4}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

    goto/16 :goto_0

    .line 27
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 28
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 30
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_b

    .line 32
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    .line 33
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_c
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_d

    .line 35
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    .line 36
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$4600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    return p0
.end method

.method static synthetic access$4802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    return p1
.end method

.method static synthetic access$4902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$5000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->localityWeightAware_:Z

    return p1
.end method

.method static synthetic access$5202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->scaleLocalityWeight_:Z

    return p1
.end method

.method static synthetic access$5302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->panicModeAny_:Z

    return p1
.end method

.method static synthetic access$5402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->listAsAny_:Z

    return p1
.end method

.method static synthetic access$5500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->hasDefaultSubset()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->hasDefaultSubset()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->hasDefaultSubset()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultSubset()Lcom/google/protobuf/Struct;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultSubset()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getSubsetSelectorsList()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getSubsetSelectorsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getLocalityWeightAware()Z

    move-result v1

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getLocalityWeightAware()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getScaleLocalityWeight()Z

    move-result v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getScaleLocalityWeight()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getPanicModeAny()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getPanicModeAny()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getListAsAny()Z

    move-result v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getListAsAny()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 19
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    return-object v0
.end method

.method public getDefaultSubset()Lcom/google/protobuf/Struct;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultSubsetOrBuilder()Lcom/google/protobuf/u2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultSubset()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;

    :cond_0
    return-object v0
.end method

.method public getFallbackPolicyValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    return v0
.end method

.method public getListAsAny()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->listAsAny_:Z

    return v0
.end method

.method public getLocalityWeightAware()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->localityWeightAware_:Z

    return v0
.end method

.method public getPanicModeAny()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->panicModeAny_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getScaleLocalityWeight()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->scaleLocalityWeight_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;->NO_FALLBACK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultSubset()Lcom/google/protobuf/Struct;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    .line 9
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->localityWeightAware_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->scaleLocalityWeight_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->panicModeAny_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->listAsAny_:Z

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSubsetSelectors(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetSelector;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetSelector;

    return-object p1
.end method

.method public getSubsetSelectorsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubsetSelectorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetSelector;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    return-object v0
.end method

.method public getSubsetSelectorsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$c;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$c;

    return-object p1
.end method

.method public getSubsetSelectorsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasDefaultSubset()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->hasDefaultSubset()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultSubset()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getSubsetSelectorsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getSubsetSelectorsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getLocalityWeightAware()Z

    move-result v1

    .line 9
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getScaleLocalityWeight()Z

    move-result v1

    .line 11
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getPanicModeAny()Z

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getListAsAny()Z

    move-result v1

    .line 15
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;->NO_FALLBACK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig$LbSubsetFallbackPolicy;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->fallbackPolicy_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->defaultSubset_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->getDefaultSubset()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->subsetSelectors_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->localityWeightAware_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 9
    :cond_3
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->scaleLocalityWeight_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->panicModeAny_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 13
    :cond_5
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbSubsetConfig;->listAsAny_:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
