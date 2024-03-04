.class final Lio/grpc/netty/shaded/io/netty/internal/tcnative/b;
.super Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;
.source "SourceFile"


# instance fields
.field private final f:[B

.field private final g:[[B

.field private final h:Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;


# virtual methods
.method protected d(JLio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/b;->h:Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/b;->f:[B

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/b;->g:[[B

    invoke-interface {v0, p1, p2, v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;->a(J[B[[B)V

    const/4 v0, 0x1

    .line 2
    invoke-interface {p3, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;->a(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p3, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;->a(JI)V

    :goto_0
    return-void
.end method
