.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrg/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;

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
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

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
.method public a(J[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;->c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;

    invoke-interface {p2, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;->b(Ljavax/net/ssl/SSLEngine;[B)[B

    move-result-object p2

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->F([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 3
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->H(Ljava/lang/Throwable;)V

    .line 4
    throw p2
.end method

.method public b(JI[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;->c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;

    invoke-interface {p2, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;->a(Ljavax/net/ssl/SSLEngine;I[B)[B

    move-result-object p2

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->F([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 3
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->H(Ljava/lang/Throwable;)V

    .line 4
    throw p2
.end method
