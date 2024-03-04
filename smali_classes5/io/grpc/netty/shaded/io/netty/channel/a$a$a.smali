.class Lio/grpc/netty/shaded/io/netty/channel/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a;->U(Lio/grpc/netty/shaded/io/netty/channel/l0;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$a;->b:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$a;->b:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->g(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method
