.class Lcom/google/common/collect/d6$i$a;
.super Lcom/google/common/collect/d6$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d6$i;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/d6$i;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d6$i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d6$i$a;->a:Lcom/google/common/collect/d6$i;

    invoke-direct {p0}, Lcom/google/common/collect/d6$h;-><init>()V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d6$i$a;->a:Lcom/google/common/collect/d6$i;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d6$i;->forEachEntry(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d6$i$a;->a:Lcom/google/common/collect/d6$i;

    invoke-virtual {v0}, Lcom/google/common/collect/d6$i;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d6$i$a;->a:Lcom/google/common/collect/d6$i;

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d6$i$a;->a:Lcom/google/common/collect/d6$i;

    invoke-virtual {v0}, Lcom/google/common/collect/d6$i;->entrySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
