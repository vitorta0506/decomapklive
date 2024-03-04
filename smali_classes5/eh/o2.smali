.class public final Leh/o2;
.super Lio/grpc/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/o2$b;,
        Leh/o2$a;
    }
.end annotation


# instance fields
.field private final b:Lio/grpc/p0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Leh/o2;-><init>(Lio/grpc/p0;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/p0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    .line 3
    iput-object p1, p0, Leh/o2;->b:Lio/grpc/p0;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 1

    new-instance v0, Leh/n2;

    invoke-direct {v0, p1}, Leh/n2;-><init>(Lio/grpc/n0$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "weighted_target_experimental"

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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    :try_start_0
    const-string v0, "targets"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v0, v3}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " in weighted_target LB policy:\n "

    if-eqz v4, :cond_8

    .line 6
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v6, "weight"

    .line 7
    invoke-static {v4, v6}, Lio/grpc/internal/b1;->i(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "childPolicy"

    .line 9
    invoke-static {v4, v7}, Lio/grpc/internal/b1;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lio/grpc/internal/e2;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 11
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v5, p0, Leh/o2;->b:Lio/grpc/p0;

    if-nez v5, :cond_4

    invoke-static {}, Lio/grpc/p0;->b()Lio/grpc/p0;

    move-result-object v5

    .line 13
    :cond_4
    invoke-static {v4, v5}, Lio/grpc/internal/e2;->z(Ljava/util/List;Lio/grpc/p0;)Lio/grpc/t0$c;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Lio/grpc/t0$c;->d()Lio/grpc/Status;

    move-result-object v5

    if-eqz v5, :cond_5

    return-object v4

    .line 15
    :cond_5
    invoke-virtual {v4}, Lio/grpc/t0$c;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/e2$b;

    .line 16
    new-instance v5, Leh/o2$a;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v4}, Leh/o2$a;-><init>(ILio/grpc/internal/e2$b;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_6
    :goto_1
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No child policy for target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    :goto_2
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong weight for target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    :goto_3
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No config for target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    new-instance v0, Leh/o2$b;

    invoke-direct {v0, v1}, Leh/o2$b;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 21
    :cond_a
    :goto_4
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No targets provided for weighted_target LB policy:\n "

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

    .line 22
    invoke-static {v0}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse weighted_target LB config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
