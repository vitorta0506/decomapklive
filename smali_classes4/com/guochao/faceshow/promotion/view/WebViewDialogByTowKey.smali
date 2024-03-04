.class public Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/WindowManager$LayoutParams;

.field private n:Landroid/view/Window;

.field private o:Landroid/app/Activity;

.field private p:Ljava/lang/String;

.field private q:Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->k:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->l:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;)Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->q:Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;

    return-object p0
.end method


# virtual methods
.method protected getDialogStyle()I
    .locals 1

    const v0, 0x7f1304b9

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0146

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0e3e

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0e3d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0e41

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->e:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0e3b

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->c:Landroid/widget/TextView;

    const v1, 0x7f0a0e3c

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0e40

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->f:Landroid/view/View;

    const v1, 0x7f0a0e38

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->g:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->k:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$a;-><init>(Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$b;-><init>(Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getInstance(ILandroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->o:Landroid/app/Activity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1304b9

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->n:Landroid/view/Window;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->j:I

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 4
    iget v3, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->l:I

    int-to-float v4, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    int-to-float v4, v3

    const/4 v6, 0x1

    aput v4, v2, v6

    int-to-float v4, v3

    const/4 v7, 0x2

    aput v4, v2, v7

    int-to-float v4, v3

    const/4 v8, 0x3

    aput v4, v2, v8

    const/4 v4, 0x4

    const/4 v9, 0x0

    aput v9, v2, v4

    const/4 v10, 0x5

    aput v9, v2, v10

    const/4 v11, 0x6

    aput v9, v2, v11

    const/4 v12, 0x7

    aput v9, v2, v12

    new-array v1, v1, [F

    aput v9, v1, v5

    aput v9, v1, v6

    aput v9, v1, v7

    aput v9, v1, v8

    int-to-float v6, v3

    aput v6, v1, v4

    int-to-float v4, v3

    aput v4, v1, v10

    int-to-float v4, v3

    aput v4, v1, v11

    int-to-float v3, v3

    aput v3, v1, v12

    .line 5
    invoke-static {v0, v2}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(I[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->h:Landroid/graphics/drawable/Drawable;

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->j:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(I[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->i:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->n:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->n:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->m:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 12
    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->n:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 14
    :cond_0
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public setOnDialogClickListener(Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->q:Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;

    return-void
.end method
