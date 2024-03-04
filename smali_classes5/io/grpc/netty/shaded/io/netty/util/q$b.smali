.class Lio/grpc/netty/shaded/io/netty/util/q$b;
.super Lug/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/n<",
        "Lio/grpc/netty/shaded/io/netty/util/q$e<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lio/grpc/netty/shaded/io/netty/util/q;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/q;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/q$b;->c:Lio/grpc/netty/shaded/io/netty/util/q;

    invoke-direct {p0}, Lug/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/q$b;->o()Lio/grpc/netty/shaded/io/netty/util/q$e;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/q$e;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/q$b;->p(Lio/grpc/netty/shaded/io/netty/util/q$e;)V

    return-void
.end method

.method protected o()Lio/grpc/netty/shaded/io/netty/util/q$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/util/q$e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/q$e;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/q$b;->c:Lio/grpc/netty/shaded/io/netty/util/q;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/q;->a(Lio/grpc/netty/shaded/io/netty/util/q;)I

    move-result v1

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/q$b;->c:Lio/grpc/netty/shaded/io/netty/util/q;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/q;->b(Lio/grpc/netty/shaded/io/netty/util/q;)I

    move-result v2

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/util/q$b;->c:Lio/grpc/netty/shaded/io/netty/util/q;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/q;->c(Lio/grpc/netty/shaded/io/netty/util/q;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/q$e;-><init>(III)V

    return-object v0
.end method

.method protected p(Lio/grpc/netty/shaded/io/netty/util/q$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/q$e<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lug/n;->g(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/q$e;->a(Lio/grpc/netty/shaded/io/netty/util/q$e;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method
