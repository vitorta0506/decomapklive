.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lug/r;"
    }
.end annotation


# instance fields
.field final synthetic a:Lug/q;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;Lug/q;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;->a:Lug/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lug/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/q<",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;->a:Lug/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lug/q;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->c:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e0(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method
