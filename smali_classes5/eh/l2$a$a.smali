.class abstract Leh/l2$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/l2$a$a$c;,
        Leh/l2$a$a$b;,
        Leh/l2$a$a$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Leh/u0$a;Leh/l2$a$a$c;)Leh/l2$a$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/l2$a$a$b;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Leh/l2$a$a$a;",
            ">;",
            "Leh/u0$a;",
            "Leh/l2$a$a$c;",
            ")",
            "Leh/l2$a$a;"
        }
    .end annotation

    .line 1
    new-instance v7, Leh/b0;

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_0
    move-object v4, p0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Leh/b0;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/Long;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Leh/u0$a;Leh/l2$a$a$c;)V

    return-object v7
.end method

.method static c(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Leh/l2$a$a$c;)Leh/l2$a$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Leh/l2$a$a$b;",
            ">;",
            "Ljava/lang/Long;",
            "Leh/l2$a$a$c;",
            ")",
            "Leh/l2$a$a;"
        }
    .end annotation

    const-string v0, "cluster"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v6, p3

    .line 2
    invoke-static/range {v1 .. v6}, Leh/l2$a$a;->b(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Leh/u0$a;Leh/l2$a$a$c;)Leh/l2$a$a;

    move-result-object p0

    return-object p0
.end method

.method static d(Leh/u0$a;Ljava/util/List;Ljava/lang/Long;Leh/l2$a$a$c;)Leh/l2$a$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/u0$a;",
            "Ljava/util/List<",
            "Leh/l2$a$a$b;",
            ">;",
            "Ljava/lang/Long;",
            "Leh/l2$a$a$c;",
            ")",
            "Leh/l2$a$a;"
        }
    .end annotation

    const-string v0, "namedConfig"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    move-object v6, p3

    .line 2
    invoke-static/range {v1 .. v6}, Leh/l2$a$a;->b(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Leh/u0$a;Leh/l2$a$a$c;)Leh/l2$a$a;

    move-result-object p0

    return-object p0
.end method

.method static e(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Leh/l2$a$a$c;)Leh/l2$a$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/l2$a$a$a;",
            ">;",
            "Ljava/util/List<",
            "Leh/l2$a$a$b;",
            ">;",
            "Ljava/lang/Long;",
            "Leh/l2$a$a$c;",
            ")",
            "Leh/l2$a$a;"
        }
    .end annotation

    const-string v0, "weightedClusters"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty cluster list"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    move-object v7, p3

    .line 3
    invoke-static/range {v2 .. v7}, Leh/l2$a$a;->b(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Leh/u0$a;Leh/l2$a$a$c;)Leh/l2$a$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract f()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$b;",
            ">;"
        }
    .end annotation
.end method

.method abstract g()Leh/u0$a;
.end method

.method abstract h()Leh/l2$a$a$c;
.end method

.method abstract i()Ljava/lang/Long;
.end method

.method abstract j()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$a;",
            ">;"
        }
    .end annotation
.end method
