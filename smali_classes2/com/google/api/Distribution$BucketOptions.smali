.class public final Lcom/google/api/Distribution$BucketOptions;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/Distribution$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BucketOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$BucketOptions$b;,
        Lcom/google/api/Distribution$BucketOptions$OptionsCase;,
        Lcom/google/api/Distribution$BucketOptions$Explicit;,
        Lcom/google/api/Distribution$BucketOptions$c;,
        Lcom/google/api/Distribution$BucketOptions$Exponential;,
        Lcom/google/api/Distribution$BucketOptions$d;,
        Lcom/google/api/Distribution$BucketOptions$Linear;,
        Lcom/google/api/Distribution$BucketOptions$e;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

.field public static final EXPLICIT_BUCKETS_FIELD_NUMBER:I = 0x3

.field public static final EXPONENTIAL_BUCKETS_FIELD_NUMBER:I = 0x2

.field public static final LINEAR_BUCKETS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Distribution$BucketOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private optionsCase_:I

.field private options_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-direct {v0}, Lcom/google/api/Distribution$BucketOptions;-><init>()V

    sput-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    .line 2
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$a;

    invoke-direct {v0}, Lcom/google/api/Distribution$BucketOptions$a;-><init>()V

    sput-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lcom/google/api/Distribution$BucketOptions;->memoizedIsInitialized:B

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
    iput p1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/google/api/Distribution$BucketOptions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v2, Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 16
    invoke-virtual {v2}, Lcom/google/api/Distribution$BucketOptions$Explicit;->toBuilder()Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object v5

    .line 17
    :cond_2
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    .line 18
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 19
    check-cast v2, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {v5, v2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    .line 20
    invoke-virtual {v5}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Y()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 21
    :cond_3
    iput v3, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    goto :goto_0

    .line 22
    :cond_4
    iget v2, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 23
    iget-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v2, Lcom/google/api/Distribution$BucketOptions$Exponential;

    .line 24
    invoke-virtual {v2}, Lcom/google/api/Distribution$BucketOptions$Exponential;->toBuilder()Lcom/google/api/Distribution$BucketOptions$Exponential$b;

    move-result-object v5

    .line 25
    :cond_5
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    .line 26
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 27
    check-cast v2, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {v5, v2}, Lcom/google/api/Distribution$BucketOptions$Exponential$b;->d0(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Exponential$b;

    .line 28
    invoke-virtual {v5}, Lcom/google/api/Distribution$BucketOptions$Exponential$b;->Y()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 29
    :cond_6
    iput v3, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    goto :goto_0

    .line 30
    :cond_7
    iget v2, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    if-ne v2, v3, :cond_8

    .line 31
    iget-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v2, Lcom/google/api/Distribution$BucketOptions$Linear;

    .line 32
    invoke-virtual {v2}, Lcom/google/api/Distribution$BucketOptions$Linear;->toBuilder()Lcom/google/api/Distribution$BucketOptions$Linear$b;

    move-result-object v5

    .line 33
    :cond_8
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Linear;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    .line 34
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 35
    check-cast v2, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-virtual {v5, v2}, Lcom/google/api/Distribution$BucketOptions$Linear$b;->d0(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Linear$b;

    .line 36
    invoke-virtual {v5}, Lcom/google/api/Distribution$BucketOptions$Linear$b;->Y()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 37
    :cond_9
    iput v3, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I
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

    .line 38
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 42
    throw p1

    .line 43
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/api/Distribution$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$4300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/google/api/Distribution$BucketOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/api/Distribution$BucketOptions;I)I
    .locals 0

    iput p1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return p1
.end method

.method static synthetic access$4700(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/v;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Distribution$BucketOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->toBuilder()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->toBuilder()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$BucketOptions$b;->g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Distribution$BucketOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/api/Distribution$BucketOptions;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/api/Distribution$BucketOptions;

    .line 4
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    if-eq v1, v0, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Distribution$BucketOptions$Explicit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Distribution$BucketOptions$Exponential;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Distribution$BucketOptions$Linear;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 9
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getDefaultInstanceForType()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getDefaultInstanceForType()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public getExplicitBucketsOrBuilder()Lcom/google/api/Distribution$BucketOptions$c;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    return-object v0
.end method

.method public getExponentialBucketsOrBuilder()Lcom/google/api/Distribution$BucketOptions$d;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    return-object v0
.end method

.method public getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Linear;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v0

    return-object v0
.end method

.method public getLinearBucketsOrBuilder()Lcom/google/api/Distribution$BucketOptions$e;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Linear;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1

    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->forNumber(I)Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Distribution$BucketOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/e2;

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
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v1, Lcom/google/api/Distribution$BucketOptions$Linear;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v1, Lcom/google/api/Distribution$BucketOptions$Exponential;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasExplicitBuckets()Z
    .locals 2

    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExponentialBuckets()Z
    .locals 2

    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLinearBuckets()Z
    .locals 2

    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

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
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Distribution$BucketOptions$Exponential;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Distribution$BucketOptions$Linear;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/v;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/Distribution$BucketOptions;

    const-class v2, Lcom/google/api/Distribution$BucketOptions$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/api/Distribution$BucketOptions;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/api/Distribution$BucketOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/api/Distribution$BucketOptions$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->newBuilder()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/Distribution$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->newBuilderForType()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->newBuilderForType()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/api/Distribution$BucketOptions;

    invoke-direct {p1}, Lcom/google/api/Distribution$BucketOptions;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/api/Distribution$BucketOptions$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/api/Distribution$BucketOptions$b;

    invoke-direct {v0, v1}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Lcom/google/api/Distribution$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$b;

    invoke-direct {v0, v1}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Lcom/google/api/Distribution$a;)V

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$BucketOptions$b;->g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->toBuilder()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions;->toBuilder()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

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
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
