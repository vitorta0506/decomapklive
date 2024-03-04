.class Lt/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/q;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/a;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/a;",
            "Ljava/util/List<",
            "Lu/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu/a;->F()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lt/m;->a(Lu/a;)I

    move-result v0

    invoke-virtual {p1}, Lu/a;->F()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/2addr v0, v2

    const/4 v1, 0x0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/o;

    .line 4
    invoke-virtual {v2}, Lu/o;->a()Landroid/graphics/Rect;

    move-result-object v2

    .line 5
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lu/a;->q()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 6
    invoke-virtual {p1}, Lu/a;->q()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 7
    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 8
    invoke-virtual {p1}, Lu/a;->q()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    add-int/2addr v1, v0

    .line 9
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 10
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    return-void
.end method
