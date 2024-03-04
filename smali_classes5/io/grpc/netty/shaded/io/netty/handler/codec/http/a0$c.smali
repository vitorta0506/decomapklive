.class abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# instance fields
.field protected final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

.field private final b:Lkg/j;

.field private c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->b:Lkg/j;

    .line 4
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method


# virtual methods
.method public a()Lpg/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {v0}, Lpg/f;->a()Lpg/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    return-object v0
.end method

.method public content()Lkg/j;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->b:Lkg/j;

    return-object v0
.end method

.method public e(Lpg/e;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {v0, p1}, Lpg/f;->e(Lpg/e;)V

    return-void
.end method

.method public h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    return-object v0
.end method

.method public j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    return-object v0
.end method

.method public k()Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->b:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method l(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method

.method public n(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->b:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->b:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->k()Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->n(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    move-result-object p1

    return-object p1
.end method

.method public x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;

    :cond_0
    return-object v0
.end method
