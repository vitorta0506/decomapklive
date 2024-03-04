.class final Lio/grpc/netty/shaded/io/netty/internal/tcnative/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;


# instance fields
.field private final a:Lrg/c;


# direct methods
.method constructor <init>(Lrg/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "method"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/a;->a:Lrg/c;

    return-void
.end method


# virtual methods
.method public a(JI[BLrg/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI[B",
            "Lrg/b<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/a;->a:Lrg/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lrg/c;->b(JI[B)[B

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p5, p1, p2, p3}, Lrg/b;->b(JLjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p3

    .line 3
    invoke-interface {p5, p1, p2, p3}, Lrg/b;->a(JLjava/lang/Throwable;)V

    return-void
.end method

.method public b(J[BLrg/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Lrg/b<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/a;->a:Lrg/c;

    invoke-interface {v0, p1, p2, p3}, Lrg/c;->a(J[B)[B

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p4, p1, p2, p3}, Lrg/b;->b(JLjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p3

    .line 3
    invoke-interface {p4, p1, p2, p3}, Lrg/b;->a(JLjava/lang/Throwable;)V

    return-void
.end method
