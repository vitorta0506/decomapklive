.class Lio/grpc/netty/shaded/io/netty/channel/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/b;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/b;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/channel/b;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$a;->c:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/b$a;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/b$a;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$a;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$a;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->h0(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method
