.class final Lyg/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Lyg/e$a;

.field private final c:Z

.field final d:Lyg/d$a;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    .line 3
    iput-boolean p3, p0, Lyg/e$c;->c:Z

    .line 4
    new-instance p3, Lyg/e$a;

    invoke-direct {p3, p1}, Lyg/e$a;-><init>(Lokio/BufferedSource;)V

    iput-object p3, p0, Lyg/e$c;->b:Lyg/e$a;

    .line 5
    new-instance p1, Lyg/d$a;

    invoke-direct {p1, p2, p3}, Lyg/d$a;-><init>(ILokio/Source;)V

    iput-object p1, p0, Lyg/e$c;->d:Lyg/d$a;

    return-void
.end method

.method private a(Lyg/a$a;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_2

    .line 1
    iget-object v1, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v2, v1

    .line 2
    :cond_2
    invoke-static {p2, p3, v2}, Lyg/e;->e(IBS)I

    move-result p2

    .line 3
    iget-object p3, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, p3, p2}, Lyg/a$a;->data(ZILokio/BufferedSource;I)V

    .line 4
    iget-object p1, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    int-to-long p2, v2

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 5
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(Lyg/a$a;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p2, v0, :cond_3

    if-nez p4, :cond_2

    .line 1
    iget-object p4, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    .line 2
    iget-object v2, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    sub-int/2addr p2, v0

    .line 3
    invoke-static {v2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lio/grpc/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    .line 5
    iget-object p3, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p3

    .line 6
    :cond_0
    invoke-interface {p1, p4, v0, p3}, Lyg/a$a;->i(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_1
    new-array p1, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 8
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private c(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lyg/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyg/e$c;->b:Lyg/e$a;

    iput p1, v0, Lyg/e$a;->e:I

    iput p1, v0, Lyg/e$a;->b:I

    .line 2
    iput-short p2, v0, Lyg/e$a;->f:S

    .line 3
    iput-byte p3, v0, Lyg/e$a;->c:B

    .line 4
    iput p4, v0, Lyg/e$a;->d:I

    .line 5
    iget-object p1, p0, Lyg/e$c;->d:Lyg/d$a;

    invoke-virtual {p1}, Lyg/d$a;->l()V

    .line 6
    iget-object p1, p0, Lyg/e$c;->d:Lyg/d$a;

    invoke-virtual {p1}, Lyg/d$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private d(Lyg/a$a;IBI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    .line 1
    iget-object v0, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    .line 2
    invoke-direct {p0, p1, p4}, Lyg/e$c;->h(Lyg/a$a;I)V

    add-int/lit8 p2, p2, -0x5

    .line 3
    :cond_2
    invoke-static {p2, p3, v0}, Lyg/e;->e(IBS)I

    move-result p2

    .line 4
    invoke-direct {p0, p2, v0, p3, p4}, Lyg/e$c;->c(ISBI)Ljava/util/List;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 5
    sget-object v8, Lio/grpc/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    invoke-interface/range {v2 .. v8}, Lyg/a$a;->j(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V

    return-void

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 6
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private e(Lyg/a$a;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    if-nez p4, :cond_1

    .line 1
    iget-object p2, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    invoke-interface {p1, v0, p2, p4}, Lyg/a$a;->ping(ZII)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    .line 4
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private h(Lyg/a$a;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 2
    iget-object v3, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 3
    invoke-interface {p1, p2, v0, v3, v1}, Lyg/a$a;->priority(IIIZ)V

    return-void
.end method

.method private i(Lyg/a$a;IBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_0

    .line 1
    invoke-direct {p0, p1, p4}, Lyg/e$c;->h(Lyg/a$a;I)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 2
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private j(Lyg/a$a;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 1
    iget-object v0, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2
    :cond_0
    iget-object v1, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 3
    invoke-static {p2, p3, v0}, Lyg/e;->e(IBS)I

    move-result p2

    .line 4
    invoke-direct {p0, p2, v0, p3, p4}, Lyg/e$c;->c(ISBI)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-interface {p1, p4, v1, p2}, Lyg/a$a;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 6
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private k(Lyg/a$a;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_1

    .line 1
    iget-object p2, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    .line 2
    invoke-static {p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lio/grpc/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, p4, v1}, Lyg/a$a;->g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 5
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, p3, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private o(Lyg/a$a;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_9

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Lyg/a$a;->ackSettings()V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 2
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_8

    .line 4
    new-instance p3, Lyg/g;

    invoke-direct {p3}, Lyg/g;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 5
    iget-object v2, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    move-result v2

    .line 6
    iget-object v3, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_2

    const v4, 0xffffff

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, p4, [Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    const/4 v2, 0x7

    if-ltz v3, :cond_3

    goto :goto_1

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 8
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_3
    if-eqz v3, :cond_5

    if-ne v3, p4, :cond_4

    goto :goto_1

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 9
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 10
    :cond_5
    :goto_1
    :pswitch_4
    invoke-virtual {p3, v2, v0, v3}, Lyg/g;->e(III)Lyg/g;

    :goto_2
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 11
    :cond_6
    invoke-interface {p1, v0, p3}, Lyg/a$a;->h(ZLyg/g;)V

    .line 12
    invoke-virtual {p3}, Lyg/g;->b()I

    move-result p1

    if-ltz p1, :cond_7

    .line 13
    iget-object p1, p0, Lyg/e$c;->d:Lyg/d$a;

    invoke-virtual {p3}, Lyg/g;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lyg/d$a;->g(I)V

    :cond_7
    return-void

    :cond_8
    new-array p1, p4, [Ljava/lang/Object;

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    .line 15
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private p(Lyg/a$a;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v0, p2

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p4, v0, v1}, Lyg/a$a;->windowUpdate(IJ)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "windowSizeIncrement was 0"

    .line 3
    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public g1(Lyg/a$a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-static {v1}, Lyg/e;->d(Lokio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_1

    .line 3
    iget-object v0, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 4
    iget-object v3, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 5
    iget-object v4, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 6
    invoke-static {}, Lyg/e;->b()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lyg/e;->b()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v2, v4, v1, v0, v3}, Lyg/e$b;->b(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 7
    iget-object p1, p0, Lyg/e$c;->a:Lokio/BufferedSource;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->p(Lyg/a$a;IBI)V

    goto :goto_0

    .line 9
    :pswitch_1
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->b(Lyg/a$a;IBI)V

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->e(Lyg/a$a;IBI)V

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->j(Lyg/a$a;IBI)V

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->o(Lyg/a$a;IBI)V

    goto :goto_0

    .line 13
    :pswitch_5
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->k(Lyg/a$a;IBI)V

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->i(Lyg/a$a;IBI)V

    goto :goto_0

    .line 15
    :pswitch_7
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->d(Lyg/a$a;IBI)V

    goto :goto_0

    .line 16
    :pswitch_8
    invoke-direct {p0, p1, v1, v3, v4}, Lyg/e$c;->a(Lyg/a$a;IBI)V

    :goto_0
    return v2

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v0, p1}, Lyg/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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