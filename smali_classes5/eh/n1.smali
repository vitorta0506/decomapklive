.class abstract Leh/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)Leh/n1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Leh/l2;",
            ">;",
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;)",
            "Leh/n1;"
        }
    .end annotation

    .line 1
    new-instance v6, Leh/s;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v4, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    move-object v4, p3

    :goto_0
    if-nez p4, :cond_1

    move-object v5, v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    move-object v5, p3

    :goto_1
    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Leh/s;-><init>(JLjava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v6
.end method

.method static b(JLjava/lang/String;Ljava/util/List;)Leh/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;)",
            "Leh/n1;"
        }
    .end annotation

    const-string v0, "rdsName"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0, p3}, Leh/n1;->a(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)Leh/n1;

    move-result-object p0

    return-object p0
.end method

.method static c(JLjava/util/List;Ljava/util/List;)Leh/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Leh/l2;",
            ">;",
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;)",
            "Leh/n1;"
        }
    .end annotation

    const-string v0, "virtualHosts"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2, p3}, Leh/n1;->a(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)Leh/n1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract d()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l1$c;",
            ">;"
        }
    .end annotation
.end method

.method abstract e()J
.end method

.method abstract f()Ljava/lang/String;
.end method

.method abstract g()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2;",
            ">;"
        }
    .end annotation
.end method
