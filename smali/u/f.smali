.class Lu/f;
.super Lu/b;
.source "SourceFile"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lu/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lu/b;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lu/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "position out of bounds reached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lu/b;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu/f;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
