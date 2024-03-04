.class final Lio/grpc/netty/shaded/io/netty/channel/r$a;
.super Lio/grpc/netty/shaded/io/netty/util/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/netty/shaded/io/netty/util/j<",
        "Lio/grpc/netty/shaded/io/netty/channel/r<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(ILjava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/r$a;->f(ILjava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/r;

    move-result-object p1

    return-object p1
.end method

.method protected f(ILjava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/channel/r;-><init>(ILjava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/r$a;)V

    return-object v0
.end method
