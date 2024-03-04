.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/k$a;
    }
.end annotation


# static fields
.field static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->b:Ljava/util/Iterator;

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->b0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;-><init>()V

    return-void
.end method

.method static b0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k$a;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public I(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public J()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public L(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(Ljava/lang/String;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->a0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
