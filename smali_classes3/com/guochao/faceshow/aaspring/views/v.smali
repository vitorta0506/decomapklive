.class public Lcom/guochao/faceshow/aaspring/views/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/v$d;,
        Lcom/guochao/faceshow/aaspring/views/v$e;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroidx/appcompat/widget/Toolbar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Z

.field private k:I

.field private l:Lcom/guochao/faceshow/aaspring/views/v$e;

.field private m:Lcom/guochao/faceshow/aaspring/views/v$d;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->j:Z

    const v0, 0x7f0a042c

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020016

    .line 4
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a042b

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0bc5

    .line 7
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/v;->e(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->e:Landroid/widget/ImageButton;

    const v0, 0x7f080318

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->e:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/v;)Lcom/guochao/faceshow/aaspring/views/v$e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/v;->l:Lcom/guochao/faceshow/aaspring/views/v$e;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/v;)Lcom/guochao/faceshow/aaspring/views/v$d;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/v;->m:Lcom/guochao/faceshow/aaspring/views/v$d;

    return-object p0
.end method

.method private c(Landroid/view/Menu;II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    .line 3
    invoke-interface {p1, v5, v4, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 5
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    .line 6
    move-object v8, v7

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v7, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v7

    const/high16 v8, 0x428a0000    # 69.0f

    invoke-static {v7, v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {p2, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    if-eqz v7, :cond_3

    .line 11
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v7

    const/high16 v9, 0x3fc00000    # 1.5f

    if-ne v7, v4, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    int-to-float v7, v0

    mul-float v7, v7, v9

    float-to-int v7, v7

    .line 12
    :goto_0
    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v10

    if-ne v10, v4, :cond_2

    int-to-float v10, v0

    mul-float v10, v10, v9

    float-to-int v9, v10

    goto :goto_1

    :cond_2
    move v9, v0

    .line 13
    :goto_1
    invoke-virtual {v8, v7, v5, v9, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    :cond_3
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    invoke-virtual {v7, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/v$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/views/v$b;-><init>(Lcom/guochao/faceshow/aaspring/views/v;)V

    new-array v7, v4, [Landroid/view/View;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    aput-object v8, v7, v5

    invoke-static {p2, v7}, Lcom/guochao/faceshow/aaspring/views/q;->c(Lcom/guochao/faceshow/aaspring/views/q$a;[Landroid/view/View;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    invoke-interface {v6, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_4
    if-eqz p3, :cond_9

    .line 18
    invoke-interface {p1, v5, v3, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 19
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    if-nez p2, :cond_5

    .line 21
    new-instance p2, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    .line 22
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {p3, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    .line 25
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p2, p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 26
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    if-eqz p3, :cond_8

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p3

    if-ne p3, v4, :cond_6

    move p3, v0

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 28
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_7

    const/4 v0, 0x0

    .line 29
    :cond_7
    invoke-virtual {v1, p3, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    :cond_8
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    new-instance p3, Lcom/guochao/faceshow/aaspring/views/v$c;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/views/v$c;-><init>(Lcom/guochao/faceshow/aaspring/views/v;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 34
    :cond_9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v;->k()V

    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 5
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->k:I

    if-ltz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    .line 9
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/v;->k:I

    if-ltz v4, :cond_2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float/2addr v3, v0

    float-to-int v0, v3

    .line 10
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42ec0000    # 118.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    if-nez v3, :cond_5

    const/high16 v3, 0x430a0000    # 138.0f

    goto :goto_0

    :cond_5
    const/high16 v3, 0x43760000    # 246.0f

    :goto_0
    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public e(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const-string v1, "mNavButtonView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->setBottomEnable(Z)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/v;->e(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public h(Landroid/view/Menu;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/v;->c(Landroid/view/Menu;II)V

    return-void
.end method

.method public i(Landroid/view/Menu;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/v;->c(Landroid/view/Menu;II)V

    return-void
.end method

.method public j(Landroid/view/Menu;Ljava/lang/String;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez p3, :cond_2

    const p3, 0x7f06009d

    :cond_2
    invoke-static {v2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/v;->j:Z

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->i:I

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/views/v;->u(I)V

    goto :goto_0

    :cond_3
    if-ltz p4, :cond_4

    .line 12
    invoke-virtual {p0, p4}, Lcom/guochao/faceshow/aaspring/views/v;->u(I)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->u(I)V

    .line 14
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    new-instance p3, Lcom/guochao/faceshow/aaspring/views/v$a;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/views/v$a;-><init>(Lcom/guochao/faceshow/aaspring/views/v;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v;->k()V

    return-void
.end method

.method public l(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public m(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v;->k()V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->k:I

    :goto_0
    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public p(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 5
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public q(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/utils/ColorUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 5
    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ColorUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public s(Ljava/lang/String;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->m:Lcom/guochao/faceshow/aaspring/views/v$d;

    return-void
.end method

.method public setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->l:Lcom/guochao/faceshow/aaspring/views/v$e;

    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->j:Z

    :goto_0
    return-void
.end method

.method public u(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/v;->i:I

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v;->k()V

    return-void
.end method

.method public w(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/v;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
