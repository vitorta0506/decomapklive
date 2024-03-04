.class Lio/grpc/netty/shaded/io/netty/channel/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$b;->a:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$b;->a:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->m1()Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method
