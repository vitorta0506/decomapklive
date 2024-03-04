.class final Lcom/google/protobuf/p$e;
.super Lcom/google/protobuf/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final g:Ljava/nio/ByteBuffer;

.field private final h:Z

.field private final i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:Z

.field private p:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/p;-><init>(Lcom/google/protobuf/p$a;)V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/google/protobuf/p$e;->p:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/p$e;->g:Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {p1}, Lcom/google/protobuf/m3;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/p$e;->i:J

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/p$e;->j:J

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    .line 8
    iput-wide v0, p0, Lcom/google/protobuf/p$e;->l:J

    .line 9
    iput-boolean p2, p0, Lcom/google/protobuf/p$e;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZLcom/google/protobuf/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/p$e;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private R(J)I
    .locals 2

    iget-wide v0, p0, Lcom/google/protobuf/p$e;->i:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method static S()Z
    .locals 1

    invoke-static {}, Lcom/google/protobuf/m3;->K()Z

    move-result v0

    return v0
.end method

.method private Y()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->j:J

    iget v2, p0, Lcom/google/protobuf/p$e;->m:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/p$e;->j:J

    .line 2
    iget-wide v2, p0, Lcom/google/protobuf/p$e;->l:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    .line 3
    iget v2, p0, Lcom/google/protobuf/p$e;->p:I

    if-le v3, v2, :cond_0

    sub-int/2addr v3, v2

    .line 4
    iput v3, p0, Lcom/google/protobuf/p$e;->m:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lcom/google/protobuf/p$e;->j:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/protobuf/p$e;->m:I

    :goto_0
    return-void
.end method

.method private Z()I
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/p$e;->j:J

    iget-wide v2, p0, Lcom/google/protobuf/p$e;->k:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private c0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->Z()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->d0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->e0()V

    :goto_0
    return-void
.end method

