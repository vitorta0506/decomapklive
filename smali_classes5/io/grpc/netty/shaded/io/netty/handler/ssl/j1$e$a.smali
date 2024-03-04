.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lug/r;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

.field private final b:J

.field private final c:Lrg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrg/b<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;JLrg/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;",
            "J",
            "Lrg/b<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    .line 3
    iput-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->b:J

    .line 4
    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->c:Lrg/b;

    return-void
.end method


# virtual methods
.method public e(Lug/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/q<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lug/q;->Q()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->F([B)[B

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->c:Lrg/b;

    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->b:J

    invoke-interface {v0, v1, v2, p1}, Lrg/b;->b(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->H(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->c:Lrg/b;

    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e$a;->b:J

    invoke-interface {p1, v1, v2, v0}, Lrg/b;->a(JLjava/lang/Throwable;)V

    return-void
.end method
