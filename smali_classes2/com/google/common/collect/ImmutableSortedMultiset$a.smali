.class public Lcom/google/common/collect/ImmutableSortedMultiset$a;
.super Lcom/google/common/collect/ImmutableMultiset$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset$b<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;-><init>(Lcom/google/common/collect/q6;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->k(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->k(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->l([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->o()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;

    return-object p0
.end method

.method public varargs l([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->g([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;

    return-object p0
.end method

.method public m(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->h(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$b;

    return-object p0
.end method

.method public n(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultiset$b;->i(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    return-object p0
.end method

.method public o()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/q6;

    check-cast v0, Lcom/google/common/collect/h8;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfSorted(Lcom/google/common/collect/h8;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
