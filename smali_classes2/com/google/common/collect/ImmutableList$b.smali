.class public final Lcom/google/common/collect/ImmutableList$b;
.super Lcom/google/common/collect/ImmutableCollection$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$a;-><init>()V

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    return-void
.end method

.method private g([Ljava/lang/Object;I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$b;->l(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    return-void
.end method

.method private l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 2
    array-length v1, v0

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$a;->e(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    .line 3
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableList$b;->c:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/google/common/collect/ImmutableList$b;->c:Z

    if-eqz p1, :cond_1

    .line 5
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    .line 6
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableList$b;->c:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableList$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$b;->l(I)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableList$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 4
    iget v1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableList$b;->l(I)V

    .line 5
    instance-of v1, v0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    .line 7
    iget-object p1, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    return-object p0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$a;

    return-object p0
.end method

.method public i(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$a;

    return-object p0
.end method

.method public j()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableList$b;->c:Z

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$b;->b:I

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method k(Lcom/google/common/collect/ImmutableList$b;)Lcom/google/common/collect/ImmutableList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList$b<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableList$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/common/collect/ImmutableList$b;->a:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/common/collect/ImmutableList$b;->b:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ImmutableList$b;->g([Ljava/lang/Object;I)V

    return-object p0
.end method
