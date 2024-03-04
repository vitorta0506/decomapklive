.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/a;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/c;->g:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->m0(Z)Lpg/o;

    move-result-object v2

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->e0(Z)Lpg/g$d;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;)V

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(Lpg/g;)V

    return-void
.end method


# virtual methods
.method public z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 0

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method
