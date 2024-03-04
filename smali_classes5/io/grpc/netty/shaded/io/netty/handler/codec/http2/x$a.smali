.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;
.super Lio/grpc/netty/shaded/io/netty/channel/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final o:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private p:I

.field private q:I

.field private r:Ljava/lang/Throwable;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->o:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method

.method private n0()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->p:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r0()Z
    .locals 1

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->t0()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->p:I

    if-nez v0, :cond_0

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

.method private t0()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->p:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private w0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method private x0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->o:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    const/4 v0, 0x0

    .line 3
    invoke-super {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->o:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r:Ljava/lang/Throwable;

    invoke-super {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method private y0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->o:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->I()Z

    const/4 v0, 0x0

    .line 3
    invoke-super {p0, v0}, Lug/h;->B(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->o:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1, v0}, Lug/x;->z(Ljava/lang/Throwable;)Z

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r:Ljava/lang/Throwable;

    invoke-super {p0, v0}, Lug/h;->z(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->z0(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic m0(Ljava/lang/Object;)Lug/x;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->w0(Ljava/lang/Throwable;)V

    .line 4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->n0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->x0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public u0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->s:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->s:Z

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->p:I

    if-eq v0, v1, :cond_0

    if-nez v1, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->x0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method public v0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->p:I

    return-object p0
.end method

.method public x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->t0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->n0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->x0()Lio/grpc/netty/shaded/io/netty/channel/y;

    :cond_0
    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->r0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->w0(Ljava/lang/Throwable;)V

    .line 4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->n0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->y0()Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public z0(Ljava/lang/Void;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->t0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->q:I

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->n0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->y0()Z

    move-result p1

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
