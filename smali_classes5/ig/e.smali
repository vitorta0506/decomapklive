.class Lig/e;
.super Lig/o0$b;
.source "SourceFile"


# instance fields
.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

.field private final d:Lig/z$c;

.field private final e:Z

.field private final f:Z


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lig/z$c;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lig/o0$b;-><init>()V

    const-string v0, "stream"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lig/z$c;

    iput-object p2, p0, Lig/e;->d:Lig/z$c;

    const-string p2, "headers"

    .line 3
    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    iput-object p1, p0, Lig/e;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    .line 4
    iput-boolean p3, p0, Lig/e;->e:Z

    .line 5
    iput-boolean p4, p0, Lig/e;->f:Z

    return-void
.end method


# virtual methods
.method d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 1

    iget-object v0, p0, Lig/e;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lig/e;->f:Z

    return v0
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lig/e;->e:Z

    return v0
.end method

.method h()Lig/z$c;
    .locals 1

    iget-object v0, p0, Lig/e;->d:Lig/z$c;

    return-object v0
.end method
