.class Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    invoke-virtual {p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->c(Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->c(Ljava/lang/String;)V

    return-object v1
.end method
