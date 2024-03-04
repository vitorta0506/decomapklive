.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->d:[Ljava/lang/Object;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->a:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V

    return-void
.end method


# virtual methods
.method a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;",
            "TV;)TV;"
        }
    .end annotation

    .line 1
    iget v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->a:I

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->d(I)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->a:[Ljava/lang/Object;

    iget p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->a:I

    aget-object v1, v0, p1

    .line 3
    aput-object p2, v0, p1

    return-object v1
.end method

.method b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->a:I

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method

.method c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->a:I

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object v1, v0, p1

    .line 3
    aput-object v2, v0, p1

    move-object v2, v1

    :cond_0
    return-object v2
.end method

.method d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->b()I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g$a;->a:[Ljava/lang/Object;

    :cond_0
    return-void
.end method
