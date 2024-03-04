.class Lio/grpc/alts/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:I


# instance fields
.field private final a:Lio/grpc/alts/internal/i;

.field private final b:Lio/grpc/alts/internal/h;

.field private c:Lio/grpc/alts/internal/HandshakerResult;

.field private d:Lio/grpc/alts/internal/HandshakerStatus;

.field private final e:Lio/grpc/ChannelLogger;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/d;->e()I

    move-result v0

    sput v0, Lio/grpc/alts/internal/g;->g:I

    return-void
.end method

.method constructor <init>(Lio/grpc/alts/internal/t$d;Lio/grpc/alts/internal/h;Lio/grpc/ChannelLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/grpc/alts/internal/g;->f:Z

    .line 3
    new-instance v0, Lio/grpc/alts/internal/i;

    invoke-direct {v0, p1}, Lio/grpc/alts/internal/i;-><init>(Lio/grpc/alts/internal/t$d;)V

    iput-object v0, p0, Lio/grpc/alts/internal/g;->a:Lio/grpc/alts/internal/i;

    .line 4
    iput-object p2, p0, Lio/grpc/alts/internal/g;->b:Lio/grpc/alts/internal/h;

    .line 5
    iput-object p3, p0, Lio/grpc/alts/internal/g;->e:Lio/grpc/ChannelLogger;

    return-void
.end method

.method private d(Lio/grpc/alts/internal/HandshakerResp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResp;->getStatus()Lio/grpc/alts/internal/HandshakerStatus;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/g;->d:Lio/grpc/alts/internal/HandshakerStatus;

    .line 2
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResp;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResp;->getResult()Lio/grpc/alts/internal/HandshakerResult;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/g;->c:Lio/grpc/alts/internal/HandshakerResult;

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/g;->a()V

    .line 5
    :cond_0
    iget-object p1, p0, Lio/grpc/alts/internal/g;->d:Lio/grpc/alts/internal/HandshakerStatus;

    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerStatus;->getCode()I

    move-result p1

    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handshaker service error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/grpc/alts/internal/g;->d:Lio/grpc/alts/internal/HandshakerStatus;

    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerStatus;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/grpc/alts/internal/g;->e:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    invoke-virtual {v0, v1, p1}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lio/grpc/alts/internal/g;->a()V

    .line 9
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Lio/grpc/alts/internal/HandshakerReq$c;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->newBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    sget-object v1, Lio/grpc/alts/internal/HandshakeProtocol;->ALTS:Lio/grpc/alts/internal/HandshakeProtocol;

    .line 2
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->v0(Lio/grpc/alts/internal/HandshakeProtocol;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    const-string v1, "grpc"

    .line 3
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->W(Ljava/lang/String;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    const-string v1, "ALTSRP_GCM_AES128_REKEY"

    .line 4
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->X(Ljava/lang/String;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/grpc/alts/internal/g;->b:Lio/grpc/alts/internal/h;

    invoke-virtual {v1}, Lio/grpc/alts/internal/h;->a()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/grpc/alts/internal/g;->b:Lio/grpc/alts/internal/h;

    invoke-virtual {v1}, Lio/grpc/alts/internal/h;->a()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->z0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 7
    :cond_0
    iget-object v1, p0, Lio/grpc/alts/internal/g;->b:Lio/grpc/alts/internal/h;

    instance-of v2, v1, Lio/grpc/alts/internal/e;

    if-eqz v2, :cond_2

    .line 8
    check-cast v1, Lio/grpc/alts/internal/e;

    .line 9
    invoke-virtual {v1}, Lio/grpc/alts/internal/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v1}, Lio/grpc/alts/internal/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->B0(Ljava/lang/String;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 11
    :cond_1
    invoke-virtual {v1}, Lio/grpc/alts/internal/e;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->Z()Lio/grpc/alts/internal/Identity$d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/grpc/alts/internal/Identity$d;->l0(Ljava/lang/String;)Lio/grpc/alts/internal/Identity$d;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lio/grpc/alts/internal/l;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->y0(I)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 14
    invoke-virtual {p1, v0}, Lio/grpc/alts/internal/HandshakerReq$c;->l0(Lio/grpc/alts/internal/StartClientHandshakeReq$b;)Lio/grpc/alts/internal/HandshakerReq$c;

    return-void
.end method

.method private h(Lio/grpc/alts/internal/HandshakerReq$c;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/ServerHandshakeParameters;->newBuilder()Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    const-string v1, "ALTSRP_GCM_AES128_REKEY"

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/ServerHandshakeParameters$b;->W(Ljava/lang/String;)Lio/grpc/alts/internal/ServerHandshakeParameters$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/alts/internal/ServerHandshakeParameters$b;->Y()Lio/grpc/alts/internal/ServerHandshakeParameters;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/StartServerHandshakeReq;->newBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v1

    const-string v2, "grpc"

    .line 3
    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->W(Ljava/lang/String;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v1

    sget-object v2, Lio/grpc/alts/internal/HandshakeProtocol;->ALTS:Lio/grpc/alts/internal/HandshakeProtocol;

    .line 4
    invoke-virtual {v2}, Lio/grpc/alts/internal/HandshakeProtocol;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->q0(ILio/grpc/alts/internal/ServerHandshakeParameters;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->s0(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lio/grpc/alts/internal/g;->b:Lio/grpc/alts/internal/h;

    invoke-virtual {v0}, Lio/grpc/alts/internal/h;->a()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/grpc/alts/internal/g;->b:Lio/grpc/alts/internal/h;

    invoke-virtual {v0}, Lio/grpc/alts/internal/h;->a()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->u0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 8
    :cond_0
    invoke-static {}, Lio/grpc/alts/internal/l;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->t0(I)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 9
    invoke-virtual {p1, p2}, Lio/grpc/alts/internal/HandshakerReq$c;->o0(Lio/grpc/alts/internal/StartServerHandshakeReq$b;)Lio/grpc/alts/internal/HandshakerReq$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/alts/internal/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/alts/internal/g;->f:Z

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/g;->a:Lio/grpc/alts/internal/i;

    invoke-virtual {v0}, Lio/grpc/alts/internal/i;->c()V

    return-void
.end method

.method public b()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/g;->c:Lio/grpc/alts/internal/HandshakerResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerResult;->getKeyData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    sget v1, Lio/grpc/alts/internal/g;->g:I

    if-lt v0, v1, :cond_1

    .line 3
    new-array v0, v1, [B

    .line 4
    iget-object v2, p0, Lio/grpc/alts/internal/g;->c:Lio/grpc/alts/internal/HandshakerResult;

    invoke-virtual {v2}, Lio/grpc/alts/internal/HandshakerResult;->getKeyData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/google/protobuf/ByteString;->copyTo([BI)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get enough key data from the handshake."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lio/grpc/alts/internal/HandshakerResult;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/g;->c:Lio/grpc/alts/internal/HandshakerResult;

    return-object v0
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/g;->c:Lio/grpc/alts/internal/HandshakerResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/g;->d:Lio/grpc/alts/internal/HandshakerStatus;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerStatus;->getCode()I

    move-result v0

    sget-object v2, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v2}, Lio/grpc/Status$Code;->value()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/g;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Handshake has already finished."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/HandshakerReq;->newBuilder()Lio/grpc/alts/internal/HandshakerReq$c;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/grpc/alts/internal/NextHandshakeMessageReq;->newBuilder()Lio/grpc/alts/internal/NextHandshakeMessageReq$b;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/NextHandshakeMessageReq$b;->j0(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/NextHandshakeMessageReq$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lio/grpc/alts/internal/NextHandshakeMessageReq$b;->X()Lio/grpc/alts/internal/NextHandshakeMessageReq;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/HandshakerReq$c;->n0(Lio/grpc/alts/internal/NextHandshakeMessageReq;)Lio/grpc/alts/internal/HandshakerReq$c;

    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/grpc/alts/internal/g;->e:Lio/grpc/ChannelLogger;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v3, "Send ALTS handshake request to upstream"

    invoke-virtual {v1, v2, v3}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lio/grpc/alts/internal/g;->a:Lio/grpc/alts/internal/i;

    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerReq$c;->X()Lio/grpc/alts/internal/HandshakerReq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/alts/internal/i;->f(Lio/grpc/alts/internal/HandshakerReq;)Lio/grpc/alts/internal/HandshakerResp;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/grpc/alts/internal/g;->e:Lio/grpc/ChannelLogger;

    const-string v3, "Receive ALTS handshake response from upstream"

    invoke-virtual {v1, v2, v3}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-direct {p0, v0}, Lio/grpc/alts/internal/g;->d(Lio/grpc/alts/internal/HandshakerResp;)V

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerResp;->getBytesConsumed()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerResp;->getOutFrames()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    :goto_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/g;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Handshake has already finished."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/HandshakerReq;->newBuilder()Lio/grpc/alts/internal/HandshakerReq$c;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/alts/internal/g;->g(Lio/grpc/alts/internal/HandshakerReq$c;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/alts/internal/g;->e:Lio/grpc/ChannelLogger;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v3, "Send ALTS handshake request to upstream"

    invoke-virtual {v1, v2, v3}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lio/grpc/alts/internal/g;->a:Lio/grpc/alts/internal/i;

    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerReq$c;->X()Lio/grpc/alts/internal/HandshakerReq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/alts/internal/i;->f(Lio/grpc/alts/internal/HandshakerReq;)Lio/grpc/alts/internal/HandshakerResp;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/grpc/alts/internal/g;->e:Lio/grpc/ChannelLogger;

    const-string v3, "Receive ALTS handshake response from upstream"

    invoke-virtual {v1, v2, v3}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-direct {p0, v0}, Lio/grpc/alts/internal/g;->d(Lio/grpc/alts/internal/HandshakerResp;)V

    .line 8
    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerResp;->getOutFrames()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    :goto_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/g;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Handshake has already finished."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/HandshakerReq;->newBuilder()Lio/grpc/alts/internal/HandshakerReq$c;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lio/grpc/alts/internal/g;->h(Lio/grpc/alts/internal/HandshakerReq$c;Ljava/nio/ByteBuffer;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/alts/internal/g;->a:Lio/grpc/alts/internal/i;

    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerReq$c;->X()Lio/grpc/alts/internal/HandshakerReq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/alts/internal/i;->f(Lio/grpc/alts/internal/HandshakerReq;)Lio/grpc/alts/internal/HandshakerResp;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-direct {p0, v0}, Lio/grpc/alts/internal/g;->d(Lio/grpc/alts/internal/HandshakerResp;)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerResp;->getBytesConsumed()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v0}, Lio/grpc/alts/internal/HandshakerResp;->getOutFrames()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    :goto_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
