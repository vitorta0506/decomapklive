.class final Lqe/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:Lokio/ForwardingTimeout;

.field private b:Z

.field private c:J

.field final synthetic d:Lqe/d;


# direct methods
.method private constructor <init>(Lqe/d;J)V
    .locals 1

    .line 2
    iput-object p1, p0, Lqe/d$e;->d:Lqe/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lqe/d;->a(Lqe/d;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lqe/d$e;->a:Lokio/ForwardingTimeout;

    .line 4
    iput-wide p2, p0, Lqe/d$e;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lqe/d;JLqe/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lqe/d$e;-><init>(Lqe/d;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqe/d$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lqe/d$e;->b:Z

    .line 3
    iget-wide v0, p0, Lqe/d$e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 4
    iget-object v0, p0, Lqe/d$e;->d:Lqe/d;

    iget-object v1, p0, Lqe/d$e;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lqe/d;->b(Lqe/d;Lokio/ForwardingTimeout;)V

    .line 5
    iget-object v0, p0, Lqe/d$e;->d:Lqe/d;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lqe/d;->d(Lqe/d;I)I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqe/d$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lqe/d$e;->d:Lqe/d;

    invoke-static {v0}, Lqe/d;->a(Lqe/d;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lqe/d$e;->a:Lokio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqe/d$e;->b:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/squareup/okhttp/internal/i;->a(JJJ)V

    .line 3
    iget-wide v0, p0, Lqe/d$e;->c:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 4
    iget-object v0, p0, Lqe/d$e;->d:Lqe/d;

    invoke-static {v0}, Lqe/d;->a(Lqe/d;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 5
    iget-wide v0, p0, Lqe/d$e;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lqe/d$e;->c:J

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lqe/d$e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
