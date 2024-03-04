.class Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
