.class abstract Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;
.super Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;
.source "SourceFile"

# interfaces
.implements Lrg/a;


# static fields
.field private static final h:[B


# instance fields
.field private final f:Lio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->h:[B

    return-void
.end method

.method static synthetic f(Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;[B)[B
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->g:[B

    return-object p1
.end method

.method static synthetic g()[B
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->h:[B

    return-object v0
.end method


# virtual methods
.method protected final d(JLio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->f:Lio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;

    invoke-direct {v1, p0, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;-><init>(Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->h(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;Lrg/b;)V

    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract h(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;Lrg/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;",
            "Lrg/b<",
            "[B>;)V"
        }
    .end annotation
.end method
