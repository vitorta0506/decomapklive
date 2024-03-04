.class public Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->S1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->T1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->U1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic S1(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;->b(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;)V

    :cond_0
    return-void
.end method

.method private synthetic T1(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;->a(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;)V

    :cond_0
    return-void
.end method

.method private synthetic U1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static V1(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "titles"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0117

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0a03dc

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    new-instance v1, Ld8/s;

    invoke-direct {v1, p0}, Ld8/s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0a2f

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    new-instance v2, Ld8/t;

    invoke-direct {v2, p0}, Ld8/t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "titles"

    .line 7
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_0

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 12
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 13
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a01af

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    new-instance v0, Ld8/u;

    invoke-direct {v0, p0}, Ld8/u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;)V

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

.method public setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;

    return-void
.end method
