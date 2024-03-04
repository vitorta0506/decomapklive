.class public Lio/grpc/netty/shaded/io/netty/channel/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/v0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/v0$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->b(I)V

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/f;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->c(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->d()V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->e(I)V

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->h(I)V

    return-void
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->j()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->k()I

    move-result v0

    return v0
.end method

.method protected final l()Lio/grpc/netty/shaded/io/netty/channel/v0$c;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    return-object v0
.end method
