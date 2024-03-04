.class abstract Leh/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/l2$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Leh/l2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Leh/l2$a;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)",
            "Leh/l2;"
        }
    .end annotation

    .line 1
    new-instance v0, Leh/z;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-static {p3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Leh/z;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract c()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;"
        }
    .end annotation
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a;",
            ">;"
        }
    .end annotation
.end method
