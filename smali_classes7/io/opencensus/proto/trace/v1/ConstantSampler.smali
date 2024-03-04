.class public final Lio/opencensus/proto/trace/v1/ConstantSampler;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/trace/v1/ConstantSampler$b;,
        Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;
    }
.end annotation


# static fields
.field public static final DECISION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/ConstantSampler;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/ConstantSampler;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private decision_:I

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/ConstantSampler;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/ConstantSampler;

    .line 2
    new-instance v0, Lio/opencensus/proto/trace/v1/ConstantSampler$a;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/ConstantSampler$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

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
    iput-byte p1, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/ConstantSampler$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/ConstantSampler;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/ConstantSampler;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 14
    iput v2, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 16
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 20
    throw p1

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/trace/v1/ConstantSampler$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/trace/v1/ConstantSampler;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/opencensus/proto/trace/v1/ConstantSampler;)I
    .locals 0

    iget p0, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    return p0
.end method

.method static synthetic access$402(Lio/opencensus/proto/trace/v1/ConstantSampler;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    return p1
.end method

.method static synthetic access$500(Lio/opencensus/proto/trace/v1/ConstantSampler;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/i;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/ConstantSampler;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->toBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/trace/v1/ConstantSampler;)Lio/opencensus/proto/trace/v1/ConstantSampler$b;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/ConstantSampler;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->toBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/ConstantSampler$b;->g0(Lio/opencensus/proto/trace/v1/ConstantSampler;)Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/ConstantSampler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/opencensus/proto/trace/v1/ConstantSampler;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/trace/v1/ConstantSampler;

    .line 4
    iget v1, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    iget v2, p1, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getDecision()Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;
    .locals 1

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;->valueOf(I)Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;->UNRECOGNIZED:Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;

    :cond_0
    return-object v0
.end method

.method public getDecisionValue()I
    .locals 1

    iget v0, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/ConstantSampler;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/ConstantSampler;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/ConstantSampler;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/ConstantSampler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->PARSER:Lcom/google/protobuf/e2;

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
    iget v1, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    sget-object v2, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;->ALWAYS_OFF:Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
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
    invoke-static {}, Lio/opencensus/proto/trace/v1/ConstantSampler;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/i;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/ConstantSampler;

    const-class v2, Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->newBuilderForType()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/ConstantSampler;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->newBuilderForType()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/trace/v1/ConstantSampler$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/ConstantSampler;->newBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/ConstantSampler$b;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/trace/v1/ConstantSampler$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/ConstantSampler$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->toBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/ConstantSampler;->toBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/trace/v1/ConstantSampler$b;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/ConstantSampler;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/ConstantSampler;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/ConstantSampler$b;-><init>(Lio/opencensus/proto/trace/v1/ConstantSampler$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/trace/v1/ConstantSampler$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/ConstantSampler$b;-><init>(Lio/opencensus/proto/trace/v1/ConstantSampler$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/ConstantSampler$b;->g0(Lio/opencensus/proto/trace/v1/ConstantSampler;)Lio/opencensus/proto/trace/v1/ConstantSampler$b;

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
    iget v0, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    sget-object v1, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;->ALWAYS_OFF:Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lio/opencensus/proto/trace/v1/ConstantSampler;->decision_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
