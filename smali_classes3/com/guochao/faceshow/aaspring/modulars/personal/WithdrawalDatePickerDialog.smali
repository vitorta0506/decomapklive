.class public Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/Calendar;

.field d:Z

.field private e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;

.field mCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDatePickerView:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;

    return-object p0
.end method

.method public static Q1(Ljava/util/Calendar;Z)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "date"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "showAll"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private R1()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120468

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120570

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12058d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120473

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120472

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1207dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120696

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/16 v2, 0xb

    if-ne v0, v2, :cond_a

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120692

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const/16 v2, 0xc

    if-ne v0, v2, :cond_b

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    :goto_0
    return-object v0
.end method


# virtual methods
.method public A0(Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->mConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->c:Ljava/util/Calendar;

    .line 4
    :cond_1
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->b:Ljava/lang/String;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0148

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "showAll"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->d:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->setShowAll(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->setDefaultDate(Ljava/util/Calendar;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->c:Ljava/util/Calendar;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120b06

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->c:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->b:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->c:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->b:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->R1()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->a:Ljava/lang/String;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->setOnDateChangedListener(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->mCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->mConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const p1, 0x7f13012b

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public setOnDatePickListener(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;

    return-void
.end method
