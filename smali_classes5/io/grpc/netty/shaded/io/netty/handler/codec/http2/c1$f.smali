.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;
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
    name = "f"
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
.field static final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;

.field private static final serialVersionUID:J = -0x13f332df3015f6e4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;

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

    iget-wide v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    iget-wide p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    invoke-static {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->a(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I

    move-result p1

    return p1
.end method
