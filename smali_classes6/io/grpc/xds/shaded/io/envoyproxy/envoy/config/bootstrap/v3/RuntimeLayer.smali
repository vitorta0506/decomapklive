.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$e;
    }
.end annotation


# static fields
.field public static final ADMIN_LAYER_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

.field public static final DISK_LAYER_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RTDS_LAYER_FIELD_NUMBER:I = 0x5

.field public static final STATIC_LAYER_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private layerSpecifierCase_:I

.field private layerSpecifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    const/16 v4, 0xa

    if-eq v2, v4, :cond_d

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_a

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 16
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;

    move-result-object v5

    .line 17
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 18
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;

    .line 19
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    .line 20
    :cond_3
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    goto :goto_0

    .line 21
    :cond_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 22
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;

    move-result-object v5

    .line 23
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 24
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;

    .line 25
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    .line 26
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    goto :goto_0

    .line 27
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 28
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;

    move-result-object v5

    .line 29
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 30
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    .line 32
    :cond_9
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    goto/16 :goto_0

    .line 33
    :cond_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 34
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Struct;

    invoke-virtual {v2}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v5

    .line 35
    :cond_b
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 36
    check-cast v2, Lcom/google/protobuf/Struct;

    invoke-virtual {v5, v2}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    .line 37
    invoke-virtual {v5}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    .line 38
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    goto/16 :goto_0

    .line 39
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 40
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_e
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 41
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 42
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 46
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$3100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    return p1
.end method

.method static synthetic access$3600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getLayerSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getLayerSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 7
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getRtdsLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getRtdsLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getAdminLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getAdminLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDiskLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDiskLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getStaticLayer()Lcom/google/protobuf/Struct;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getStaticLayer()Lcom/google/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 16
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getAdminLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v0

    return-object v0
.end method

.method public getAdminLayerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    return-object v0
.end method

.method public getDiskLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v0

    return-object v0
.end method

.method public getDiskLayerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v0

    return-object v0
.end method

.method public getLayerSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRtdsLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object v0

    return-object v0
.end method

.method public getRtdsLayerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

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
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Struct;

    .line 6
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStaticLayer()Lcom/google/protobuf/Struct;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getStaticLayerOrBuilder()Lcom/google/protobuf/u2;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAdminLayer()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDiskLayer()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRtdsLayer()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStaticLayer()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x2

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getRtdsLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getAdminLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDiskLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getStaticLayer()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->layerSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