.method private d0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1
    iget-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/protobuf/p$e;->k:J

    invoke-static {v1, v2}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private e0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->T()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private f0(JJ)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/p$e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/p$e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/p$e;->g:Ljava/nio/ByteBuffer;

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/p$e;->R(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-direct {p0, p3, p4}, Lcom/google/protobuf/p$e;->R(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    iget-object p1, p0, Lcom/google/protobuf/p$e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    throw p1
.end method


# virtual methods
.method public A()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->W()J

    move-result-wide v0

    return-wide v0
.end method

.method public B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TT;>;",
            "Lcom/google/protobuf/f0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/p;->b()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/p$e;->q(I)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/google/protobuf/p;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/p;->a:I

    .line 5
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o1;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/p$e;->a(I)V

    .line 7
    iget p2, p0, Lcom/google/protobuf/p;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/p;->a:I

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->e()I

    move-result p2

    if-nez p2, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/protobuf/p$e;->p(I)V

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public C(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/p;->b()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/p$e;->q(I)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/google/protobuf/p;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/p;->a:I

    .line 5
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/o1$a;->f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/p$e;->a(I)V

    .line 7
    iget p1, p0, Lcom/google/protobuf/p;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/p;->a:I

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->e()I

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/protobuf/p$e;->p(I)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public D()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    .line 2
    iget-wide v2, p0, Lcom/google/protobuf/p$e;->j:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/m3;->w(J)B

    move-result v0

    if-ltz v0, :cond_1

    .line 4
    iput-wide v4, p0, Lcom/google/protobuf/p$e;->k:J

    return v0

    .line 5
    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/p$e;->j:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    add-long v6, v4, v2

    .line 6
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto :goto_1

    :cond_3
    add-long v4, v6, v2

    .line 7
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move-wide v6, v4

    goto :goto_1

    :cond_5
    add-long v6, v4, v2

    .line 8
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_6

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_6
    add-long v4, v6, v2

    .line 9
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_4

    add-long v6, v4, v2

    .line 10
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    if-gez v1, :cond_7

    add-long v4, v6, v2

    .line 11
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    if-gez v1, :cond_4

    add-long v6, v4, v2

    .line 12
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    if-gez v1, :cond_7

    add-long v4, v6, v2

    .line 13
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    if-gez v1, :cond_4

    add-long v6, v4, v2

    .line 14
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    if-gez v1, :cond_7

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->X()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 16
    :cond_7
    :goto_1
    iput-wide v6, p0, Lcom/google/protobuf/p$e;->k:J

    return v0
.end method

.method public F()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->U()I

    move-result v0

    return v0
.end method

.method public G()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->V()J

    move-result-wide v0

    return-wide v0
.end method

.method public H()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/p;->c(I)I

    move-result v0

    return v0
.end method

.method public I()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/p;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public J()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->Z()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 3
    new-array v1, v0, [B

    .line 4
    iget-wide v2, p0, Lcom/google/protobuf/p$e;->k:J

    const-wide/16 v5, 0x0

    int-to-long v9, v0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/m3;->p(J[BJJ)V

    .line 5
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/u0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 6
    iget-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public K()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->Z()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 3
    iget-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    invoke-direct {p0, v1, v2}, Lcom/google/protobuf/p$e;->R(J)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/protobuf/p$e;->g:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n3;->g(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-wide v2, p0, Lcom/google/protobuf/p$e;->k:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/p$e;->k:J

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public L()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/p$e;->n:I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/p$e;->n:I

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/google/protobuf/p$e;->n:I

    return v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public M()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    return v0
.end method

.method public N()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->W()J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/p$e;->b0(I)V

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->a0()V

    .line 5
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/p$e;->a(I)V

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/p$e;->b0(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/protobuf/p$e;->b0(I)V

    return v1

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->c0()V

    return v1
.end method

.method public T()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    iget-wide v2, p0, Lcom/google/protobuf/p$e;->j:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 2
    iput-wide v2, p0, Lcom/google/protobuf/p$e;->k:J

    invoke-static {v0, v1}, Lcom/google/protobuf/m3;->w(J)B

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public U()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    .line 2
    iget-wide v2, p0, Lcom/google/protobuf/p$e;->j:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 3
    iput-wide v4, p0, Lcom/google/protobuf/p$e;->k:J

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/m3;->w(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 5
    invoke-static {v3, v4}, Lcom/google/protobuf/m3;->w(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 6
    invoke-static {v3, v4}, Lcom/google/protobuf/m3;->w(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 7
    invoke-static {v0, v1}, Lcom/google/protobuf/m3;->w(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public V()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    .line 2
    iget-wide v2, p0, Lcom/google/protobuf/p$e;->j:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 3
    iput-wide v4, p0, Lcom/google/protobuf/p$e;->k:J

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/m3;->w(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 5
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 6
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 7
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 8
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 9
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 10
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    .line 11
    invoke-static {v0, v1}, Lcom/google/protobuf/m3;->w(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public W()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    .line 2
    iget-wide v2, p0, Lcom/google/protobuf/p$e;->j:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/m3;->w(J)B

    move-result v0

    if-ltz v0, :cond_1

    .line 4
    iput-wide v4, p0, Lcom/google/protobuf/p$e;->k:J

    int-to-long v0, v0

    return-wide v0

    .line 5
    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/p$e;->j:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    add-long v6, v4, v2

    .line 6
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v0, v0

    goto/16 :goto_5

    :cond_3
    add-long v4, v6, v2

    .line 7
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_4
    :goto_1
    move-wide v6, v4

    goto/16 :goto_5

    :cond_5
    add-long v6, v4, v2

    .line 8
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_6

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_6
    int-to-long v0, v0

    add-long v4, v6, v2

    .line 9
    invoke-static {v6, v7}, Lcom/google/protobuf/m3;->w(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_7

    const-wide/32 v2, 0xfe03f80

    :goto_2
    xor-long/2addr v0, v2

    goto :goto_1

    :cond_7
    add-long v8, v4, v2

    .line 10
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    const-wide v2, -0x7f01fc080L

    :goto_3
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_5

    :cond_8
    add-long v4, v8, v2

    .line 11
    invoke-static {v8, v9}, Lcom/google/protobuf/m3;->w(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_9

    const-wide v2, 0x3f80fe03f80L

    goto :goto_2

    :cond_9
    add-long v8, v4, v2

    .line 12
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_a

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_3

    :cond_a
    add-long v4, v8, v2

    .line 13
    invoke-static {v8, v9}, Lcom/google/protobuf/m3;->w(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    add-long/2addr v2, v4

    .line 14
    invoke-static {v4, v5}, Lcom/google/protobuf/m3;->w(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-gez v8, :cond_b

    .line 15
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->X()J

    move-result-wide v0

    return-wide v0

    :cond_b
    move-wide v6, v2

    .line 16
    :goto_5
    iput-wide v6, p0, Lcom/google/protobuf/p$e;->k:J

    return-wide v0
.end method

.method X()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->T()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/p$e;->n:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public a0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->L()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/p$e;->Q(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public b0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->Z()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/p$e;->p:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    iget-wide v2, p0, Lcom/google/protobuf/p$e;->l:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public g()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    iget-wide v2, p0, Lcom/google/protobuf/p$e;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/p$e;->p:I

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->Y()V

    return-void
.end method

.method public q(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->f()I

    move-result v0

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/google/protobuf/p$e;->p:I

    if-gt p1, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/google/protobuf/p$e;->p:I

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->Y()V

    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public r()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->W()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Lcom/google/protobuf/ByteString;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/p$e;->Z()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/google/protobuf/p$e;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/protobuf/p$e;->o:Z

    if-eqz v1, :cond_0

    .line 4
    iget-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/protobuf/p$e;->f0(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    .line 6
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    new-array v8, v0, [B

    .line 8
    iget-wide v1, p0, Lcom/google/protobuf/p$e;->k:J

    const-wide/16 v4, 0x0

    int-to-long v9, v0

    move-object v3, v8

    move-wide v6, v9

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/m3;->p(J[BJJ)V

    .line 9
    iget-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/google/protobuf/p$e;->k:J

    .line 10
    invoke-static {v8}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 11
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    .line 12
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 13
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public t()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->V()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public u()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->U()I

    move-result v0

    return v0
.end method

.method public w()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->V()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->U()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public y(ILcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/p;->b()V

    .line 2
    iget v0, p0, Lcom/google/protobuf/p;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/p;->a:I

    .line 3
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/o1$a;->f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;

    const/4 p2, 0x4

    .line 4
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/p$e;->a(I)V

    .line 5
    iget p1, p0, Lcom/google/protobuf/p;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/p;->a:I

    return-void
.end method

.method public z()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/p$e;->D()I

    move-result v0

    return v0
.end method
