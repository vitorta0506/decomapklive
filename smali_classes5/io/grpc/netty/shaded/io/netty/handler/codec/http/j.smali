.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a;
    }
.end annotation


# instance fields
.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

.field private final d:Z


# direct methods
.method public constructor <init>(Lkg/j;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;-><init>(Lkg/j;Z)V

    return-void
.end method

.method public constructor <init>(Lkg/j;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;-><init>(Lkg/j;)V

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a;

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a;-><init>(Z)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 4
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->d:Z

    return-void
.end method

.method private l(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->n()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->o(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    move-result-object p1

    return-object p1
.end method

.method public n()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;
    .locals 0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;->j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    return-object p0
.end method

.method public o(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;->k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->n()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->l(Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->o(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    move-result-object p1

    return-object p1
.end method

.method public x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-object v0
.end method
