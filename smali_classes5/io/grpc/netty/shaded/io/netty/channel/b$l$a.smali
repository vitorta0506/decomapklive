.class final Lio/grpc/netty/shaded/io/netty/channel/b$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/b$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/util/internal/r$b<",
        "Lio/grpc/netty/shaded/io/netty/channel/b$l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b$l$a;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)Lio/grpc/netty/shaded/io/netty/channel/b$l;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)Lio/grpc/netty/shaded/io/netty/channel/b$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lio/grpc/netty/shaded/io/netty/channel/b$l;",
            ">;)",
            "Lio/grpc/netty/shaded/io/netty/channel/b$l;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/b$l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/b$l;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;Lio/grpc/netty/shaded/io/netty/channel/b$c;)V

    return-object v0
.end method
