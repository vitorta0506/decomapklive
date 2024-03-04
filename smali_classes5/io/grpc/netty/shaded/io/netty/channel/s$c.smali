.class Lio/grpc/netty/shaded/io/netty/channel/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/s;->e(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Z

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/channel/s;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$c;->c:Lio/grpc/netty/shaded/io/netty/channel/s;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s$c;->a:Ljava/lang/Throwable;

    iput-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/channel/s$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$c;->c:Lio/grpc/netty/shaded/io/netty/channel/s;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$c;->a:Ljava/lang/Throwable;

    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/channel/s$c;->b:Z

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/s;->e(Ljava/lang/Throwable;Z)V

    return-void
.end method
