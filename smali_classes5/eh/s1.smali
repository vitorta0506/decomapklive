.class final Leh/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/s1$e;,
        Leh/s1$d;,
        Leh/s1$c;,
        Leh/s1$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/z1<",
            "Leh/s1$b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Leh/t1;",
            "Leh/z1<",
            "Leh/s1$d;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    const-string v0, "stopwatchSupplier"

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/w;

    iput-object p1, p0, Leh/s1;->c:Lcom/google/common/base/w;

    return-void
.end method

.method static synthetic a(Leh/s1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leh/s1;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Leh/s1;Ljava/lang/String;Ljava/lang/String;Leh/t1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Leh/s1;->h(Ljava/lang/String;Ljava/lang/String;Leh/t1;)V

    return-void
.end method

.method private declared-synchronized g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "stats for cluster %s, edsServiceName %s not exits"

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/o;->E(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/z1;

    .line 5
    invoke-virtual {p1}, Leh/z1;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized h(Ljava/lang/String;Ljava/lang/String;Leh/t1;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "stats for cluster %s, edsServiceName %s, locality %s not exits"

    .line 4
    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/common/base/o;->F(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/z1;

    .line 7
    invoke-virtual {p1}, Leh/z1;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leh/g2;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Leh/s1;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/w7;->q(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/w7$g;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Leh/s1;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Leh/s1$b;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Leh/s1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Leh/s1$b;

    iget-object v2, p0, Leh/s1;->c:Lcom/google/common/base/w;

    .line 6
    invoke-interface {v2}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/common/base/u;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Leh/s1$b;-><init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/u;Leh/s1$a;)V

    .line 7
    invoke-static {v1}, Leh/z1;->e(Ljava/lang/Object;)Leh/z1;

    move-result-object p1

    .line 8
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/z1;

    .line 10
    invoke-virtual {p1}, Leh/z1;->d()V

    .line 11
    invoke-virtual {p1}, Leh/z1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/s1$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Leh/t1;)Leh/s1$d;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Leh/s1;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 8
    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Leh/s1$d;

    iget-object v2, p0, Leh/s1;->c:Lcom/google/common/base/w;

    .line 10
    invoke-interface {v2}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/common/base/u;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Leh/s1$d;-><init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Leh/t1;Lcom/google/common/base/u;Leh/s1$a;)V

    .line 11
    invoke-static {v1}, Leh/z1;->e(Ljava/lang/Object;)Leh/z1;

    move-result-object p1

    .line 12
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/z1;

    .line 14
    invoke-virtual {p1}, Leh/z1;->d()V

    .line 15
    invoke-virtual {p1}, Leh/z1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/s1$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized f(Ljava/lang/String;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Leh/g2;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, v1, Leh/s1;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Leh/s1;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, v1, Leh/s1;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4
    iget-object v3, v1, Leh/s1;->b:Ljava/util/Map;

    .line 5
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_5

    .line 7
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 9
    invoke-static {}, Leh/g2;->e()Leh/g2$a;

    move-result-object v10

    invoke-virtual {v10, v0}, Leh/g2$a;->d(Ljava/lang/String;)Leh/g2$a;

    move-result-object v10

    if-eqz v9, :cond_1

    .line 10
    invoke-virtual {v10, v9}, Leh/g2$a;->e(Ljava/lang/String;)Leh/g2$a;

    .line 11
    :cond_1
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Leh/z1;

    .line 12
    invoke-virtual {v11}, Leh/z1;->b()I

    move-result v12

    if-nez v12, :cond_2

    .line 13
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {v11}, Leh/z1;->a()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Leh/s1$b;

    invoke-static {v11}, Leh/s1$b;->a(Leh/s1$b;)Leh/s1$c;

    move-result-object v11

    .line 15
    invoke-static {v11}, Leh/s1$c;->a(Leh/s1$c;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v13, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v5, v0, v1}, Leh/h2;->b(Ljava/lang/String;J)Leh/h2;

    move-result-object v0

    invoke-virtual {v10, v0}, Leh/g2$a;->a(Leh/h2;)Leh/g2$a;

    .line 17
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v13, v0

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {v11}, Leh/s1$c;->b(Leh/s1$c;)J

    move-result-wide v0

    add-long/2addr v13, v0

    .line 19
    invoke-virtual {v10, v13, v14}, Leh/g2$a;->i(J)Leh/g2$a;

    .line 20
    invoke-static {v11}, Leh/s1$c;->c(Leh/s1$c;)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Leh/g2$a;->h(J)Leh/g2$a;

    .line 21
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto/16 :goto_0

    .line 22
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    if-eqz v3, :cond_d

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 24
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/g2$a;

    if-nez v5, :cond_8

    .line 26
    invoke-static {}, Leh/g2;->e()Leh/g2$a;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Leh/g2$a;->d(Ljava/lang/String;)Leh/g2$a;

    move-result-object v5

    if-eqz v2, :cond_7

    .line 27
    invoke-virtual {v5, v2}, Leh/g2$a;->e(Ljava/lang/String;)Leh/g2$a;

    .line 28
    :cond_7
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move-object/from16 v6, p1

    .line 29
    :goto_3
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 30
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 31
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leh/t1;

    .line 32
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Leh/z1;

    .line 33
    invoke-virtual {v11}, Leh/z1;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Leh/s1$d;

    invoke-static {v12}, Leh/s1$d;->a(Leh/s1$d;)Leh/s1$e;

    move-result-object v12

    .line 34
    invoke-virtual {v11}, Leh/z1;->b()I

    move-result v11

    if-nez v11, :cond_9

    invoke-static {v12}, Leh/s1$e;->c(Leh/s1$e;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-nez v11, :cond_a

    .line 35
    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const-wide/16 v15, 0x0

    .line 36
    :cond_a
    :goto_5
    invoke-static {v12}, Leh/s1$e;->d(Leh/s1$e;)J

    move-result-wide v18

    invoke-static {v12}, Leh/s1$e;->e(Leh/s1$e;)J

    move-result-wide v20

    invoke-static {v12}, Leh/s1$e;->a(Leh/s1$e;)J

    move-result-wide v22

    .line 37
    invoke-static {v12}, Leh/s1$e;->c(Leh/s1$e;)J

    move-result-wide v24

    move-object/from16 v17, v10

    .line 38
    invoke-static/range {v17 .. v25}, Leh/i2;->a(Leh/t1;JJJJ)Leh/i2;

    move-result-object v10

    .line 39
    invoke-virtual {v5, v10}, Leh/g2$a;->b(Leh/i2;)Leh/g2$a;

    .line 40
    invoke-virtual {v5}, Leh/g2$a;->g()J

    move-result-wide v10

    invoke-static {v12}, Leh/s1$e;->b(Leh/s1$e;)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 41
    invoke-virtual {v5, v10, v11}, Leh/g2$a;->h(J)Leh/g2$a;

    goto :goto_4

    :cond_b
    const-wide/16 v15, 0x0

    .line 42
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 43
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 45
    :cond_c
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 46
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/g2$a;

    .line 48
    invoke-virtual {v2}, Leh/g2$a;->c()Leh/g2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 49
    :cond_e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
