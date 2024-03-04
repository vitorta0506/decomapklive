.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;
.super Lpg/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lpg/g<",
        "Ljava/lang/CharSequence;",
        "TV;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lpg/n;->b()Lpg/n;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;-><init>(ZLpg/o;)V

    return-void
.end method

.method public constructor <init>(ZLpg/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lpg/o<",
            "TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/c;->h:Lio/grpc/netty/shaded/io/netty/util/l;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/c;->g:Lio/grpc/netty/shaded/io/netty/util/l;

    :goto_0
    invoke-direct {p0, p1, p2}, Lpg/g;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;)V

    return-void
.end method

.method public constructor <init>(ZLpg/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lpg/o<",
            "TV;>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/c;->h:Lio/grpc/netty/shaded/io/netty/util/l;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/c;->g:Lio/grpc/netty/shaded/io/netty/util/l;

    :goto_0
    sget-object v0, Lpg/g$d;->a:Lpg/g$d;

    invoke-direct {p0, p1, p2, v0, p3}, Lpg/g;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;I)V

    return-void
.end method
