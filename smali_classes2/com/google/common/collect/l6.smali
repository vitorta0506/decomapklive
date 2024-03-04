.class public final Lcom/google/common/collect/l6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l6$a;,
        Lcom/google/common/collect/l6$d;,
        Lcom/google/common/collect/l6$e;,
        Lcom/google/common/collect/l6$c;,
        Lcom/google/common/collect/l6$b;
    }
.end annotation


# direct methods
.method static a(Lcom/google/common/collect/i6;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i6<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/i6;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/i6;

    .line 3
    invoke-interface {p0}, Lcom/google/common/collect/i6;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/i6;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Map;Lcom/google/common/base/w;)Lcom/google/common/collect/x5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/w<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/google/common/collect/x5<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/l6$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/l6$b;-><init>(Ljava/util/Map;Lcom/google/common/base/w;)V

    return-object v0
.end method

.method public static c(Ljava/util/Map;Lcom/google/common/base/w;)Lcom/google/common/collect/u7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/w<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lcom/google/common/collect/u7<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/l6$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/l6$c;-><init>(Ljava/util/Map;Lcom/google/common/base/w;)V

    return-object v0
.end method
