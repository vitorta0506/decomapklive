.class public Lio/grpc/internal/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lio/grpc/internal/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/l1$c;,
        Lio/grpc/internal/l1$d;,
        Lio/grpc/internal/l1$e;,
        Lio/grpc/internal/l1$b;
    }
.end annotation


# instance fields
.field private a:Lio/grpc/internal/l1$b;

.field private b:I

.field private final c:Lio/grpc/internal/i2;

.field private final d:Lio/grpc/internal/p2;

.field private e:Lio/grpc/u;

.field private f:Lio/grpc/internal/s0;

.field private g:[B

.field private h:I

.field private i:Lio/grpc/internal/l1$e;

.field private j:I

.field private k:Z

.field private l:Lio/grpc/internal/t;

.field private m:Lio/grpc/internal/t;

.field private n:J

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private volatile s:Z


# direct methods
.method public constructor <init>(Lio/grpc/internal/l1$b;Lio/grpc/u;ILio/grpc/internal/i2;Lio/grpc/internal/p2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/internal/l1$e;->a:Lio/grpc/internal/l1$e;

    iput-object v0, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lio/grpc/internal/l1;->j:I

    .line 4
    new-instance v0, Lio/grpc/internal/t;

    invoke-direct {v0}, Lio/grpc/internal/t;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/grpc/internal/l1;->o:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lio/grpc/internal/l1;->p:I

    .line 7
    iput-boolean v0, p0, Lio/grpc/internal/l1;->r:Z

    .line 8
    iput-boolean v0, p0, Lio/grpc/internal/l1;->s:Z

    const-string v0, "sink"

    .line 9
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/l1$b;

    iput-object p1, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    const-string p1, "decompressor"

    .line 10
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/u;

    iput-object p1, p0, Lio/grpc/internal/l1;->e:Lio/grpc/u;

    .line 11
    iput p3, p0, Lio/grpc/internal/l1;->b:I

    const-string p1, "statsTraceCtx"

    .line 12
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/i2;

    iput-object p1, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    const-string p1, "transportTracer"

    .line 13
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/p2;

    iput-object p1, p0, Lio/grpc/internal/l1;->d:Lio/grpc/internal/p2;

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/l1;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/internal/l1;->o:Z

    :goto_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lio/grpc/internal/l1;->s:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lio/grpc/internal/l1;->n:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    invoke-direct {p0}, Lio/grpc/internal/l1;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    sget-object v2, Lio/grpc/internal/l1$a;->a:[I

    iget-object v3, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5
    invoke-direct {p0}, Lio/grpc/internal/l1;->r()V

    .line 6
    iget-wide v2, p0, Lio/grpc/internal/l1;->n:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/grpc/internal/l1;->n:J

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_2
    invoke-direct {p0}, Lio/grpc/internal/l1;->s()V

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean v0, p0, Lio/grpc/internal/l1;->s:Z

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lio/grpc/internal/l1;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-boolean v1, p0, Lio/grpc/internal/l1;->o:Z

    return-void

    .line 12
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lio/grpc/internal/l1;->r:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lio/grpc/internal/l1;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lio/grpc/internal/l1;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_5
    iput-boolean v1, p0, Lio/grpc/internal/l1;->o:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lio/grpc/internal/l1;->o:Z

    throw v0
.end method

.method private k()Ljava/io/InputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l1;->e:Lio/grpc/u;

    sget-object v1, Lio/grpc/l$b;->a:Lio/grpc/l;

    if-eq v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v2}, Lio/grpc/internal/w1;->c(Lio/grpc/internal/v1;Z)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/u;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 4
    new-instance v1, Lio/grpc/internal/l1$d;

    iget v2, p0, Lio/grpc/internal/l1;->b:I

    iget-object v3, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    invoke-direct {v1, v0, v2, v3}, Lio/grpc/internal/l1$d;-><init>(Ljava/io/InputStream;ILio/grpc/internal/i2;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_0
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v1, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method

.method private o()Ljava/io/InputStream;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    iget-object v1, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    invoke-virtual {v1}, Lio/grpc/internal/t;->n()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/i2;->f(J)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/w1;->c(Lio/grpc/internal/v1;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private p()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/l1;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/internal/l1;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/internal/s0;->v()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    invoke-virtual {v0}, Lio/grpc/internal/t;->n()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    iget v1, p0, Lio/grpc/internal/l1;->p:I

    iget v2, p0, Lio/grpc/internal/l1;->q:I

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lio/grpc/internal/i2;->e(IJJ)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/grpc/internal/l1;->q:I

    .line 3
    iget-boolean v0, p0, Lio/grpc/internal/l1;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/internal/l1;->k()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/l1;->o()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    .line 5
    iget-object v2, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    new-instance v3, Lio/grpc/internal/l1$c;

    invoke-direct {v3, v0, v1}, Lio/grpc/internal/l1$c;-><init>(Ljava/io/InputStream;Lio/grpc/internal/l1$a;)V

    invoke-interface {v2, v3}, Lio/grpc/internal/l1$b;->a(Lio/grpc/internal/k2$a;)V

    .line 6
    sget-object v0, Lio/grpc/internal/l1$e;->a:Lio/grpc/internal/l1$e;

    iput-object v0, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lio/grpc/internal/l1;->j:I

    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    invoke-virtual {v0}, Lio/grpc/internal/t;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xfe

    if-nez v1, :cond_2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lio/grpc/internal/l1;->k:Z

    .line 3
    iget-object v0, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    invoke-virtual {v0}, Lio/grpc/internal/c;->readInt()I

    move-result v0

    iput v0, p0, Lio/grpc/internal/l1;->j:I

    if-ltz v0, :cond_1

    .line 4
    iget v3, p0, Lio/grpc/internal/l1;->b:I

    if-gt v0, v3, :cond_1

    .line 5
    iget v0, p0, Lio/grpc/internal/l1;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/l1;->p:I

    .line 6
    iget-object v1, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    invoke-virtual {v1, v0}, Lio/grpc/internal/i2;->d(I)V

    .line 7
    iget-object v0, p0, Lio/grpc/internal/l1;->d:Lio/grpc/internal/p2;

    invoke-virtual {v0}, Lio/grpc/internal/p2;->d()V

    .line 8
    sget-object v0, Lio/grpc/internal/l1$e;->b:Lio/grpc/internal/l1$e;

    iput-object v0, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    return-void

    .line 9
    :cond_1
    sget-object v0, Lio/grpc/Status;->o:Lio/grpc/Status;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lio/grpc/internal/l1;->b:I

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lio/grpc/internal/l1;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "gRPC message exceeds maximum size %d: %d"

    .line 11
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 14
    :cond_2
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v1, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method

.method private t()Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lio/grpc/internal/t;

    invoke-direct {v1}, Lio/grpc/internal/t;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    :try_start_1
    iget v3, p0, Lio/grpc/internal/l1;->j:I

    iget-object v4, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    invoke-virtual {v4}, Lio/grpc/internal/t;->n()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_a

    .line 4
    iget-object v4, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_6

    .line 5
    :try_start_2
    iget-object v4, p0, Lio/grpc/internal/l1;->g:[B

    if-eqz v4, :cond_1

    iget v5, p0, Lio/grpc/internal/l1;->h:I

    array-length v4, v4

    if-ne v5, v4, :cond_2

    :cond_1
    const/high16 v4, 0x200000

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lio/grpc/internal/l1;->g:[B

    .line 7
    iput v0, p0, Lio/grpc/internal/l1;->h:I

    .line 8
    :cond_2
    iget-object v4, p0, Lio/grpc/internal/l1;->g:[B

    array-length v4, v4

    iget v5, p0, Lio/grpc/internal/l1;->h:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    iget-object v4, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    iget-object v5, p0, Lio/grpc/internal/l1;->g:[B

    iget v6, p0, Lio/grpc/internal/l1;->h:I

    invoke-virtual {v4, v5, v6, v3}, Lio/grpc/internal/s0;->s([BII)I

    move-result v3

    .line 10
    iget-object v4, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    invoke-virtual {v4}, Lio/grpc/internal/s0;->o()I

    move-result v4

    add-int/2addr v1, v4

    .line 11
    iget-object v4, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    invoke-virtual {v4}, Lio/grpc/internal/s0;->p()I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v2, v4

    if-nez v3, :cond_5

    if-lez v1, :cond_4

    .line 12
    iget-object v3, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    invoke-interface {v3, v1}, Lio/grpc/internal/l1$b;->b(I)V

    .line 13
    iget-object v3, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    sget-object v4, Lio/grpc/internal/l1$e;->b:Lio/grpc/internal/l1$e;

    if-ne v3, v4, :cond_4

    .line 14
    iget-object v3, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-eqz v3, :cond_3

    .line 15
    iget-object v1, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 16
    iget v1, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/l1;->q:I

    goto :goto_1

    .line 17
    :cond_3
    iget-object v2, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 18
    iget v2, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/grpc/internal/l1;->q:I

    :cond_4
    :goto_1
    return v0

    .line 19
    :cond_5
    :try_start_3
    iget-object v4, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    iget-object v5, p0, Lio/grpc/internal/l1;->g:[B

    iget v6, p0, Lio/grpc/internal/l1;->h:I

    invoke-static {v5, v6, v3}, Lio/grpc/internal/w1;->f([BII)Lio/grpc/internal/v1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/internal/t;->b(Lio/grpc/internal/v1;)V

    .line 20
    iget v4, p0, Lio/grpc/internal/l1;->h:I

    add-int/2addr v4, v3

    iput v4, p0, Lio/grpc/internal/l1;->h:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    .line 22
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 23
    :cond_6
    iget-object v4, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    invoke-virtual {v4}, Lio/grpc/internal/t;->n()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_9

    if-lez v1, :cond_8

    .line 24
    iget-object v3, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    invoke-interface {v3, v1}, Lio/grpc/internal/l1$b;->b(I)V

    .line 25
    iget-object v3, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    sget-object v4, Lio/grpc/internal/l1$e;->b:Lio/grpc/internal/l1$e;

    if-ne v3, v4, :cond_8

    .line 26
    iget-object v3, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-eqz v3, :cond_7

    .line 27
    iget-object v1, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 28
    iget v1, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/l1;->q:I

    goto :goto_2

    .line 29
    :cond_7
    iget-object v2, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 30
    iget v2, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/grpc/internal/l1;->q:I

    :cond_8
    :goto_2
    return v0

    .line 31
    :cond_9
    :try_start_5
    iget-object v4, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    invoke-virtual {v4}, Lio/grpc/internal/t;->n()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 32
    iget-object v4, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    iget-object v5, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    invoke-virtual {v5, v3}, Lio/grpc/internal/t;->G(I)Lio/grpc/internal/v1;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/grpc/internal/t;->b(Lio/grpc/internal/v1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    if-lez v1, :cond_c

    .line 33
    iget-object v3, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    invoke-interface {v3, v1}, Lio/grpc/internal/l1$b;->b(I)V

    .line 34
    iget-object v3, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    sget-object v4, Lio/grpc/internal/l1$e;->b:Lio/grpc/internal/l1$e;

    if-ne v3, v4, :cond_c

    .line 35
    iget-object v3, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-eqz v3, :cond_b

    .line 36
    iget-object v1, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 37
    iget v1, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/l1;->q:I

    goto :goto_3

    .line 38
    :cond_b
    iget-object v2, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 39
    iget v2, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/grpc/internal/l1;->q:I

    :cond_c
    :goto_3
    return v0

    :catchall_0
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_4

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :goto_4
    if-lez v0, :cond_e

    .line 40
    iget-object v3, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    invoke-interface {v3, v0}, Lio/grpc/internal/l1$b;->b(I)V

    .line 41
    iget-object v3, p0, Lio/grpc/internal/l1;->i:Lio/grpc/internal/l1$e;

    sget-object v4, Lio/grpc/internal/l1$e;->b:Lio/grpc/internal/l1$e;

    if-ne v3, v4, :cond_e

    .line 42
    iget-object v3, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-eqz v3, :cond_d

    .line 43
    iget-object v0, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 44
    iget v0, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/grpc/internal/l1;->q:I

    goto :goto_5

    .line 45
    :cond_d
    iget-object v2, p0, Lio/grpc/internal/l1;->c:Lio/grpc/internal/i2;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lio/grpc/internal/i2;->g(J)V

    .line 46
    iget v2, p0, Lio/grpc/internal/l1;->q:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/grpc/internal/l1;->q:I

    :cond_e
    :goto_5
    throw v1
.end method


# virtual methods
.method public b(I)V
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "numMessages must be > 0"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/l1;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-wide v0, p0, Lio/grpc/internal/l1;->n:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/l1;->n:J

    .line 4
    invoke-direct {p0}, Lio/grpc/internal/l1;->a()V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lio/grpc/internal/l1;->b:I

    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/l1;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/internal/t;->n()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 3
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {v4}, Lio/grpc/internal/s0;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    invoke-virtual {v0}, Lio/grpc/internal/s0;->close()V

    move v0, v1

    .line 6
    :cond_4
    iget-object v1, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {v1}, Lio/grpc/internal/t;->close()V

    .line 8
    :cond_5
    iget-object v1, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v1}, Lio/grpc/internal/t;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_6
    iput-object v3, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    .line 11
    iput-object v3, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    .line 12
    iput-object v3, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    .line 13
    iget-object v1, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    invoke-interface {v1, v0}, Lio/grpc/internal/l1$b;->d(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 14
    iput-object v3, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    .line 15
    iput-object v3, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    .line 16
    iput-object v3, p0, Lio/grpc/internal/l1;->l:Lio/grpc/internal/t;

    throw v0
.end method

.method public d(Lio/grpc/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already set full stream decompressor"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const-string v0, "Can\'t pass an empty decompressor"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/u;

    iput-object p1, p0, Lio/grpc/internal/l1;->e:Lio/grpc/u;

    return-void
.end method

.method public e(Lio/grpc/internal/v1;)V
    .locals 2

    const-string v0, "data"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/l1;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lio/grpc/internal/s0;->j(Lio/grpc/internal/v1;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    invoke-virtual {v1, p1}, Lio/grpc/internal/t;->b(Lio/grpc/internal/v1;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lio/grpc/internal/l1;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Lio/grpc/internal/v1;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lio/grpc/internal/v1;->close()V

    :cond_3
    throw v1
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/l1;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/l1;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/internal/l1;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/grpc/internal/l1;->r:Z

    :goto_0
    return-void
.end method

.method public v(Lio/grpc/internal/s0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l1;->e:Lio/grpc/u;

    sget-object v1, Lio/grpc/l$b;->a:Lio/grpc/l;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "per-message decompressor already set"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "full stream decompressor already set"

    invoke-static {v2, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const-string v0, "Can\'t pass a null full stream decompressor"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/s0;

    iput-object p1, p0, Lio/grpc/internal/l1;->f:Lio/grpc/internal/s0;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/grpc/internal/l1;->m:Lio/grpc/internal/t;

    return-void
.end method

.method w(Lio/grpc/internal/l1$b;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/l1;->a:Lio/grpc/internal/l1$b;

    return-void
.end method

.method y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/l1;->s:Z

    return-void
.end method
