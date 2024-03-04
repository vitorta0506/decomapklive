.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$ActionSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$g;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$h;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$i;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$j;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

.field public static final DESTINATION_CLUSTER_FIELD_NUMBER:I = 0x2

.field public static final DYNAMIC_METADATA_FIELD_NUMBER:I = 0x7

.field public static final EXTENSION_FIELD_NUMBER:I = 0x9

.field public static final GENERIC_KEY_FIELD_NUMBER:I = 0x5

.field public static final HEADER_VALUE_MATCH_FIELD_NUMBER:I = 0x6

.field public static final METADATA_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOTE_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final REQUEST_HEADERS_FIELD_NUMBER:I = 0x3

.field public static final SOURCE_CLUSTER_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private actionSpecifierCase_:I

.field private actionSpecifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1d

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_19

    const/16 v4, 0x12

    if-eq v2, v4, :cond_16

    const/16 v4, 0x1a

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 23
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData$b;

    .line 24
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto/16 :goto_0

    .line 26
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData$b;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData$b;

    .line 30
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 31
    :cond_9
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto/16 :goto_0

    .line 32
    :cond_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    .line 33
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch$b;

    move-result-object v5

    .line 34
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 35
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch$b;

    .line 36
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 37
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto/16 :goto_0

    .line 38
    :cond_d
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    .line 39
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey$b;

    move-result-object v5

    .line 40
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_f

    .line 41
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey$b;

    .line 42
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 43
    :cond_f
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto/16 :goto_0

    .line 44
    :cond_10
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    .line 45
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress$b;

    move-result-object v5

    .line 46
    :cond_11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_12

    .line 47
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress$b;

    .line 48
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 49
    :cond_12
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto/16 :goto_0

    .line 50
    :cond_13
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 51
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders$b;

    move-result-object v5

    .line 52
    :cond_14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_15

    .line 53
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders$b;

    .line 54
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 55
    :cond_15
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto/16 :goto_0

    .line 56
    :cond_16
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 57
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster$b;

    move-result-object v5

    .line 58
    :cond_17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_18

    .line 59
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster$b;

    .line 60
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 61
    :cond_18
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    goto/16 :goto_0

    .line 62
    :cond_19
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    if-ne v2, v3, :cond_1a

    .line 63
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster$b;

    move-result-object v5

    .line 64
    :cond_1a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_1b

    .line 65
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster$b;

    .line 66
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    .line 67
    :cond_1b
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_1c
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 68
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 69
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 70
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 72
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 73
    :cond_1d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$8300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    return p1
.end method

.method static synthetic access$8700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$8800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->y0:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getActionSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$ActionSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getActionSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$ActionSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDynamicMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDynamicMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getHeaderValueMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getHeaderValueMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 14
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getGenericKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getGenericKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 16
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getRemoteAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getRemoteAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 18
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getRequestHeaders()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getRequestHeaders()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 20
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDestinationCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDestinationCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 22
    :pswitch_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getSourceCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getSourceCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 24
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActionSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$ActionSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$ActionSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$ActionSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    return-object v0
.end method

.method public getDestinationCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationClusterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicMetadataOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getGenericKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    move-result-object v0

    return-object v0
.end method

.method public getGenericKeyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValueMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValueMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRemoteAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddressOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$h;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeadersOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    .line 22
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    .line 28
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSourceCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    move-result-object v0

    return-object v0
.end method

.method public getSourceClusterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$j;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasDestinationCluster()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDynamicMetadata()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExtension()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGenericKey()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeaderValueMatch()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemoteAddress()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestHeaders()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceCluster()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDynamicMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getHeaderValueMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getGenericKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getRemoteAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getRequestHeaders()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getDestinationCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->getSourceCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;->hashCode()I

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->z0:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$SourceCluster;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DestinationCluster;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RequestHeaders;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$RemoteAddress;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$GenericKey;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$HeaderValueMatch;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$DynamicMetaData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action$MetaData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit$Action;->actionSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
