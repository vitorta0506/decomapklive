.class final Lkg/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/util/internal/r$b<",
        "Lkg/k0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/k0$a;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)Lkg/k0;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)Lkg/k0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/k0;",
            ">;)",
            "Lkg/k0;"
        }
    .end annotation

    new-instance v0, Lkg/k0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lkg/k0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;ILkg/k0$a;)V

    return-object v0
.end method
