.class final Lio/grpc/netty/shaded/io/netty/util/internal/a0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/a0;->h(Ljava/net/ServerSocket;)Ljava/net/SocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/SocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(Ljava/net/ServerSocket;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a0$g;->a:Ljava/net/ServerSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a0$g;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a0$g;->a()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method
