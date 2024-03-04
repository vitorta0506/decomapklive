.class public final Lio/grpc/alts/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/h0;


# instance fields
.field private final a:Lio/grpc/ChannelLogger;

.field private final b:Z

.field private final c:Lio/grpc/alts/internal/g;

.field private d:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(ZLio/grpc/alts/internal/t$d;Lio/grpc/alts/internal/h;Lio/grpc/ChannelLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/grpc/alts/internal/m;->b:Z

    .line 3
    iput-object p4, p0, Lio/grpc/alts/internal/m;->a:Lio/grpc/ChannelLogger;

    .line 4
    new-instance p1, Lio/grpc/alts/internal/g;

    invoke-direct {p1, p2, p3, p4}, Lio/grpc/alts/internal/g;-><init>(Lio/grpc/alts/internal/t$d;Lio/grpc/alts/internal/h;Lio/grpc/ChannelLogger;)V

    iput-object p1, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    return-void
.end method

.method public static h(Lio/grpc/alts/internal/t$d;Lio/grpc/alts/internal/h;Lio/grpc/ChannelLogger;)Lio/grpc/alts/internal/h0;
    .locals 2

    new-instance v0, Lio/grpc/alts/internal/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lio/grpc/alts/internal/m;-><init>(ZLio/grpc/alts/internal/t$d;Lio/grpc/alts/internal/h;Lio/grpc/ChannelLogger;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/m;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Handshake is not complete."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lio/grpc/alts/internal/j;

    iget-object v1, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v1}, Lio/grpc/alts/internal/g;->c()Lio/grpc/alts/internal/HandshakerResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/j;-><init>(Lio/grpc/alts/internal/HandshakerResult;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v0}, Lio/grpc/alts/internal/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Lio/grpc/alts/internal/j0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/m;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Handshake is not complete."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lio/grpc/alts/internal/j0$b;

    iget-object v2, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    .line 4
    invoke-virtual {v2}, Lio/grpc/alts/internal/g;->c()Lio/grpc/alts/internal/HandshakerResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/alts/internal/HandshakerResult;->getPeerIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/alts/internal/Identity;->getServiceAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "service_account"

    invoke-direct {v1, v3, v2}, Lio/grpc/alts/internal/j0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lio/grpc/alts/internal/j0;

    invoke-direct {v1, v0}, Lio/grpc/alts/internal/j0;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v0}, Lio/grpc/alts/internal/g;->a()V

    return-void
.end method

.method public d(Lkg/k;)Lio/grpc/alts/internal/f0;
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/l;->e()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lio/grpc/alts/internal/m;->g(ILkg/k;)Lio/grpc/alts/internal/f0;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/grpc/alts/internal/m;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/m;->a:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Initial ALTS handshake to downstream"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v0}, Lio/grpc/alts/internal/g;->i()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/alts/internal/m;->a:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Send ALTS request to downstream"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 8
    iget-object v0, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    iget-object p1, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public f(Ljava/nio/ByteBuffer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lio/grpc/alts/internal/m;->b:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 4
    iget-object v2, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    .line 5
    iget-boolean v2, p0, Lio/grpc/alts/internal/m;->b:Z

    xor-int/2addr v2, v1

    const-string v3, "Client handshaker should not process any frame at the beginning."

    invoke-static {v2, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v2, p1}, Lio/grpc/alts/internal/g;->j(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lio/grpc/alts/internal/m;->a:Lio/grpc/ChannelLogger;

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v4, "Receive ALTS handshake from downstream"

    invoke-virtual {v2, v3, v4}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v2, p1}, Lio/grpc/alts/internal/g;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    .line 9
    :goto_0
    iget-object v2, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v2}, Lio/grpc/alts/internal/g;->e()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lio/grpc/alts/internal/m;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    return v3

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Handshaker did not consume any bytes."

    invoke-static {v1, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/m;->f(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public g(ILkg/k;)Lio/grpc/alts/internal/f0;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/m;->b()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Handshake is not complete."

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v0}, Lio/grpc/alts/internal/g;->b()[B

    move-result-object v0

    .line 3
    array-length v2, v0

    invoke-static {}, Lio/grpc/alts/internal/d;->e()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Bad key length."

    invoke-static {v2, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lio/grpc/alts/internal/m;->c:Lio/grpc/alts/internal/g;

    invoke-virtual {v2}, Lio/grpc/alts/internal/g;->c()Lio/grpc/alts/internal/HandshakerResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/alts/internal/HandshakerResult;->getMaxFrameSize()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lio/grpc/alts/internal/l;->d()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    invoke-static {}, Lio/grpc/alts/internal/l;->e()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7
    :cond_1
    iget-object v2, p0, Lio/grpc/alts/internal/m;->a:Lio/grpc/ChannelLogger;

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "Maximum frame size value is {0}."

    invoke-virtual {v2, v3, v4, v1}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance v1, Lio/grpc/alts/internal/l;

    new-instance v2, Lio/grpc/alts/internal/d;

    iget-boolean v3, p0, Lio/grpc/alts/internal/m;->b:Z

    invoke-direct {v2, v0, v3}, Lio/grpc/alts/internal/d;-><init>([BZ)V

    invoke-direct {v1, p1, v2, p2}, Lio/grpc/alts/internal/l;-><init>(ILio/grpc/alts/internal/p;Lkg/k;)V

    return-object v1
.end method
