.class public Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    const v0, 0x7f0a0c67

    const-string v1, "field \'tvDate\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ca2

    const-string v2, "field \'tvIncome\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvIncome:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d00

    const-string v2, "field \'tvSpending\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvSpending:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cc3

    const-string v2, "field \'tvMore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvMore:Landroid/widget/TextView;

    const v0, 0x7f0a0bc9

    const-string v1, "field \'topLL\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->topLL:Landroid/view/View;

    const v0, 0x7f0a06e0

    const-string v1, "method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->e:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d08

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->f:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvIncome:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvSpending:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvMore:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->topLL:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->d:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity_ViewBinding;->f:Landroid/view/View;

    .line 14
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
