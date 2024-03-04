.class public Leh/r0;
.super Lio/grpc/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/r0$a;
    }
.end annotation


# instance fields
.field private final b:Lio/grpc/p0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Leh/r0;-><init>(Lio/grpc/p0;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/p0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    .line 3
    iput-object p1, p0, Leh/r0;->b:Lio/grpc/p0;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 1

    new-instance v0, Leh/q0;

    invoke-direct {v0, p1}, Leh/q0;-><init>(Lio/grpc/n0$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "cluster_manager_experimental"

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
    .locals 6
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
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    const-string v1, "childPolicy"

    .line 2
    invoke-static {p1, v1}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    .line 6
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No config for child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in cluster_manager LB policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v5, "lbPolicy"

    .line 7
    invoke-static {v4, v5}, Lio/grpc/internal/b1;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-static {v4}, Lio/grpc/internal/e2;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v5, p0, Leh/r0;->b:Lio/grpc/p0;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lio/grpc/p0;->b()Lio/grpc/p0;

    move-result-object v5

    .line 11
    :goto_1
    invoke-static {v4, v5}, Lio/grpc/internal/e2;->z(Ljava/util/List;Lio/grpc/p0;)Lio/grpc/t0$c;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lio/grpc/t0$c;->d()Lio/grpc/Status;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 13
    invoke-virtual {v4}, Lio/grpc/t0$c;->d()Lio/grpc/Status;

    move-result-object v0

    .line 14
    sget-object v1, Lio/grpc/Status;->t:Lio/grpc/Status;

    .line 15
    invoke-virtual {v0}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to select config for child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    invoke-virtual {v4}, Lio/grpc/t0$c;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/e2$b;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 20
    :cond_5
    :goto_2
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No config specified for child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in cluster_manager Lb policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 21
    :cond_6
    new-instance p1, Leh/r0$a;

    invoke-direct {p1, v0}, Leh/r0$a;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 22
    :cond_7
    :goto_3
    :try_start_1
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No child policy provided for cluster_manager LB policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse cluster_manager LB config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
