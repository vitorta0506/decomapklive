.class Lcom/google/common/collect/o$c;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/o;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o$c;->a:Lcom/google/common/collect/o;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o$c;->a:Lcom/google/common/collect/o;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o$c;->a:Lcom/google/common/collect/o;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/o;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$c;->a:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o$c;->a:Lcom/google/common/collect/o;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$c;->a:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->valueSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
