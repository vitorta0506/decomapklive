.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;


# instance fields
.field private d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    const-string p1, "method"

    .line 6
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string p1, "uri"

    .line 7
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p4, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;ZZ)V

    const-string p1, "method"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string p1, "uri"

    .line 4
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->h(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
