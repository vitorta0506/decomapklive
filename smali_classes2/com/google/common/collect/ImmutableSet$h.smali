.class abstract Lcom/google/common/collect/ImmutableSet$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/common/collect/ImmutableSet$h;->b:I

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSet$h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$h<",
            "TE;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    .line 6
    iget p1, p1, Lcom/google/common/collect/ImmutableSet$h;->b:I

    iput p1, p0, Lcom/google/common/collect/ImmutableSet$h;->b:I

    return-void
.end method

.method private f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v0, v0

    .line 3
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->e(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$h<",
            "TE;>;"
        }
    .end annotation
.end method

.method final b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$h;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$h;->f(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSet$h;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableSet$h;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method abstract c()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method final d(Lcom/google/common/collect/ImmutableSet$h;)Lcom/google/common/collect/ImmutableSet$h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$h<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$h<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    .line 1
    :goto_0
    iget v2, p1, Lcom/google/common/collect/ImmutableSet$h;->b:I

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p1, Lcom/google/common/collect/ImmutableSet$h;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet$h;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$h;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method abstract e()Lcom/google/common/collect/ImmutableSet$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$h<",
            "TE;>;"
        }
    .end annotation
.end method

.method g()Lcom/google/common/collect/ImmutableSet$h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$h<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method
