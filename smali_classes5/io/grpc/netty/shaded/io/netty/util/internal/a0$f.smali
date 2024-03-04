.class final Lio/grpc/netty/shaded/io/netty/util/internal/a0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/a0;->a(Ljava/nio/channels/ServerSocketChannel;)Ljava/nio/channels/SocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/nio/channels/SocketChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a0$f;->a:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a0$f;->a:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a0$f;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method
