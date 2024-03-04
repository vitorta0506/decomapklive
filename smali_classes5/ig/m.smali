.class final Lig/m;
.super Lig/l;
.source "SourceFile"


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lig/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lig/m;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 0

    .line 1
    invoke-static {p1}, Lig/l;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lig/l;->M(Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lig/l;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lig/l;->m(Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p1}, Lig/l;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lig/l;->F(Lio/grpc/netty/shaded/io/netty/util/c;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lig/m;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lig/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lig/l;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
