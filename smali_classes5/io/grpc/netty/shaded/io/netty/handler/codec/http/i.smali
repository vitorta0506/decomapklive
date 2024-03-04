.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;


# instance fields
.field private d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    const-string p1, "status"

    .line 5
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;ZZ)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;ZZ)V

    const-string p1, "status"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->i(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
