.class Lcom/google/common/collect/n8$c$c;
.super Lcom/google/common/collect/d6$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n8$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$j<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/n8$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n8$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/n8$c$c;->b:Lcom/google/common/collect/n8$c;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/d6$j;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/n8$c$c;->b:Lcom/google/common/collect/n8$c;

    iget-object v1, v0, Lcom/google/common/collect/n8$c;->e:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/n8;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/n8$c$c;->b:Lcom/google/common/collect/n8$c;

    iget-object v1, v0, Lcom/google/common/collect/n8$c;->e:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/n8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n8$c$c;->b:Lcom/google/common/collect/n8$c;

    invoke-static {p1}, Lcom/google/common/base/r;->g(Ljava/util/Collection;)Lcom/google/common/base/q;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/r;->i(Lcom/google/common/base/q;)Lcom/google/common/base/q;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/d6;->l(Lcom/google/common/base/q;)Lcom/google/common/base/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n8$c;->d(Lcom/google/common/base/q;)Z

    move-result p1

    return p1
.end method
