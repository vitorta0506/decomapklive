.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    .line 3
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 4
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 5
    :try_start_1
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    sget-object v0, Lkg/t0;->g:Lkg/t0;

    invoke-super {p0, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->a(Lkg/k;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 6
    :try_start_2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    const-string p2, "materialMap"

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->b()V

    .line 9
    throw p1
.end method


# virtual methods
.method a(Lkg/k;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    instance-of p2, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    if-eqz p2, :cond_1

    .line 3
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    check-cast p1, Ljava/lang/Exception;

    throw p1
.end method

.method b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
