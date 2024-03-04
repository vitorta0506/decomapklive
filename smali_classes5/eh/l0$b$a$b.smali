.class Leh/l0$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/l0$b$a;->f(Leh/p2$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Leh/p2$c;

.field final synthetic b:Leh/l0$b$a;


# direct methods
.method constructor <init>(Leh/l0$b$a;Leh/p2$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iput-object p2, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v0}, Leh/l0$b$a;->i(Leh/l0$b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iget-object v0, v0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->k(Leh/l0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Received cluster update {0}"

    invoke-virtual {v0, v1, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v0, v2}, Leh/l0$b$a;->l(Leh/l0$b$a;Z)Z

    .line 4
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iget-object v1, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-static {v0, v1}, Leh/l0$b$a;->n(Leh/l0$b$a;Leh/p2$c;)Leh/p2$c;

    .line 5
    iget-object v0, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-virtual {v0}, Leh/p2$c;->c()Leh/p2$c$b;

    move-result-object v0

    sget-object v1, Leh/p2$c$b;->c:Leh/p2$c$b;

    const/4 v3, 0x2

    if-ne v0, v1, :cond_5

    .line 6
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v0, v5}, Leh/l0$b$a;->p(Leh/l0$b$a;Z)Z

    .line 7
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iget-object v0, v0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->k(Leh/l0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    .line 8
    invoke-virtual {v4}, Leh/p2$c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-virtual {v4}, Leh/p2$c;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Aggregate cluster {0}, underlying clusters: {1}"

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    iget-object v1, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-virtual {v1}, Leh/p2$c;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    iget-object v3, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v3}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v3}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v3, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v3}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/l0$b$a;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    new-instance v3, Leh/l0$b$a;

    iget-object v4, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iget-object v4, v4, Leh/l0$b$a;->g:Leh/l0$b;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Leh/l0$b$a;-><init>(Leh/l0$b;Ljava/lang/String;Leh/l0$a;)V

    .line 15
    invoke-static {v3}, Leh/l0$b$a;->j(Leh/l0$b$a;)V

    .line 16
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v1, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v1}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v1}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/l0$b$a;

    .line 19
    invoke-virtual {v2}, Leh/l0$b$a;->r()V

    goto :goto_2

    .line 20
    :cond_4
    iget-object v1, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v1, v0}, Leh/l0$b$a;->h(Leh/l0$b$a;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_3

    .line 21
    :cond_5
    iget-object v0, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-virtual {v0}, Leh/p2$c;->c()Leh/p2$c$b;

    move-result-object v0

    sget-object v1, Leh/p2$c$b;->a:Leh/p2$c$b;

    if-ne v0, v1, :cond_6

    .line 22
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v0, v2}, Leh/l0$b$a;->p(Leh/l0$b$a;Z)Z

    .line 23
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iget-object v0, v0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->k(Leh/l0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    .line 24
    invoke-virtual {v4}, Leh/p2$c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-virtual {v4}, Leh/p2$c;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "EDS cluster {0}, edsServiceName: {1}"

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 26
    :cond_6
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    invoke-static {v0, v2}, Leh/l0$b$a;->p(Leh/l0$b$a;Z)Z

    .line 27
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iget-object v0, v0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->k(Leh/l0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leh/l0$b$a$b;->a:Leh/p2$c;

    invoke-virtual {v3}, Leh/p2$c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Logical DNS cluster {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :goto_3
    iget-object v0, p0, Leh/l0$b$a$b;->b:Leh/l0$b$a;

    iget-object v0, v0, Leh/l0$b$a;->g:Leh/l0$b;

    invoke-static {v0}, Leh/l0$b;->d(Leh/l0$b;)V

    return-void
.end method
