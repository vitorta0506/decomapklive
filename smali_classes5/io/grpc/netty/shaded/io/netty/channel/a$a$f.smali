.class Lio/grpc/netty/shaded/io/netty/channel/a$a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a;->k(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$f;->b:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$f;->b:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$f;->a:Z

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e(Lio/grpc/netty/shaded/io/netty/channel/a$a;Z)V

    return-void
.end method
