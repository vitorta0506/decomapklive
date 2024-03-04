.class Lio/grpc/netty/shaded/io/netty/channel/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/s;->l(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/w;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/s;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/w;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$b;->b:Lio/grpc/netty/shaded/io/netty/channel/s;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s$b;->a:Lio/grpc/netty/shaded/io/netty/channel/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$b;->a:Lio/grpc/netty/shaded/io/netty/channel/w;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->w()Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method
