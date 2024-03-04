.class public final Lio/grpc/alts/internal/k$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field static d:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/k$e;->c()Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/k$e;->d:Lio/grpc/a$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/grpc/internal/p1;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/internal/p1<",
            "Lio/grpc/d;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/k$e;->a:Lcom/google/common/collect/ImmutableList;

    const-string p1, "handshakerChannelPool"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/p1;

    iput-object p1, p0, Lio/grpc/alts/internal/k$e;->b:Lio/grpc/internal/p1;

    const-string p1, "sslContext"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    iput-object p1, p0, Lio/grpc/alts/internal/k$e;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    return-void
.end method

.method private static c()Lio/grpc/a$c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/a$c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Unable to load xDS endpoint cluster name key, this may be expected"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-class v2, Leh/o1;

    sget-object v3, Leh/o1;->a:Lio/grpc/a$c;

    const-string v3, "ATTR_CLUSTER_NAME"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/a$c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    .line 3
    :goto_0
    invoke-static {}, Lio/grpc/alts/internal/k;->c()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 4
    :goto_1
    invoke-static {}, Lio/grpc/alts/internal/k;->c()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5
    :goto_2
    invoke-static {}, Lio/grpc/alts/internal/k;->c()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method

.method public bridge synthetic b()Lig/g0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/k$e;->d()Lig/s;

    move-result-object v0

    return-object v0
.end method

.method public d()Lig/s;
    .locals 5

    new-instance v0, Lio/grpc/alts/internal/k$d;

    iget-object v1, p0, Lio/grpc/alts/internal/k$e;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lio/grpc/alts/internal/k$e;->b:Lio/grpc/internal/p1;

    iget-object v3, p0, Lio/grpc/alts/internal/k$e;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    sget-object v4, Lio/grpc/alts/internal/k$e;->d:Lio/grpc/a$c;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/alts/internal/k$d;-><init>(Lcom/google/common/collect/ImmutableList;Lio/grpc/internal/p1;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/a$c;)V

    return-object v0
.end method
