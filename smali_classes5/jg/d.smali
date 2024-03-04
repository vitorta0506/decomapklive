.class public final Ljg/d;
.super Ljg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljg/b<",
        "Ljg/c;",
        "Lio/grpc/netty/shaded/io/netty/channel/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljg/c;)V
    .locals 0

    invoke-direct {p0, p1}, Ljg/b;-><init>(Ljg/a;)V

    return-void
.end method


# virtual methods
.method public g()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    check-cast v0, Ljg/c;

    invoke-virtual {v0}, Ljg/c;->E()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public h()Lsg/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsg/b<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    check-cast v0, Ljg/c;

    invoke-virtual {v0}, Ljg/c;->G()Lsg/b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljg/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, ", resolver: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg/d;->h()Lsg/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljg/d;->g()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ", remoteAddress: "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x29

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
