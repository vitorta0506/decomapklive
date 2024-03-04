.class final Lio/grpc/netty/shaded/io/netty/channel/n$a;
.super Lug/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/n<",
        "Ljava/util/Map<",
        "Ljava/lang/Class<",
        "+",
        "Lio/grpc/netty/shaded/io/netty/channel/k;",
        ">;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lug/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/n$a;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected o()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/k;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    return-object v0
.end method
