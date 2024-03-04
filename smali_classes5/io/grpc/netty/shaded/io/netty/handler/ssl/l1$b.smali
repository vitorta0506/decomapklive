.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;

    return-void
.end method


# virtual methods
.method public a(J[B[[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-interface {p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;->c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;

    invoke-virtual {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->e(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 3
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->H(Ljava/lang/Throwable;)V

    .line 4
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Exception;

    throw p2

    .line 6
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
