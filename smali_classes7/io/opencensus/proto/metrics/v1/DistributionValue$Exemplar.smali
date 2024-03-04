.class public final Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/metrics/v1/DistributionValue$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/metrics/v1/DistributionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Exemplar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;,
        Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;
    }
.end annotation


# static fields
.field public static final ATTACHMENTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private attachments_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private timestamp_:Lcom/google/protobuf/Timestamp;

.field private value_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    invoke-direct {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;-><init>()V

    sput-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    .line 2
    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$a;

    invoke-direct {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->memoizedIsInitialized:B

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->value_:D

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
    iput-byte p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    const/16 v5, 0x9

    if-eq v3, v5, :cond_5

    const/16 v5, 0x12

    if-eq v3, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 13
    sget-object v3, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->attachments_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x4

    .line 14
    :cond_2
    sget-object v3, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;->a:Lcom/google/protobuf/e1;

    .line 15
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 16
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 17
    iget-object v4, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->attachments_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 18
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 20
    iget-object v4, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_4

    .line 21
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v3

    .line 22
    :cond_4
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Timestamp;

    iput-object v4, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3, v4}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 24
    invoke-virtual {v3}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v3

    iput-wide v3, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->value_:D
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

    .line 26
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 27
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 31
    throw p1

    .line 32
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3002(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;D)D
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->value_:D

    return-wide p1
.end method

.method static synthetic access$3102(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$3200(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->attachments_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$3202(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->attachments_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$3302(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->bitField0_:I

    return p1
.end method

.method static synthetic access$3400(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->u:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetAttachments()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->attachments_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->toBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->toBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->i0(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsAttachments(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getValue()D

    move-result-wide v3

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->hasTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 11
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 12
    invoke-direct {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getAttachments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getAttachmentsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentsCount()I
    .locals 1

    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAttachmentsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getAttachmentsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->PARSER:Lcom/google/protobuf/e2;

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
    iget-wide v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->value_:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 3
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

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

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    sget-object v3, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/4 v3, 0x3

    .line 11
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->value_:D

    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

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
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_1
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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
    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    const-class v2, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

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
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->newBuilderForType()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->newBuilderForType()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->newBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->toBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->toBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->DEFAULT_INSTANCE:Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;-><init>(Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;-><init>(Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->i0(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

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
    iget-wide v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->value_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->internalGetAttachments()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;->a:Lcom/google/protobuf/e1;

    const/4 v2, 0x3

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
