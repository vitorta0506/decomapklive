.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;

    return-void
.end method

.method private c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;->c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    .line 3
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for sslPointer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(JI[BLrg/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI[B",
            "Lrg/b<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;->c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;

    invoke-interface {v1, v0, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;->a(Ljavax/net/ssl/SSLEngine;I[B)Lug/q;

    move-result-object p3

    new-instance p4, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;

    invoke-direct {p4, v0, p1, p2, p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;JLrg/b;)V

    .line 3
    invoke-interface {p3, p4}, Lug/q;->c(Lug/r;)Lug/q;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 4
    invoke-interface {p5, p1, p2, p3}, Lrg/b;->a(JLjava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(J[BLrg/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Lrg/b<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;->c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;

    invoke-interface {v1, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;->b(Ljavax/net/ssl/SSLEngine;[B)Lug/q;

    move-result-object p3

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;

    invoke-direct {v1, v0, p1, p2, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;JLrg/b;)V

    .line 3
    invoke-interface {p3, v1}, Lug/q;->c(Lug/r;)Lug/q;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 4
    invoke-interface {p4, p1, p2, p3}, Lrg/b;->a(JLjava/lang/Throwable;)V

    :goto_0
    return-void
.end method
