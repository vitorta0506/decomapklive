.class public abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;


# instance fields
.field private b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;


# direct methods
.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;-><init>()V

    const-string v0, "version"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    const-string p1, "headers"

    .line 4
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a;

    invoke-direct {p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    invoke-direct {p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(Z)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    return-void
.end method


# virtual methods
.method public b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
