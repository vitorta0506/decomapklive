.class final Lug/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lug/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lug/r<",
            "+",
            "Lug/q<",
            "*>;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(Lug/r;Lug/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "*>;>;",
            "Lug/r<",
            "+",
            "Lug/q<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lug/r;

    .line 2
    iput-object v1, p0, Lug/g;->a:[Lug/r;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 3
    iput v0, p0, Lug/g;->b:I

    return-void
.end method


# virtual methods
.method public a(Lug/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/g;->a:[Lug/r;

    .line 2
    iget v1, p0, Lug/g;->b:I

    .line 3
    array-length v2, v0

    if-ne v1, v2, :cond_0

    shl-int/lit8 v2, v1, 0x1

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lug/r;

    iput-object v0, p0, Lug/g;->a:[Lug/r;

    .line 5
    :cond_0
    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lug/g;->b:I

    return-void
.end method

.method public b()[Lug/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lug/r<",
            "+",
            "Lug/q<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lug/g;->a:[Lug/r;

    return-object v0
.end method

.method public c(Lug/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/g;->a:[Lug/r;

    .line 2
    iget v1, p0, Lug/g;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_1

    sub-int p1, v1, v2

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 4
    invoke-static {v0, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    const/4 p1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    iput v1, p0, Lug/g;->b:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lug/g;->b:I

    return v0
.end method
