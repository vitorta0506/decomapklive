.class Lt/f;
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
    .locals 3
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
    invoke-static {p1}, Lt/m;->b(Lu/a;)I

    move-result v0

    invoke-virtual {p1}, Lu/a;->F()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    div-int/2addr v0, p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/o;

    .line 3
    invoke-virtual {v1}, Lu/o;->a()Landroid/graphics/Rect;

    move-result-object v1

    add-int/2addr p2, v0

    .line 4
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 5
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    return-void
.end method
