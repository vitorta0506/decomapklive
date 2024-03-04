.class Lio/grpc/netty/shaded/io/netty/channel/a$a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$h;->b:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$h;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$h;->b:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$h;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method
