.class public abstract Lio/grpc/netty/shaded/io/netty/util/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/internal/r$c;,
        Lio/grpc/netty/shaded/io/netty/util/internal/r$b;,
        Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$b<",
            "TT;>;)",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/r$c;

    const-string v1, "creator"

    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/internal/r$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$c;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
