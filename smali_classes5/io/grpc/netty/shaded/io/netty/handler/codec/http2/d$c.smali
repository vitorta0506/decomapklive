.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->b:Ljava/util/Queue;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c:Ljava/util/Set;

    .line 4
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->b:Ljava/util/Queue;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c$a;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->s()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    move-result-object v0

    iget v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->j:I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;

    invoke-interface {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->p()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    const-string v3, "Caught Throwable from listener onStreamActive."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->b:Ljava/util/Queue;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c$b;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Ljava/util/Iterator;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Ljava/util/Iterator;)V

    :goto_1
    return-void
.end method

.method e()V
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->d:I

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$h;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$h;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->p()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    const-string v2, "Caught Throwable while processing pending ActiveStreams$Event."

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->g()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 3
    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e()V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e()V

    .line 5
    throw p1
.end method

.method g()V
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->d:I

    return-void
.end method

.method h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->s()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    move-result-object v0

    iget v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->j:I

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Ljava/util/Iterator;)V

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
