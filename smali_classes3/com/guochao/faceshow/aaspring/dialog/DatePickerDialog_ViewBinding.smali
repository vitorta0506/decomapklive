.class public Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0232

    const-string v2, "field \'mConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mConfirm:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a022d

    const-string v2, "field \'mCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mCancel:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d0b

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mTitle:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a020d

    const-string v2, "field \'closeIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->closeIV:Landroid/widget/ImageView;

    .line 7
    const-class v0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    const v1, 0x7f0a0299

    const-string v2, "field \'mDatePickerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    const v0, 0x7f0a0138

    const-string v1, "method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mConfirm:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mCancel:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mTitle:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->closeIV:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->mDatePickerView:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
