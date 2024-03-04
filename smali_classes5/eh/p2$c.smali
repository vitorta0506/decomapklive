.class abstract Leh/p2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/p2$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/p2$c$a;,
        Leh/p2$c$c;,
        Leh/p2$c$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static f(Ljava/lang/String;Ljava/util/List;)Leh/p2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Leh/p2$c$a;"
        }
    .end annotation

    const-string v0, "prioritizedClusterNames"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Leh/h0$b;

    invoke-direct {v0}, Leh/h0$b;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Leh/h0$b;->p(Ljava/lang/String;)Leh/p2$c$a;

    move-result-object p0

    sget-object v0, Leh/p2$c$b;->c:Leh/p2$c$b;

    .line 4
    invoke-virtual {p0, v0}, Leh/p2$c$a;->c(Leh/p2$c$b;)Leh/p2$c$a;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Leh/p2$c$a;->k(J)Leh/p2$c$a;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v0, v1}, Leh/p2$c$a;->j(J)Leh/p2$c$a;

    move-result-object p0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Leh/p2$c$a;->b(I)Leh/p2$c$a;

    move-result-object p0

    .line 8
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Leh/p2$c$a;->l(Ljava/util/List;)Leh/p2$c$a;

    move-result-object p0

    return-object p0
.end method

.method static g(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/p2$c$a;
    .locals 2

    .line 1
    new-instance v0, Leh/h0$b;

    invoke-direct {v0}, Leh/h0$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Leh/h0$b;->p(Ljava/lang/String;)Leh/p2$c$a;

    move-result-object p0

    sget-object v0, Leh/p2$c$b;->a:Leh/p2$c$b;

    .line 3
    invoke-virtual {p0, v0}, Leh/p2$c$a;->c(Leh/p2$c$b;)Leh/p2$c$a;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Leh/p2$c$a;->k(J)Leh/p2$c$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0, v1}, Leh/p2$c$a;->j(J)Leh/p2$c$a;

    move-result-object p0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Leh/p2$c$a;->b(I)Leh/p2$c$a;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Leh/p2$c$a;->e(Ljava/lang/String;)Leh/p2$c$a;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Leh/p2$c$a;->h(Leh/j0$d;)Leh/p2$c$a;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p3}, Leh/p2$c$a;->i(Ljava/lang/Long;)Leh/p2$c$a;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p4}, Leh/p2$c$a;->o(Leh/i1;)Leh/p2$c$a;

    move-result-object p0

    return-object p0
.end method

.method static h(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/p2$c$a;
    .locals 2

    .line 1
    new-instance v0, Leh/h0$b;

    invoke-direct {v0}, Leh/h0$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Leh/h0$b;->p(Ljava/lang/String;)Leh/p2$c$a;

    move-result-object p0

    sget-object v0, Leh/p2$c$b;->b:Leh/p2$c$b;

    .line 3
    invoke-virtual {p0, v0}, Leh/p2$c$a;->c(Leh/p2$c$b;)Leh/p2$c$a;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Leh/p2$c$a;->k(J)Leh/p2$c$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0, v1}, Leh/p2$c$a;->j(J)Leh/p2$c$a;

    move-result-object p0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Leh/p2$c$a;->b(I)Leh/p2$c$a;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Leh/p2$c$a;->d(Ljava/lang/String;)Leh/p2$c$a;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Leh/p2$c$a;->h(Leh/j0$d;)Leh/p2$c$a;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p3}, Leh/p2$c$a;->i(Ljava/lang/Long;)Leh/p2$c$a;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p4}, Leh/p2$c$a;->o(Leh/i1;)Leh/p2$c$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()Leh/p2$c$b;
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Ljava/lang/String;
.end method

.method abstract i()Leh/p2$c$c;
.end method

.method abstract j()Leh/j0$d;
.end method

.method abstract k()Ljava/lang/Long;
.end method

.method abstract l()J
.end method

.method abstract m()J
.end method

.method abstract n()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract o()Leh/i1;
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Leh/p2$c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clusterName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Leh/p2$c;->c()Leh/p2$c$b;

    move-result-object v1

    const-string v2, "clusterType"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Leh/p2$c;->i()Leh/p2$c$c;

    move-result-object v1

    const-string v2, "lbPolicy"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Leh/p2$c;->m()J

    move-result-wide v1

    const-string v3, "minRingSize"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Leh/p2$c;->l()J

    move-result-wide v1

    const-string v3, "maxRingSize"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Leh/p2$c;->a()I

    move-result v1

    const-string v2, "choiceCount"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Leh/p2$c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edsServiceName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Leh/p2$c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dnsHostName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Leh/p2$c;->j()Leh/j0$d;

    move-result-object v1

    const-string v2, "lrsServerInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Leh/p2$c;->k()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "maxConcurrentRequests"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Leh/p2$c;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v2, "prioritizedClusterNames"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
