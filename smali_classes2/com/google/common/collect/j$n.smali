.class Lcom/google/common/collect/j$n;
.super Lcom/google/common/collect/j$k;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "TK;TV;>.k;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j$n;->f:Lcom/google/common/collect/j;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/j$k;-><init>(Lcom/google/common/collect/j;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/j$k;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/j$k;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/j$k;->b:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/google/common/collect/w7;->o(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/j$k;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/j$n;->f:Lcom/google/common/collect/j;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/google/common/collect/j;->access$212(Lcom/google/common/collect/j;I)I

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/j$k;->n()V

    :cond_1
    return p1
.end method
