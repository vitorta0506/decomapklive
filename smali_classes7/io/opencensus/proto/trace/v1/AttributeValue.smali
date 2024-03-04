.class public final Lio/opencensus/proto/trace/v1/AttributeValue;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/trace/v1/AttributeValue$c;,
        Lio/opencensus/proto/trace/v1/AttributeValue$ValueCase;
    }
.end annotation


# static fields
.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/AttributeValue;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x4

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/AttributeValue;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/AttributeValue;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/AttributeValue;

    .line 2
    new-instance v0, Lio/opencensus/proto/trace/v1/AttributeValue$a;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/AttributeValue$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/AttributeValue$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/AttributeValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    const/16 v4, 0x21

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 14
    iput v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    .line 16
    iput v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    .line 18
    iput v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 20
    iget v4, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    if-ne v4, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->toBuilder()Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v2

    .line 22
    :cond_5
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 23
    check-cast v4, Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-virtual {v2, v4}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    .line 24
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
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
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/trace/v1/AttributeValue$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/trace/v1/AttributeValue;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/opencensus/proto/trace/v1/AttributeValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lio/opencensus/proto/trace/v1/AttributeValue;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    return p1
.end method

.method static synthetic access$600(Lio/opencensus/proto/trace/v1/AttributeValue;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/trace/v1/AttributeValue$c;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/AttributeValue;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/AttributeValue;->toBuilder()Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/trace/v1/AttributeValue;)Lio/opencensus/proto/trace/v1/AttributeValue$c;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/AttributeValue;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/AttributeValue;->toBuilder()Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/AttributeValue$c;->g0(Lio/opencensus/proto/trace/v1/AttributeValue;)Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/AttributeValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/opencensus/proto/trace/v1/AttributeValue;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/trace/v1/AttributeValue;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getValueCase()Lio/opencensus/proto/trace/v1/AttributeValue$ValueCase;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/AttributeValue;->getValueCase()Lio/opencensus/proto/trace/v1/AttributeValue$ValueCase;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    return v2

    .line 7
    :cond_3
    iget v3, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    if-eq v3, v0, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getDoubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/AttributeValue;->getDoubleValue()D

    move-result-wide v5

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getBoolValue()Z

    move-result v1

    .line 12
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/AttributeValue;->getBoolValue()Z

    move-result v3

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getIntValue()J

    move-result-wide v3

    .line 14
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/AttributeValue;->getIntValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getStringValue()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/AttributeValue;->getStringValue()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/TruncatableString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_9

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public getBoolValue()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/AttributeValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/AttributeValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/AttributeValue;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/AttributeValue;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

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
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/AttributeValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->PARSER:Lcom/google/protobuf/e2;

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

    .line 2
    iget v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_2
    iget v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_3
    iget v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 14
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 16
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStringValue()Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/TruncatableString;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueOrBuilder()Lio/opencensus/proto/trace/v1/k;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/TruncatableString;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValueCase()Lio/opencensus/proto/trace/v1/AttributeValue$ValueCase;
    .locals 1

    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/AttributeValue$ValueCase;->forNumber(I)Lio/opencensus/proto/trace/v1/AttributeValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasStringValue()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    invoke-static {}, Lio/opencensus/proto/trace/v1/AttributeValue;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getDoubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getBoolValue()Z

    move-result v1

    .line 7
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getIntValue()J

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->getStringValue()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TruncatableString;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
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
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/AttributeValue;

    const-class v2, Lio/opencensus/proto/trace/v1/AttributeValue$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->newBuilderForType()Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/AttributeValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->newBuilderForType()Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/trace/v1/AttributeValue$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/AttributeValue;->newBuilder()Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/AttributeValue$c;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/trace/v1/AttributeValue$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/trace/v1/AttributeValue$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/AttributeValue$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->toBuilder()Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/AttributeValue;->toBuilder()Lio/opencensus/proto/trace/v1/AttributeValue$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/trace/v1/AttributeValue$c;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/AttributeValue;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/AttributeValue;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/trace/v1/AttributeValue$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/AttributeValue$c;-><init>(Lio/opencensus/proto/trace/v1/AttributeValue$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/trace/v1/AttributeValue$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/AttributeValue$c;-><init>(Lio/opencensus/proto/trace/v1/AttributeValue$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/AttributeValue$c;->g0(Lio/opencensus/proto/trace/v1/AttributeValue;)Lio/opencensus/proto/trace/v1/AttributeValue$c;

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
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 7
    :cond_1
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 11
    :cond_2
    iget v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 12
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/AttributeValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 14
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
