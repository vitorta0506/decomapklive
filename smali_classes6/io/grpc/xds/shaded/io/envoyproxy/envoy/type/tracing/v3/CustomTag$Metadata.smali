.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0x3

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field public static final METADATA_KEY_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile defaultValue_:Ljava/lang/Object;

.field private kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

.field private memoizedIsInitialized:B

.field private metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 14
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey$c;

    move-result-object v5

    .line 17
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    if-eqz v5, :cond_0

    .line 18
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey$c;

    .line 19
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    goto :goto_0

    .line 20
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind$c;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind$c;

    .line 24
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 26
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 30
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    return-object p1
.end method

.method static synthetic access$3602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    return-object p1
.end method

.method static synthetic access$3700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/b;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasKind()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasKind()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasKind()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getKind()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getKind()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasMetadataKey()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasMetadataKey()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasMetadataKey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getMetadataKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getMetadataKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getKind()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKindOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getKind()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataKeyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getMetadataKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getKind()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getMetadataKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasKind()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadataKey()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasKind()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getKind()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->hasMetadataKey()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getMetadataKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->kind_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getKind()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKind;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->metadataKey_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->getMetadataKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v3/MetadataKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v3/CustomTag$Metadata;->defaultValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
