.class final Lio/grpc/netty/shaded/io/netty/channel/d0;
.super Lio/grpc/netty/shaded/io/netty/channel/b;
.source "SourceFile"


# instance fields
.field private final m:Lio/grpc/netty/shaded/io/netty/channel/k;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lug/j;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)V
    .locals 1

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lug/j;Ljava/lang/String;Ljava/lang/Class;)V

    .line 2
    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/channel/d0;->m:Lio/grpc/netty/shaded/io/netty/channel/k;

    return-void
.end method


# virtual methods
.method public z()Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d0;->m:Lio/grpc/netty/shaded/io/netty/channel/k;

    return-object v0
.end method
