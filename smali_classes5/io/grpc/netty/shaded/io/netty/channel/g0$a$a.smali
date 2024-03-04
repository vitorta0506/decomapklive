.class Lio/grpc/netty/shaded/io/netty/channel/g0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/g0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/g0$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/g0$a;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/g0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/g0$a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->l(Lio/grpc/netty/shaded/io/netty/channel/g0$a;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0$a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/g0$a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->m(Lio/grpc/netty/shaded/io/netty/channel/g0$a;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
