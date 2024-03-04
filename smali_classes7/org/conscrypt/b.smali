.class abstract Lorg/conscrypt/b;
.super Ljavax/net/ssl/SSLSocket;
.source "SourceFile"


# instance fields
.field final a:Ljava/net/Socket;

.field private final b:Z

.field private c:Ljava/lang/String;

.field private final d:I

.field private final e:Lorg/conscrypt/z;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 2
    new-instance v0, Lorg/conscrypt/b$a;

    invoke-direct {v0, p0}, Lorg/conscrypt/b$a;-><init>(Lorg/conscrypt/b;)V

    iput-object v0, p0, Lorg/conscrypt/b;->e:Lorg/conscrypt/z;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/b;->f:Ljava/util/List;

    .line 4
    iput-object p0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/conscrypt/b;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lorg/conscrypt/b;->d:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/conscrypt/b;->b:Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Provided listener is null"

    .line 1
    invoke-static {v0, v1}, Lorg/conscrypt/b0;->a(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract b([Ljava/lang/String;)V
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :goto_0
    return-void
.end method

.method abstract c(Z)V
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lorg/conscrypt/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/conscrypt/b;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 4
    invoke-static {v0}, Lorg/conscrypt/a0;->f(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/b;->c:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    :goto_0
    return-void
.end method

.method public abstract getApplicationProtocol()Ljava/lang/String;
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lorg/conscrypt/b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lorg/conscrypt/b;->g:I

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Provided listener is null"

    .line 1
    invoke-static {v0, v1}, Lorg/conscrypt/b0;->a(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Provided listener is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendUrgentData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Method sendUrgentData() is not supported."

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    :goto_0
    return-void
.end method

.method public final setOOBInline(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Method setOOBInline() is not supported."

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    :goto_0
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    :goto_0
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    :goto_0
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    :goto_0
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    :goto_0
    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 4
    iput p1, p0, Lorg/conscrypt/b;->g:I

    :goto_0
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    :goto_0
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    :goto_0
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    :goto_0
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSL socket over "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lorg/conscrypt/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/conscrypt/b;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
