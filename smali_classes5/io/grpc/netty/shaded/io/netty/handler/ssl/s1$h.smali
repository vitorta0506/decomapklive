.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->s0()V
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

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lug/q;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$h;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$h;->a:Lug/q;

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

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$h;->a:Lug/q;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lug/q;->cancel(Z)Z

    return-void
.end method
