.class final Leh/a2$e;
.super Lio/grpc/n0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Lio/grpc/d1;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/a2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/x;",
            "Leh/a2$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/grpc/d1;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/d1;",
            "Ljava/util/List<",
            "Leh/a2$c;",
            ">;",
            "Ljava/util/Map<",
            "Lio/grpc/x;",
            "Lio/grpc/n0$h;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/grpc/n0$i;-><init>()V

    .line 3
    iput-object p1, p0, Leh/a2$e;->a:Lio/grpc/d1;

    .line 4
    iput-object p2, p0, Leh/a2$e;->b:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Leh/a2$e;->c:Ljava/util/Map;

    .line 6
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/n0$h;

    .line 8
    invoke-virtual {p3}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object v0

    invoke-static {}, Leh/a2;->g()Lio/grpc/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/a2$b;

    iget-object v0, v0, Leh/a2$b;->a:Ljava/lang/Object;

    check-cast v0, Lio/grpc/q;

    .line 9
    iget-object v1, p0, Leh/a2$e;->c:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/x;

    new-instance v2, Leh/a2$f;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v0, v3}, Leh/a2$f;-><init>(Lio/grpc/n0$h;Lio/grpc/q;Leh/a2$a;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/d1;Ljava/util/List;Ljava/util/Map;Leh/a2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leh/a2$e;-><init>(Lio/grpc/d1;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$f;->a()Lio/grpc/c;

    move-result-object p1

    sget-object v0, Leh/r2;->v:Lio/grpc/c$a;

    invoke-virtual {p1, v0}, Lio/grpc/c;->h(Lio/grpc/c$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Leh/a2;->h()Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Leh/a2$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    add-int v3, v2, v0

    .line 4
    div-int/lit8 v3, v3, 0x2

    .line 5
    iget-object v4, p0, Leh/a2$e;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    :goto_0
    const/4 v3, 0x0

    goto :goto_3

    .line 6
    :cond_2
    iget-object v4, p0, Leh/a2$e;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh/a2$c;

    invoke-static {v4}, Leh/a2$c;->a(Leh/a2$c;)J

    move-result-wide v4

    if-nez v3, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_1

    .line 7
    :cond_3
    iget-object v6, p0, Leh/a2$e;->b:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leh/a2$c;

    invoke-static {v6}, Leh/a2$c;->a(Leh/a2$c;)J

    move-result-wide v6

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-gtz v10, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-lez v10, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_5

    add-int/lit8 v2, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    :goto_2
    if-le v2, v0, :cond_1

    goto :goto_0

    :goto_3
    const/4 p1, 0x0

    const/4 v0, 0x1

    move-object v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 10
    :goto_4
    iget-object v7, p0, Leh/a2$e;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    add-int v7, v3, v4

    .line 11
    iget-object v8, p0, Leh/a2$e;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    rem-int/2addr v7, v8

    .line 12
    iget-object v8, p0, Leh/a2$e;->b:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh/a2$c;

    invoke-static {v7}, Leh/a2$c;->b(Leh/a2$c;)Lio/grpc/x;

    move-result-object v7

    .line 13
    iget-object v8, p0, Leh/a2$e;->c:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh/a2$f;

    .line 14
    invoke-static {v7}, Leh/a2$f;->a(Leh/a2$f;)Lio/grpc/q;

    move-result-object v8

    invoke-virtual {v8}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v8

    sget-object v9, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v8, v9, :cond_6

    .line 15
    invoke-static {v7}, Leh/a2$f;->b(Leh/a2$f;)Lio/grpc/n0$h;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/n0$e;->h(Lio/grpc/n0$h;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1

    :cond_6
    if-nez p1, :cond_7

    .line 16
    invoke-static {v7}, Leh/a2$f;->b(Leh/a2$f;)Lio/grpc/n0$h;

    move-result-object p1

    goto :goto_5

    .line 17
    :cond_7
    invoke-static {v7}, Leh/a2$f;->b(Leh/a2$f;)Lio/grpc/n0$h;

    move-result-object v8

    if-eq v8, p1, :cond_9

    if-nez v2, :cond_8

    .line 18
    invoke-static {v7}, Leh/a2$f;->b(Leh/a2$f;)Lio/grpc/n0$h;

    move-result-object v2

    goto :goto_5

    .line 19
    :cond_8
    invoke-static {v7}, Leh/a2$f;->b(Leh/a2$f;)Lio/grpc/n0$h;

    move-result-object v8

    if-eq v8, v2, :cond_9

    const/4 v6, 0x0

    .line 20
    :cond_9
    :goto_5
    invoke-static {v7}, Leh/a2$f;->a(Leh/a2$f;)Lio/grpc/q;

    move-result-object v8

    invoke-virtual {v8}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v8

    sget-object v9, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v8, v9, :cond_a

    goto :goto_6

    :cond_a
    if-nez v5, :cond_d

    .line 21
    invoke-static {v7}, Leh/a2$f;->a(Leh/a2$f;)Lio/grpc/q;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v5

    sget-object v8, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v5, v8, :cond_b

    .line 22
    invoke-static {v7}, Leh/a2$f;->b(Leh/a2$f;)Lio/grpc/n0$h;

    move-result-object v5

    .line 23
    iget-object v7, p0, Leh/a2$e;->a:Lio/grpc/d1;

    new-instance v8, Leh/a2$e$a;

    invoke-direct {v8, p0, v5}, Leh/a2$e$a;-><init>(Leh/a2$e;Lio/grpc/n0$h;)V

    invoke-virtual {v7, v8}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    :cond_b
    if-eqz v6, :cond_c

    .line 24
    invoke-static {}, Lio/grpc/n0$e;->g()Lio/grpc/n0$e;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 v5, 0x1

    :cond_d
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 25
    :cond_e
    iget-object p1, p0, Leh/a2$e;->c:Ljava/util/Map;

    iget-object v0, p0, Leh/a2$e;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/a2$c;

    invoke-static {v0}, Leh/a2$c;->b(Leh/a2$c;)Lio/grpc/x;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/a2$f;

    .line 26
    invoke-static {p1}, Leh/a2$f;->a(Leh/a2$f;)Lio/grpc/q;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/q;->d()Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1
.end method
