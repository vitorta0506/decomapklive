.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpg/g$d<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a$a;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->d:Lpg/g$d;

    invoke-interface {v0, p1}, Lpg/g$d;->a(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->r0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 3
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->q0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 4
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prohibited trailing header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
