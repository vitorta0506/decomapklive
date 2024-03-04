.class Lqg/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqg/b;->Q(Lio/grpc/netty/shaded/io/netty/channel/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqg/b;


# direct methods
.method constructor <init>(Lqg/b;)V
    .locals 0

    iput-object p1, p0, Lqg/b$b;->a:Lqg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqg/b$b;->a:Lqg/b;

    invoke-static {v0}, Lqg/b;->u(Lqg/b;)Lqg/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lug/h;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lqg/b$b;->a:Lqg/b;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;

    iget-object v2, p0, Lqg/b$b;->a:Lqg/b;

    const-string v3, "timeout"

    invoke-virtual {v2, v3}, Lqg/b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lqg/b;->s(Lqg/b;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
