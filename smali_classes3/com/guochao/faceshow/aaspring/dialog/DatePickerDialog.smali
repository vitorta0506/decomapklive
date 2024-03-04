.class public Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field closeIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field d:Ljava/util/Calendar;

.field e:Lbutterknife/Unbinder;

.field private f:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;

.field mCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->f:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;

    return-object p0
.end method

.method public static Q1(Ljava/util/Calendar;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "date"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static R1(Landroidx/fragment/app/FragmentActivity;Ljava/util/Calendar;Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->Q1(Ljava/util/Calendar;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->setOnDatePickListener(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "DatePick"

    invoke-virtual {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public I1(Ljava/util/Calendar;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->d:Ljava/util/Calendar;

    .line 4
    iput p4, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->a:I

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->b:I

    .line 6
    iput p2, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->c:I

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d011b

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->setDefaultDate(Ljava/util/Calendar;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f120008

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->closeIV:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->setOnDateChangedListener(Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;-><init>(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f13012b

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

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

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->e:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->e:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onViewClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method public setOnDatePickListener(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->f:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;

    return-void
.end method
