.class public final Lhg/g;
.super Lio/grpc/o0;
.source "SourceFile"


# static fields
.field private static final b:Lhg/i$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lhg/i$m;->a:Lhg/i$m;

    sput-object v0, Lhg/g;->b:Lhg/i$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 8

    .line 1
    new-instance v7, Lhg/f;

    sget-object v2, Lio/grpc/r;->e:Lio/grpc/r;

    new-instance v3, Lhg/b;

    invoke-direct {v3, p1}, Lhg/b;-><init>(Lio/grpc/n0$d;)V

    sget-object v4, Lio/grpc/internal/m2;->a:Lio/grpc/internal/m2;

    .line 2
    invoke-static {}, Lcom/google/common/base/u;->c()Lcom/google/common/base/u;

    move-result-object v5

    new-instance v6, Lio/grpc/internal/e0$a;

    invoke-direct {v6}, Lio/grpc/internal/e0$a;-><init>()V

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lhg/f;-><init>(Lio/grpc/n0$d;Lio/grpc/r;Lhg/k;Lio/grpc/internal/m2;Lcom/google/common/base/u;Lio/grpc/internal/k$a;)V

    return-object v7
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "grpclb"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lhg/g;->f(Ljava/util/Map;)Lio/grpc/t0$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse GRPCLB config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method

.method f(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lhg/g;->b:Lhg/i$m;

    invoke-static {p1}, Lhg/d;->a(Lhg/i$m;)Lhg/d;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "serviceName"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "childPolicy"

    .line 3
    invoke-static {p1, v1}, Lio/grpc/internal/b1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Lio/grpc/internal/b1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/internal/e2;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_6

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/e2$a;

    .line 8
    invoke-virtual {v2}, Lio/grpc/internal/e2$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "pick_first"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "round_robin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Lhg/i$m;->a:Lhg/i$m;

    invoke-static {p1, v0}, Lhg/d;->b(Lhg/i$m;Ljava/lang/String;)Lhg/d;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    sget-object p1, Lhg/i$m;->b:Lhg/i$m;

    invoke-static {p1, v0}, Lhg/d;->b(Lhg/i$m;Ljava/lang/String;)Lhg/d;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    sget-object v0, Lio/grpc/Status;->i:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " specified child policies are available."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    :goto_1
    sget-object p1, Lhg/g;->b:Lhg/i$m;

    invoke-static {p1, v0}, Lhg/d;->b(Lhg/i$m;Ljava/lang/String;)Lhg/d;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
