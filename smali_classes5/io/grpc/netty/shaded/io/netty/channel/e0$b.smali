.class Lio/grpc/netty/shaded/io/netty/channel/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/e0;->G1(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/b;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/e0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->n(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-void
.end method
