.class public final Lio/opencensus/proto/stats/v1/Measurement;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/stats/v1/Measurement$c;,
        Lio/opencensus/proto/stats/v1/Measurement$ValueCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/Measurement;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x3

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final MEASURE_NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/stats/v1/Measurement;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAGS_FIELD_NUMBER:I = 0x1

.field public static final TIME_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile measureName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private tags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/proto/stats/v1/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private time_:Lcom/google/protobuf/Timestamp;

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/stats/v1/Measurement;

    invoke-direct {v0}, Lio/opencensus/proto/stats/v1/Measurement;-><init>()V

    sput-object v0, Lio/opencensus/proto/stats/v1/Measurement;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/Measurement;

    .line 2
    new-instance v0, Lio/opencensus/proto/stats/v1/Measurement$a;

    invoke-direct {v0}, Lio/opencensus/proto/stats/v1/Measurement$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

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
    iput p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/stats/v1/Measurement$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/Measurement;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_a

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-eq v4, v5, :cond_5

    const/16 v5, 0x19

    if-eq v4, v5, :cond_4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 16
    iget-object v5, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_2

    .line 17
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v4

    .line 18
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Timestamp;

    iput-object v5, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 20
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    .line 21
    iput v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    .line 23
    iput v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 26
    iput-object v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_7

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 28
    :cond_7
    iget-object v4, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    .line 29
    invoke-static {}, Lio/opencensus/proto/stats/v1/Tag;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 30
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 32
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_9

    .line 34
    iget-object p2, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    .line 35
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 37
    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_b

    .line 38
    iget-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    .line 39
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/stats/v1/Measurement$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1100(Lio/opencensus/proto/stats/v1/Measurement;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lio/opencensus/proto/stats/v1/Measurement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/opencensus/proto/stats/v1/Measurement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/opencensus/proto/stats/v1/Measurement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lio/opencensus/proto/stats/v1/Measurement;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$802(Lio/opencensus/proto/stats/v1/Measurement;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lio/opencensus/proto/stats/v1/Measurement;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    return p1
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/Measurement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/e;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/Measurement;

    invoke-virtual {v0}, Lio/opencensus/proto/stats/v1/Measurement;->toBuilder()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/stats/v1/Measurement;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/Measurement;

    invoke-virtual {v0}, Lio/opencensus/proto/stats/v1/Measurement;->toBuilder()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->i0(Lio/opencensus/proto/stats/v1/Measurement;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measurement;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/stats/v1/Measurement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/opencensus/proto/stats/v1/Measurement;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/stats/v1/Measurement;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTagsList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getTagsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getMeasureName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getMeasureName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->hasTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->hasTime()Z

    move-result v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->hasTime()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getValueCase()Lio/opencensus/proto/stats/v1/Measurement$ValueCase;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getValueCase()Lio/opencensus/proto/stats/v1/Measurement$ValueCase;

    move-result-object v3

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_8

    return v2

    .line 15
    :cond_8
    iget v3, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getIntValue()J

    move-result-wide v3

    .line 17
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getIntValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getDoubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 19
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getDoubleValue()D

    move-result-wide v5

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    goto :goto_5

    :goto_6
    if-eqz v1, :cond_c

    .line 21
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getDefaultInstanceForType()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getDefaultInstanceForType()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/Measurement;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIntValue()J
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMeasureName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMeasureNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

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
            "Lio/opencensus/proto/stats/v1/Measurement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
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

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    .line 4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getMeasureNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 6
    iget-object v2, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 7
    :cond_2
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 10
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v0

    add-int/2addr v1, v0

    .line 11
    :cond_3
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 12
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 14
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 15
    :cond_4
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v1, v0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 18
    iput v1, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v1
.end method

.method public getTags(I)Lio/opencensus/proto/stats/v1/Tag;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/Tag;

    return-object p1
.end method

.method public getTagsCount()I
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/proto/stats/v1/Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    return-object v0
.end method

.method public getTagsOrBuilder(I)Lio/opencensus/proto/stats/v1/g;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/g;

    return-object p1
.end method

.method public getTagsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/opencensus/proto/stats/v1/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValueCase()Lio/opencensus/proto/stats/v1/Measurement$ValueCase;
    .locals 1

    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    invoke-static {v0}, Lio/opencensus/proto/stats/v1/Measurement$ValueCase;->forNumber(I)Lio/opencensus/proto/stats/v1/Measurement$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasTime()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

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
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measurement;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTagsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTagsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getMeasureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getIntValue()J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getDoubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

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
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/e;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/stats/v1/Measurement;

    const-class v2, Lio/opencensus/proto/stats/v1/Measurement$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/stats/v1/Measurement;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->newBuilderForType()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->newBuilderForType()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measurement;->newBuilder()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/stats/v1/Measurement$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/stats/v1/Measurement$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/stats/v1/Measurement$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->toBuilder()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->toBuilder()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement;->DEFAULT_INSTANCE:Lio/opencensus/proto/stats/v1/Measurement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/stats/v1/Measurement$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement$c;-><init>(Lio/opencensus/proto/stats/v1/Measurement$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/stats/v1/Measurement$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement$c;-><init>(Lio/opencensus/proto/stats/v1/Measurement$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->i0(Lio/opencensus/proto/stats/v1/Measurement;)Lio/opencensus/proto/stats/v1/Measurement$c;

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

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement;->tags_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/o1;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getMeasureNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement;->measureName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 8
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 9
    :cond_2
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 12
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 13
    :cond_3
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
