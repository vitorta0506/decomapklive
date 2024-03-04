.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/e0;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic F(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e0;->J(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V

    return-void
.end method

.method protected J(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->a()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    invoke-static {v0, p1}, Lkg/n;->i(Lio/grpc/netty/shaded/io/netty/util/c;Lkg/j;)V

    .line 2
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->i()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x202f20

    .line 4
    invoke-static {p1, v0}, Lkg/n;->a0(Lkg/j;I)Lkg/j;

    goto :goto_1

    :cond_0
    const-string v1, "://"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x3

    const/16 v4, 0x3f

    .line 7
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ge v2, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_2
    :goto_0
    const/16 v1, 0x20

    .line 11
    invoke-virtual {p1, v1}, Lkg/j;->u2(I)Lkg/j;

    move-result-object v2

    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0, v4}, Lkg/j;->D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    if-eqz v3, :cond_3

    const/16 v0, 0x2f20

    .line 12
    invoke-static {p1, v0}, Lkg/n;->b0(Lkg/j;I)Lkg/j;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p1, v1}, Lkg/j;->u2(I)Lkg/j;

    .line 14
    :goto_1
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->b(Lkg/j;)V

    const/16 p2, 0xd0a

    .line 15
    invoke-static {p1, p2}, Lkg/n;->b0(Lkg/j;I)Lkg/j;

    return-void
.end method

.method public s(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->s(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
