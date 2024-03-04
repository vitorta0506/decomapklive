.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    return-void
.end method


# virtual methods
.method public a(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->n(ZS)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->i(S)Z

    move-result v0

    return v0
.end method

.method public c(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->n(ZS)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->i(S)Z

    move-result v0

    return v0
.end method

.method public e(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->n(ZS)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    iget-short v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    iget-short p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->i(S)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->k()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-short v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public i(S)Z
    .locals 1

    iget-short v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->n(ZS)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->i(S)Z

    move-result v0

    return v0
.end method

.method public l(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->n(ZS)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object p1

    return-object p1
.end method

.method public m()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->i(S)Z

    move-result v0

    return v0
.end method

.method public n(ZS)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    or-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    goto :goto_0

    .line 2
    :cond_0
    iget-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    not-int p2, p2

    and-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    :goto_0
    return-object p0
.end method

.method public o()S
    .locals 1

    iget-short v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value = "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ACK,"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "END_OF_HEADERS,"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "END_OF_STREAM,"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PRIORITY_PRESENT,"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PADDING_PRESENT,"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x29

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
