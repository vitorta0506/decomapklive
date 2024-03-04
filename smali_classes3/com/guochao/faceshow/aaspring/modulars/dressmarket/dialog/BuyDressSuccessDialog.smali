.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->a:I

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->T1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->S1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->U1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic S1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private synthetic T1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private synthetic U1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static V1(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "dressBean"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "account"

    .line 5
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d029d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "type"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->a:I

    const-string v2, "dressBean"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    const-string v3, "account"

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const v0, 0x7f0a0138

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lo8/d;

    invoke-direct {v3, p0}, Lo8/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08c1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f0a02ee

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a08bf

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->d:Landroid/widget/TextView;

    const v0, 0x7f0a04ec

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0215

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->f:Landroid/view/View;

    new-array p1, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const-string v0, "\"%s\""

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->a:I

    if-ne v0, v1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->b:Landroid/widget/TextView;

    const v4, 0x7f1202b5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->d:Landroid/widget/TextView;

    const v4, 0x7f1202b6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->b:Landroid/widget/TextView;

    const v4, 0x7f1202e7

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->d:Landroid/widget/TextView;

    const v4, 0x7f1202e8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060070

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 20
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v5, 0x12

    if-ltz v0, :cond_3

    .line 21
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    .line 23
    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 24
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f1304cd

    invoke-direct {v3, v4, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 26
    invoke-virtual {v1, v3, v0, p1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 27
    :cond_3
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p1, v3, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 28
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbnailImage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    const v0, 0x7f0f00ac

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->e:Landroid/widget/TextView;

    new-instance v0, Lo8/c;

    invoke-direct {v0, p0}, Lo8/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->f:Landroid/view/View;

    new-instance v0, Lo8/e;

    invoke-direct {v0, p0}, Lo8/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method
