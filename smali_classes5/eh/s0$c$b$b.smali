.class Leh/s0$c$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/s0$c$b;->d(Leh/p2$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Leh/p2$e;

.field final synthetic b:Leh/s0$c$b;


# direct methods
.method constructor <init>(Leh/s0$c$b;Leh/p2$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iput-object p2, p0, Leh/s0$c$b$b;->a:Leh/p2$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-boolean v2, v1, Leh/s0$c$a;->h:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v1, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->a:Leh/q2$b;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, v0, Leh/s0$c$b$b;->a:Leh/p2$e;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Received endpoint update {0}"

    invoke-virtual {v1, v2, v5, v4}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v1, v1, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    invoke-virtual {v1, v2}, Leh/q2;->a(Leh/q2$b;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v1, v1, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, v0, Leh/s0$c$b$b;->a:Leh/p2$e;

    iget-object v8, v7, Leh/p2$e;->a:Ljava/lang/String;

    aput-object v8, v5, v6

    iget-object v7, v7, Leh/p2$e;->b:Ljava/util/Map;

    .line 5
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    iget-object v7, v0, Leh/s0$c$b$b;->a:Leh/p2$e;

    iget-object v7, v7, Leh/p2$e;->c:Ljava/util/List;

    .line 6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v7, "Cluster {0}: {1} localities, {2} drop categories"

    .line 7
    invoke-virtual {v1, v2, v7, v5}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v1, v0, Leh/s0$c$b$b;->a:Leh/p2$e;

    iget-object v2, v1, Leh/p2$e;->b:Ljava/util/Map;

    .line 9
    iget-object v15, v1, Leh/p2$e;->c:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh/t1;

    .line 13
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leh/z0;

    .line 14
    invoke-virtual {v8}, Leh/z0;->d()I

    move-result v9

    .line 15
    iget-object v10, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v10, v10, Leh/s0$c$a;->a:Ljava/lang/String;

    invoke-static {v10, v9}, Leh/s0;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v8}, Leh/z0;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v10

    const/4 v11, 0x1

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Leh/y0;

    .line 17
    invoke-virtual {v12}, Leh/y0;->c()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 18
    invoke-virtual {v8}, Leh/z0;->c()I

    move-result v11

    int-to-long v3, v11

    .line 19
    invoke-virtual {v12}, Leh/y0;->d()I

    move-result v11

    if-eqz v11, :cond_2

    .line 20
    invoke-virtual {v12}, Leh/y0;->d()I

    move-result v11

    move-object/from16 v16, v14

    int-to-long v13, v11

    mul-long v3, v3, v13

    goto :goto_2

    :cond_2
    move-object/from16 v16, v14

    .line 21
    :goto_2
    invoke-virtual {v12}, Leh/y0;->b()Lio/grpc/x;

    move-result-object v11

    invoke-virtual {v11}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v11

    invoke-virtual {v11}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v11

    sget-object v13, Leh/o1;->e:Lio/grpc/a$c;

    .line 22
    invoke-virtual {v11, v13, v7}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v11

    sget-object v13, Leh/o1;->f:Lio/grpc/a$c;

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v13, v3}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v3

    .line 25
    new-instance v4, Lio/grpc/x;

    .line 26
    invoke-virtual {v12}, Leh/y0;->b()Lio/grpc/x;

    move-result-object v11

    invoke-virtual {v11}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v11

    invoke-direct {v4, v11, v3}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/String;

    aput-object v9, v11, v6

    .line 27
    invoke-static {v7}, Leh/s0;->h(Leh/t1;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 28
    invoke-static {v4, v11}, Leh/b;->b(Lio/grpc/x;Ljava/util/List;)Lio/grpc/x;

    move-result-object v4

    .line 29
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v16, v14

    const/4 v3, 0x2

    :goto_3
    move-object/from16 v14, v16

    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_1

    :cond_4
    move-object/from16 v16, v14

    const/4 v3, 0x2

    if-eqz v11, :cond_5

    .line 30
    iget-object v4, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v4, v4, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v4, v4, Leh/s0$c;->i:Leh/s0;

    invoke-static {v4}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v4

    sget-object v8, Leh/q2$b;->b:Leh/q2$b;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v7, v10, v6

    const-string v7, "Discard locality {0} with 0 healthy endpoints"

    invoke-virtual {v4, v8, v7, v10}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v14, v16

    :goto_4
    const/4 v3, 0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, v16

    .line 31
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 32
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_6
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 34
    invoke-virtual {v8}, Leh/z0;->c()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 35
    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v4

    goto :goto_4

    :cond_7
    move-object v4, v14

    .line 36
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 37
    iget-object v2, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v2, v2, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v2, v2, Leh/s0$c;->i:Leh/s0;

    invoke-static {v2}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v2

    sget-object v3, Leh/q2$b;->b:Leh/q2$b;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v5, v0, Leh/s0$c$b$b;->a:Leh/p2$e;

    iget-object v5, v5, Leh/p2$e;->a:Ljava/lang/String;

    aput-object v5, v7, v6

    const-string v5, "Cluster {0} has no usable priority/locality/endpoint"

    invoke-virtual {v2, v3, v5, v7}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 40
    iget-object v3, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v7, v3, Leh/s0$c$a;->a:Ljava/lang/String;

    .line 41
    invoke-static {v3}, Leh/s0$c$b;->i(Leh/s0$c$b;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v9, v3, Leh/s0$c$a;->b:Leh/j0$d;

    iget-object v10, v3, Leh/s0$c$a;->c:Ljava/lang/Long;

    iget-object v11, v3, Leh/s0$c$a;->d:Leh/i1;

    iget-object v3, v3, Leh/s0$c$b;->k:Leh/s0$c;

    .line 42
    invoke-static {v3}, Leh/s0$c;->f(Leh/s0$c;)Lio/grpc/internal/e2$b;

    move-result-object v12

    iget-object v3, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v3, v3, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v3, v3, Leh/s0$c;->i:Leh/s0;

    invoke-static {v3}, Leh/s0;->p(Leh/s0;)Lio/grpc/p0;

    move-result-object v13

    move-object v14, v4

    .line 43
    invoke-static/range {v7 .. v15}, Leh/s0;->i(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/internal/e2$b;Lio/grpc/p0;Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 44
    iget-object v4, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    sget-object v5, Lio/grpc/Status;->f:Lio/grpc/Status;

    iput-object v5, v4, Leh/s0$c$a;->e:Lio/grpc/Status;

    const/4 v5, 0x1

    .line 45
    iput-boolean v5, v4, Leh/s0$c$a;->f:Z

    .line 46
    new-instance v5, Leh/s0$b;

    invoke-direct {v5, v1, v3, v2}, Leh/s0$b;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    iput-object v5, v4, Leh/s0$c$a;->g:Leh/s0$b;

    .line 47
    iget-object v1, v0, Leh/s0$c$b$b;->b:Leh/s0$c$b;

    iget-object v1, v1, Leh/s0$c$b;->k:Leh/s0$c;

    invoke-static {v1}, Leh/s0$c;->g(Leh/s0$c;)V

    return-void
.end method
