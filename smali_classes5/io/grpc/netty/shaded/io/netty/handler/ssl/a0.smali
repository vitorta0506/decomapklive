.class Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;
.super Ljavax/net/ssl/SSLEngine;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/a;


# instance fields
.field private final a:Ljavax/net/ssl/SSLEngine;

.field private volatile b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public beginHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b:Ljava/lang/String;

    return-void
.end method

.method public closeInbound()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    return-void
.end method

.method public closeOutbound()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    return-void
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    return v0
.end method

.method public isOutboundDone()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method
