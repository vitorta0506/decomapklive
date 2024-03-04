.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    const-string p1, "value"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J
    .locals 0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x20

    int-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method final a()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
