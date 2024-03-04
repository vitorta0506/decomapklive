.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;


# instance fields
.field private final e:Lkg/j;

.field private final f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

.field private g:I


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;Z)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    const-string p1, "content"

    .line 8
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->e:Lkg/j;

    const-string p1, "trailingHeaders"

    .line 9
    invoke-static {p5, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;ZZ)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;ZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p4, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;ZZ)V

    const-string p1, "content"

    .line 5
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->e:Lkg/j;

    if-eqz p5, :cond_0

    .line 6
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a;

    invoke-direct {p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    invoke-direct {p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(Z)V

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkg/s0;->b(I)Lkg/j;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;ZZ)V

    return-void
.end method


# virtual methods
.method public content()Lkg/j;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->e:Lkg/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    .line 3
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->content()Lkg/j;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->content()Lkg/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkg/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

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
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->g:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->content()Lkg/j;

    move-result-object v0

    invoke-static {v0}, Lkg/n;->z(Lkg/j;)Z

    move-result v0

    const/16 v1, 0x1f

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->content()Lkg/j;

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
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->g:I

    :cond_1
    return v0
.end method

.method public j(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 7

    .line 1
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->B()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v4

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->B()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v5

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->a()Lpg/e;

    move-result-object p1

    invoke-interface {v6, p1}, Lpg/f;->e(Lpg/e;)V

    return-object v6
.end method

.method public k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->e:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->e:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->e:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method

.method public retain()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->e:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->retain()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->d(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p1

    return-object p1
.end method

.method public u()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->content()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->V1()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->j(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object v0

    return-object v0
.end method

.method public x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-object v0
.end method
