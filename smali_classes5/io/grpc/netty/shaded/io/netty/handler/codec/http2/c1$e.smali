.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;

.field private static final serialVersionUID:J = -0x42b5aba775340c6eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->C()Z

    move-result v0

    .line 2
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->C()Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 3
    :cond_1
    iget v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->g:I

    iget v1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->g:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    iget p2, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    sub-int v0, p1, p2

    :goto_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I

    move-result p1

    return p1
.end method
