.class Lig/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/m0;->r()Lio/grpc/netty/shaded/io/netty/channel/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/channel/h<",
        "Lio/grpc/netty/shaded/io/netty/channel/z0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    invoke-virtual {p0}, Lig/m0$a;->b()Lio/grpc/netty/shaded/io/netty/channel/z0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/channel/z0;
    .locals 1

    new-instance v0, Log/b;

    invoke-direct {v0}, Log/b;-><init>()V

    return-object v0
.end method
