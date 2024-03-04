.class Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;
.super Lio/grpc/netty/shaded/io/netty/util/b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;


# instance fields
.field private final a:Lkg/j;

.field private final b:Z


# direct methods
.method constructor <init>(Lkg/j;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/b;-><init>()V

    const-string v0, "content"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->a:Lkg/j;

    .line 3
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    return-object v0
.end method

.method public b(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/b;->retain(I)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    return-object p1
.end method

.method public content()Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->a:Lkg/j;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v1
.end method

.method protected deallocate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->a:Lkg/j;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->y(Lkg/j;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void
.end method

.method public e()Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->touch()Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public isSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->b:Z

    return v0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->b(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;->h(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    move-result-object p1

    return-object p1
.end method
