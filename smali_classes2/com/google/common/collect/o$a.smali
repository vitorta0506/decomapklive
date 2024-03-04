.class Lcom/google/common/collect/o$a;
.super Lcom/google/common/collect/l6$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l6$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/o;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o$a;->a:Lcom/google/common/collect/o;

    invoke-direct {p0}, Lcom/google/common/collect/l6$d;-><init>()V

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/collect/i6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i6<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$a;->a:Lcom/google/common/collect/o;

    return-object v0
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

    iget-object v0, p0, Lcom/google/common/collect/o$a;->a:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

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

    iget-object v0, p0, Lcom/google/common/collect/o$a;->a:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->entrySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
