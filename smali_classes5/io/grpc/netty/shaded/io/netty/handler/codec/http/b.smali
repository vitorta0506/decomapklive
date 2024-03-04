.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;


# instance fields
.field private final f:Lkg/j;

.field private final g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

.field private h:I


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;Lkg/j;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;Z)V

    const-string p1, "content"

    .line 2
    invoke-static {p4, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->f:Lkg/j;

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    invoke-direct {p1, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(Z)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method


# virtual methods
.method public content()Lkg/j;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->f:Lkg/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;

    .line 3
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->content()Lkg/j;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->content()Lkg/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkg/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->h:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->content()Lkg/j;

    move-result-object v0

    invoke-static {v0}, Lkg/n;->z(Lkg/j;)Z

    move-result v0

    const/16 v1, 0x1f

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->content()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->hashCode()I

    move-result v0
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    :cond_0
    const/16 v0, 0x1f

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->h:I

    :cond_1
    return v0
.end method

.method public j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->f:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method public k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->f:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->f:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->f:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->c(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;

    move-result-object p1

    return-object p1
.end method

.method public x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-object v0
.end method
