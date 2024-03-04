.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljavax/net/ssl/SSLEngine;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

.field private b:Z

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->b:Z

    .line 2
    :try_start_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljavax/net/ssl/SSLEngine;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;->a()V

    :cond_1
    return-void
.end method
