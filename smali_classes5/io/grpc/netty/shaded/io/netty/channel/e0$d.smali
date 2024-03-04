.class Lio/grpc/netty/shaded/io/netty/channel/e0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/e0;->j1(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
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

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$d;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$d;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$d;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$d;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->o0(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    return-void
.end method
