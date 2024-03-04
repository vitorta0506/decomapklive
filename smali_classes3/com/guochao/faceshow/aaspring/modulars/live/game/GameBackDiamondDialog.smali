.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;->R1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;->S1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic R1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private synthetic S1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method public static T1(Landroidx/fragment/app/FragmentManager;II)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "diamondCount"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "flag"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0123

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0a03cc

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0138

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/k;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    const-string v3, "diamondCount"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "flag"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v2, :cond_3

    .line 7
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v5, 0x7f1205b5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "{diamond}"

    aput-object v7, v6, v4

    const/4 v8, 0x1

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v1, :cond_1

    const v1, 0x7f0f01f7

    goto :goto_0

    :cond_1
    const v1, 0x7f0f01f8

    :goto_0
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 12
    invoke-virtual {v0, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    const v8, 0x3f8ccccd    # 1.1f

    mul-float v6, v6, v8

    const v8, 0x3d4ccccd    # 0.05f

    mul-float v8, v8, v6

    float-to-int v8, v8

    neg-int v8, v8

    int-to-float v2, v2

    mul-float v2, v2, v6

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    float-to-int v5, v6

    .line 14
    invoke-virtual {v1, v4, v8, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    new-instance v2, Lcom/guochao/faceshow/views/r;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v1, 0x9

    const/16 v5, 0x11

    .line 17
    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a023f

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/l;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f130197

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method
