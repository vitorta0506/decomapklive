.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->S1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->V1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->T1(Landroid/view/View;)V

    return-void
.end method

.method private S1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method private T1(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoMoreShowGamePay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;->onConfirm()V

    :cond_1
    return-void
.end method

.method public static U1(ILandroid/content/Context;IF)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "{diamond}"

    aput-object v4, v2, v3

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v2, v5

    const p2, 0x7f1205b9

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-nez p0, :cond_0

    const p0, 0x7f0f01f7

    goto :goto_0

    :cond_0
    const p0, 0x7f0f01f8

    .line 3
    :goto_0
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 6
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v5, v1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {v5, p1, p3}, Landroid/widget/TextView;->measure(II)V

    .line 9
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const p3, 0x3f8ccccd    # 1.1f

    mul-float p1, p1, p3

    const p3, 0x3d4ccccd    # 0.05f

    mul-float p3, p3, p1

    float-to-int p3, p3

    neg-int p3, p3

    int-to-float p2, p2

    mul-float p2, p2, p1

    int-to-float v1, v2

    div-float/2addr p2, v1

    float-to-int p2, p2

    float-to-int p1, p1

    .line 10
    invoke-virtual {p0, v3, p3, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    new-instance p1, Lcom/guochao/faceshow/views/r;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p2, p0, 0x9

    const/16 p3, 0x11

    .line 13
    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private V1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static W1(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;I)Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoMoreShowGamePay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;->onConfirm()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;-><init>()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "JoinGameDialog_OnConfirmClickListener"

    invoke-virtual {v1, v2, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "diamondCount"

    .line 6
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "flag"

    .line 7
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d012b

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0bb2

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a023f

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/o;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01af

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/m;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a081a

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->b:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/n;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const-string p1, ""

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v1, "JoinGameDialog_OnConfirmClickListener"

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    const-string v2, "diamondCount"

    .line 11
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "flag"

    .line 12
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez v1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p1, v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->U1(ILandroid/content/Context;IF)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
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

    const p1, 0x7f13012a

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method
