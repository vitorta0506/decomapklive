.class public Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->e:I

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->R1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->S1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic R1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->f:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->e:I

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;->a(I)V

    :cond_0
    return-void
.end method

.method private synthetic S1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static T1(Landroidx/fragment/app/FragmentManager;I)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0144

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0a08c1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0a44

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f0a01af

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->c:Landroid/widget/TextView;

    const v0, 0x7f0a023f

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->d:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->e:I

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->d:Landroid/widget/TextView;

    new-instance v0, Lg8/d;

    invoke-direct {v0, p0}, Lg8/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->c:Landroid/widget/TextView;

    new-instance v0, Lg8/e;

    invoke-direct {v0, p0}, Lg8/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->e:I

    const/4 v0, 0x1

    const v1, 0x7f1201fb

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f1201fd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f120200

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->d:Landroid/widget/TextView;

    const v0, 0x7f120202

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f1201fe

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f1201ff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f120204

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f120205

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
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

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public setOnConfirmClickListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->f:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;

    return-void
.end method
