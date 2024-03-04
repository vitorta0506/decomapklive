.class public Lcom/guochao/faceshow/aaspring/danmu/DanmuView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/danmu/c;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/danmu/c$a;

.field private e:Lcom/guochao/faceshow/aaspring/danmu/c$b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            ">;"
        }
    .end annotation
.end field

.field g:Lv7/b;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/text/TextPaint;

.field k:Lcom/guochao/faceshow/aaspring/danmu/a;

.field l:Lv7/a;

.field m:Lcom/guochao/faceshow/aaspring/danmu/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->a:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->b:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    .line 8
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->j:Landroid/text/TextPaint;

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->a:I

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->b:Z

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->c:Ljava/util/List;

    .line 14
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    .line 17
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->j:Landroid/text/TextPaint;

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 20
    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->a:I

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->b:Z

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->c:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    .line 26
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->j:Landroid/text/TextPaint;

    .line 27
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/danmu/b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/danmu/b;

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->e:Lcom/guochao/faceshow/aaspring/danmu/c$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->e:Lcom/guochao/faceshow/aaspring/danmu/c$b;

    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/danmu/c$b;->onDanmuShowEnd(Lcom/guochao/faceshow/aaspring/danmu/c;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/danmu/b;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/danmu/b;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->getDrawer()Lv7/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lv7/c;->b(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    .line 6
    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget v3, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->a:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 8
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/danmu/b;

    .line 11
    iget v5, v3, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    iget-object v5, v3, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    .line 13
    iget v6, v3, Lcom/guochao/faceshow/aaspring/danmu/b;->f:F

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 14
    :goto_2
    iget v3, v3, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 15
    :cond_5
    iget v3, v3, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 16
    :goto_4
    iget v3, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->a:I

    if-ge v2, v3, :cond_8

    .line 17
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/2addr v2, v4

    .line 18
    iput v2, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-nez v1, :cond_9

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->j:Landroid/text/TextPaint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->j:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->j:Landroid/text/TextPaint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->b:Z

    return v0
.end method

.method public getConfig()Lv7/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->l:Lv7/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lv7/a;

    invoke-direct {v0}, Lv7/a;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->l:Lv7/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->l:Lv7/a;

    return-object v0
.end method

.method public getDanmuDrawer()Lcom/guochao/faceshow/aaspring/danmu/a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->k:Lcom/guochao/faceshow/aaspring/danmu/a;

    return-object v0
.end method

.method public getDanmuProvider()Lv7/b;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->g:Lv7/b;

    return-object v0
.end method

.method public getDrawer()Lv7/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->k:Lcom/guochao/faceshow/aaspring/danmu/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/danmu/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/danmu/a;-><init>(Lcom/guochao/faceshow/aaspring/danmu/c;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->k:Lcom/guochao/faceshow/aaspring/danmu/a;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/danmu/a;->c(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->k:Lcom/guochao/faceshow/aaspring/danmu/a;

    return-object v0
.end method

.method public getMaxLine()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->a:I

    return v0
.end method

.method public getOnDanmuClickListener()Lcom/guochao/faceshow/aaspring/danmu/c$a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d:Lcom/guochao/faceshow/aaspring/danmu/c$a;

    return-object v0
.end method

.method public getOnScreenDanmus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->getDrawer()Lv7/c;

    move-result-object v0

    invoke-interface {v0}, Lv7/c;->pause()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->getDrawer()Lv7/c;

    move-result-object v0

    invoke-interface {v0}, Lv7/c;->resume()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->getDrawer()Lv7/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->c:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lv7/c;->a(Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->b:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d:Lcom/guochao/faceshow/aaspring/danmu/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->m:Lcom/guochao/faceshow/aaspring/danmu/b;

    if-eqz v0, :cond_9

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d:Lcom/guochao/faceshow/aaspring/danmu/c$a;

    invoke-interface {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/danmu/c$a;->b(Lcom/guochao/faceshow/aaspring/danmu/b;Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->m:Lcom/guochao/faceshow/aaspring/danmu/b;

    return p1

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 10
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/danmu/b;

    .line 11
    iget v6, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->f:F

    .line 12
    iget v7, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->m:I

    if-ne v7, v3, :cond_3

    .line 13
    iget v7, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->e:I

    int-to-float v7, v7

    sub-float v6, v7, v6

    .line 14
    :cond_3
    iget-object v7, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 15
    iget-object v7, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 16
    iget v8, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    sub-int/2addr v8, v3

    iget-object v9, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->getConfig()Lv7/a;

    move-result-object v10

    invoke-virtual {v10}, Lv7/a;->a()I

    move-result v10

    add-int/2addr v9, v10

    mul-int v8, v8, v9

    int-to-float v8, v8

    .line 17
    iget v9, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    iget-object v10, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->getConfig()Lv7/a;

    move-result-object v11

    invoke-virtual {v11}, Lv7/a;->a()I

    move-result v11

    add-int/2addr v10, v11

    mul-int v9, v9, v10

    int-to-float v9, v9

    cmpl-float v6, v0, v6

    if-lez v6, :cond_8

    cmpl-float v6, v7, v0

    if-lez v6, :cond_8

    cmpl-float v6, v1, v8

    if-lez v6, :cond_8

    cmpl-float v6, v9, v1

    if-lez v6, :cond_8

    .line 18
    iput-object v5, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->m:Lcom/guochao/faceshow/aaspring/danmu/b;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d:Lcom/guochao/faceshow/aaspring/danmu/c$a;

    invoke-interface {v0, v5, p1}, Lcom/guochao/faceshow/aaspring/danmu/c$a;->a(Lcom/guochao/faceshow/aaspring/danmu/b;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touch down "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/guochao/faceshow/aaspring/danmu/b;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DanmuView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 21
    :cond_9
    :goto_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDanmuConfig(Lv7/a;)V
    .locals 0

    return-void
.end method

.method public setDanmuDrawer(Lcom/guochao/faceshow/aaspring/danmu/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->k:Lcom/guochao/faceshow/aaspring/danmu/a;

    return-void
.end method

.method public setDanmuProvider(Lv7/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->g:Lv7/b;

    return-void
.end method

.method public setMaxLine(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->a:I

    return-void
.end method

.method public setOnDanmuClickListener(Lcom/guochao/faceshow/aaspring/danmu/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d:Lcom/guochao/faceshow/aaspring/danmu/c$a;

    return-void
.end method

.method public setOnDanmuStateListener(Lcom/guochao/faceshow/aaspring/danmu/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->e:Lcom/guochao/faceshow/aaspring/danmu/c$b;

    return-void
.end method
