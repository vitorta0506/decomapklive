.class final Lcom/google/common/collect/m7;
.super Lcom/google/common/collect/ImmutableSet$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$b<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/Object;

.field static final f:Lcom/google/common/collect/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field final transient c:[Ljava/lang/Object;

.field private final transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sput-object v1, Lcom/google/common/collect/m7;->e:[Ljava/lang/Object;

    .line 2
    new-instance v2, Lcom/google/common/collect/m7;

    invoke-direct {v2, v1, v0, v1, v0}, Lcom/google/common/collect/m7;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    sput-object v2, Lcom/google/common/collect/m7;->f:Lcom/google/common/collect/m7;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/m7;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/m7;->c:[Ljava/lang/Object;

    .line 5
    iput p4, p0, Lcom/google/common/collect/m7;->d:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m7;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v2

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/common/collect/m7;->d:I

    and-int/2addr v2, v3

    .line 5
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr p2, p1

    return p2
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m7;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/g7;

    iget-object v1, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g7;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/m7;->b:I

    return v0
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/e9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e9<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/p5;->n([Ljava/lang/Object;)Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/m7;->iterator()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m7;->a:[Ljava/lang/Object;

    const/16 v1, 0x511

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
