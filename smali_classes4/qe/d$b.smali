.class abstract Lqe/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field protected final a:Lokio/ForwardingTimeout;

.field protected b:Z

.field final synthetic c:Lqe/d;


# direct methods
.method private constructor <init>(Lqe/d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lqe/d$b;->c:Lqe/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lqe/d;->e(Lqe/d;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lqe/d$b;->a:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lqe/d;Lqe/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lqe/d$b;-><init>(Lqe/d;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0}, Lqe/d;->c(Lqe/d;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    iget-object v1, p0, Lqe/d$b;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lqe/d;->b(Lqe/d;Lokio/ForwardingTimeout;)V

    .line 3
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lqe/d;->d(Lqe/d;I)I

    .line 4
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0}, Lqe/d;->f(Lqe/d;)Lqe/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0}, Lqe/d;->f(Lqe/d;)Lqe/o;

    move-result-object v0

    iget-object v1, p0, Lqe/d$b;->c:Lqe/d;

    invoke-virtual {v0, v1}, Lqe/o;->r(Lcom/squareup/okhttp/internal/http/HttpStream;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v2}, Lqe/d;->c(Lqe/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0}, Lqe/d;->c(Lqe/d;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0, v1}, Lqe/d;->d(Lqe/d;I)I

    .line 3
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0}, Lqe/d;->f(Lqe/d;)Lqe/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0}, Lqe/d;->f(Lqe/d;)Lqe/o;

    move-result-object v0

    invoke-virtual {v0}, Lqe/o;->l()V

    .line 5
    iget-object v0, p0, Lqe/d$b;->c:Lqe/d;

    invoke-static {v0}, Lqe/d;->f(Lqe/d;)Lqe/o;

    move-result-object v0

    iget-object v1, p0, Lqe/d$b;->c:Lqe/d;

    invoke-virtual {v0, v1}, Lqe/o;->r(Lcom/squareup/okhttp/internal/http/HttpStream;)V

    :cond_1
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lqe/d$b;->a:Lokio/ForwardingTimeout;

    return-object v0
.end method
