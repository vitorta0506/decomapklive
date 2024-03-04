.class public final Lio/opencensus/proto/trace/v1/Span$TimeEvent;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/Span$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$ValueCase;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$d;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvent$b;
    }
.end annotation


# static fields
.field public static final ANNOTATION_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent;

.field public static final MESSAGE_EVENT_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private time_:Lcom/google/protobuf/Timestamp;

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    .line 2
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$a;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;->g0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    .line 18
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 23
    check-cast v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;->i0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;

    .line 24
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    goto :goto_0

    .line 26
    :cond_7
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 30
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
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

    .line 34
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 36
    throw p1

    .line 37
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$5300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5502(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$5602(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lio/opencensus/proto/trace/v1/Span$TimeEvent;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    return p1
.end method

.method static synthetic access$5800(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->h0(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->hasTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->hasTime()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->hasTime()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getValueCase()Lio/opencensus/proto/trace/v1/Span$TimeEvent$ValueCase;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getValueCase()Lio/opencensus/proto/trace/v1/Span$TimeEvent$ValueCase;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_6

    return v3

    .line 11
    :cond_6
    iget v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_9

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getMessageEvent()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getMessageEvent()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getAnnotation()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getAnnotation()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :goto_4
    if-eqz v1, :cond_a

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public getAnnotation()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationOrBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$b;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    return-object v0
.end method

.method public getMessageEvent()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMessageEventOrBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    .line 6
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValueCase()Lio/opencensus/proto/trace/v1/Span$TimeEvent$ValueCase;
    .locals 1

    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$ValueCase;->forNumber(I)Lio/opencensus/proto/trace/v1/Span$TimeEvent$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotation()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessageEvent()Z
    .locals 2

    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTime()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;

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
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getMessageEvent()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getAnnotation()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
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
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    const-class v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->newBuilderForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->newBuilderForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->newBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/Span$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;-><init>(Lio/opencensus/proto/trace/v1/Span$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;-><init>(Lio/opencensus/proto/trace/v1/Span$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->h0(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

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
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->value_:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
