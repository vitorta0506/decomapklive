.class final Lmg/g;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/nio/channels/SelectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field a:[Ljava/nio/channels/SelectionKey;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [Ljava/nio/channels/SelectionKey;

    .line 2
    iput-object v0, p0, Lmg/g;->a:[Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmg/g;->a:[Ljava/nio/channels/SelectionKey;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/nio/channels/SelectionKey;

    .line 2
    iget v2, p0, Lmg/g;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput-object v1, p0, Lmg/g;->a:[Ljava/nio/channels/SelectionKey;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/nio/channels/SelectionKey;

    invoke-virtual {p0, p1}, Lmg/g;->c(Ljava/nio/channels/SelectionKey;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/nio/channels/SelectionKey;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lmg/g;->a:[Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lmg/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmg/g;->b:I

    aput-object p1, v0, v1

    .line 2
    array-length p1, v0

    if-ne v2, p1, :cond_1

    .line 3
    invoke-direct {p0}, Lmg/g;->d()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmg/g;->g(I)V

    return-void
.end method

.method g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmg/g;->a:[Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lmg/g;->b:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmg/g;->b:I

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Lmg/g$a;

    invoke-direct {v0, p0}, Lmg/g$a;-><init>(Lmg/g;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lmg/g;->b:I

    return v0
.end method
