.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;


# instance fields
.field private a:Lpg/e;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lpg/e;->e:Lpg/e;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->a:Lpg/e;

    return-void
.end method


# virtual methods
.method public a()Lpg/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->a:Lpg/e;

    return-object v0
.end method

.method public e(Lpg/e;)V
    .locals 1

    const-string v0, "decoderResult"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpg/e;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->a:Lpg/e;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->a()Lpg/e;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->a()Lpg/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->a:Lpg/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
