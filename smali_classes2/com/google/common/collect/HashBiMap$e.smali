.class abstract Lcom/google/common/collect/HashBiMap$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field final synthetic e:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$e;->e:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)Lcom/google/common/collect/HashBiMap$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->a:Lcom/google/common/collect/HashBiMap$b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->b:Lcom/google/common/collect/HashBiMap$b;

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$e;->c:I

    .line 5
    invoke-virtual {p1}, Lcom/google/common/collect/HashBiMap;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/HashBiMap$e;->d:I

    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/common/collect/HashBiMap$b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->e:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$e;->c:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->a:Lcom/google/common/collect/HashBiMap$b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/HashBiMap$e;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->a:Lcom/google/common/collect/HashBiMap$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/HashBiMap$b;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$e;->a:Lcom/google/common/collect/HashBiMap$b;

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->b:Lcom/google/common/collect/HashBiMap$b;

    .line 5
    iget v1, p0, Lcom/google/common/collect/HashBiMap$e;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap$e;->d:I

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap$e;->a(Lcom/google/common/collect/HashBiMap$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->e:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$e;->c:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->b:Lcom/google/common/collect/HashBiMap$b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$e;->e:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->e:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$e;->c:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->b:Lcom/google/common/collect/HashBiMap$b;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
