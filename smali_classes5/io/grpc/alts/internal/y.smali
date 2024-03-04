.class public final Lio/grpc/alts/internal/y;
.super Lio/grpc/netty/shaded/io/netty/channel/f0;
.source "SourceFile"


# instance fields
.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/channel/y;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/grpc/alts/internal/y;->o:Ljava/util/List;

    return-void
.end method

.method private r0()Z
    .locals 2

    iget v0, p0, Lio/grpc/alts/internal/y;->q:I

    iget v1, p0, Lio/grpc/alts/internal/y;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lio/grpc/alts/internal/y;->p:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private v0(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/grpc/alts/internal/y;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/y;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1, p1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x0(Ljava/lang/Void;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/grpc/alts/internal/y;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/y;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1, p1}, Lug/x;->B(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/y;->w0(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic m0(Ljava/lang/Object;)Lug/x;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/y;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public n0(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/y;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/alts/internal/y;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/alts/internal/y;->s:Z

    .line 3
    iget v0, p0, Lio/grpc/alts/internal/y;->q:I

    iget v1, p0, Lio/grpc/alts/internal/y;->p:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lio/grpc/alts/internal/y;->x0(Ljava/lang/Void;)V

    .line 5
    invoke-super {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/y;->z(Ljava/lang/Throwable;)Z

    return-object p0
.end method

.method public u0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/alts/internal/y;->s:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Done allocating. No more promises can be allocated."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lio/grpc/alts/internal/y;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/alts/internal/y;->p:I

    return-object p0
.end method

.method public w0(Ljava/lang/Void;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/y;->r0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/alts/internal/y;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/alts/internal/y;->q:I

    .line 3
    iget v2, p0, Lio/grpc/alts/internal/y;->p:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lio/grpc/alts/internal/y;->s:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/y;->x0(Ljava/lang/Void;)V

    .line 5
    invoke-super {p0, p1}, Lug/h;->B(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/y;->w0(Ljava/lang/Void;)Z

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/y;->r0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/alts/internal/y;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/alts/internal/y;->r:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/y;->v0(Ljava/lang/Throwable;)V

    .line 4
    invoke-super {p0, p1}, Lug/h;->z(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
