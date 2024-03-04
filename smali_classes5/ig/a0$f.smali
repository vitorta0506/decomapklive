.class Lig/a0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/a0;->b(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lig/a0;


# direct methods
.method constructor <init>(Lig/a0;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lig/a0$f;->b:Lig/a0;

    iput-object p2, p0, Lig/a0$f;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lig/a0$f;->b:Lig/a0;

    invoke-static {v0}, Lig/a0;->j(Lig/a0;)Lig/d;

    move-result-object v0

    iget-object v1, p0, Lig/a0$f;->a:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lig/d;->f(Lio/grpc/Status;)Z

    .line 2
    iget-object v0, p0, Lig/a0$f;->b:Lig/a0;

    invoke-static {v0}, Lig/a0;->k(Lig/a0;)Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    new-instance v1, Lig/h;

    iget-object v2, p0, Lig/a0$f;->a:Lio/grpc/Status;

    invoke-direct {v1, v2}, Lig/h;-><init>(Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method
