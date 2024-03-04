.class abstract Lorg/conscrypt/a;
.super Ljavax/net/ssl/SSLEngine;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljavax/net/ssl/SSLSession;
.end method

.method abstract b()I
.end method

.method abstract c([Ljava/lang/String;)V
.end method

.method abstract d(Lorg/conscrypt/c;)V
.end method

.method abstract e(Lorg/conscrypt/m;)V
.end method

.method abstract f([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public final getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/a;->a()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method
