.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;)V

    return-void
.end method


# virtual methods
.method a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;I)V

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method b()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
