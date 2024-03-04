.class final Lcom/google/common/collect/ImmutableMultiset$d;
.super Lcom/google/common/collect/l5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l5<",
        "Lcom/google/common/collect/q6$a<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$d;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/l5;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Lcom/google/common/collect/ImmutableMultiset$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$d;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method c(I)Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$d;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset;->getEntry(I)Lcom/google/common/collect/q6$a;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/q6$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/q6$a;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$d;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$d;->c(I)Lcom/google/common/collect/q6$a;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$d;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$d;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$d;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$e;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$d;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$e;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
