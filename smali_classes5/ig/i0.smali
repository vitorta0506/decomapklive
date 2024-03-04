.class final Lig/i0;
.super Lkg/p;
.source "SourceFile"

# interfaces
.implements Lig/o0$c;


# instance fields
.field private final b:Lig/k0;

.field private final c:Z

.field private final d:Lqh/b;

.field private e:Lio/grpc/netty/shaded/io/netty/channel/y;


# direct methods
.method constructor <init>(Lig/k0;Lkg/j;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lkg/p;-><init>(Lkg/j;)V

    .line 2
    iput-object p1, p0, Lig/i0;->b:Lig/k0;

    .line 3
    iput-boolean p3, p0, Lig/i0;->c:Z

    .line 4
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object p1

    iput-object p1, p0, Lig/i0;->d:Lqh/b;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lig/i0;->e:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object v0
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lig/i0;->e:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method

.method public final e(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    iget-object v0, p0, Lig/i0;->e:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lig/i0;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lig/i0;

    .line 3
    iget-object v1, p1, Lig/i0;->b:Lig/k0;

    iget-object v2, p0, Lig/i0;->b:Lig/k0;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lig/i0;->c:Z

    iget-boolean v2, p0, Lig/i0;->c:Z

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lkg/p;->content()Lkg/j;

    move-result-object p1

    invoke-virtual {p0}, Lkg/p;->content()Lkg/j;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkg/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/p;->content()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lig/i0;->b:Lig/k0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget-boolean v1, p0, Lig/i0;->c:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method j()Z
    .locals 1

    iget-boolean v0, p0, Lig/i0;->c:Z

    return v0
.end method

.method public k()Lqh/b;
    .locals 1

    iget-object v0, p0, Lig/i0;->d:Lqh/b;

    return-object v0
.end method

.method public l()Lig/i0;
    .locals 0

    invoke-super {p0}, Lkg/p;->h()Lkg/l;

    return-object p0
.end method

.method n()Lig/k0;
    .locals 1

    iget-object v0, p0, Lig/i0;->b:Lig/k0;

    return-object v0
.end method

.method public o(Ljava/lang/Object;)Lig/i0;
    .locals 0

    invoke-super {p0, p1}, Lkg/p;->i(Ljava/lang/Object;)Lkg/l;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lig/i0;->l()Lig/i0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lig/i0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lig/i0;->b:Lig/k0;

    invoke-interface {v1}, Lig/k0;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lig/i0;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lkg/p;->content()Lkg/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lig/i0;->o(Ljava/lang/Object;)Lig/i0;

    move-result-object p1

    return-object p1
.end method
