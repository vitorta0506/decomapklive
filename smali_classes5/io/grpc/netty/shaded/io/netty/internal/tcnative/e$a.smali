.class Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrg/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->d(JLio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrg/b<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;->a:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->g()[B

    move-result-object v0

    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->f(Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;[B)[B

    .line 2
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;->a:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;->a(JI)V

    return-void
.end method

.method public bridge synthetic b(JLjava/lang/Object;)V
    .locals 0

    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;->c(J[B)V

    return-void
.end method

.method public c(J[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;

    invoke-static {v0, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;->f(Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;[B)[B

    .line 2
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e$a;->a:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;->a(JI)V

    return-void
.end method
