.class public Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c70

    const-string v2, "field \'tvDiamondIncome\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondIncome:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c71

    const-string v2, "field \'tvDiamondSpending\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondSpending:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c82

    const-string v2, "field \'tvFIncome\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFIncome:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c84

    const-string v2, "field \'tvFSpending\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFSpending:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c93

    const-string v2, "field \'tvGIncome\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGIncome:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c94

    const-string v2, "field \'tvGSpending\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGSpending:Landroid/widget/TextView;

    const v0, 0x7f0a0c6f

    const-string v1, "field \'tvDiamondDate\' and method \'onClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvDiamondDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondDate:Landroid/widget/TextView;

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c81

    const-string v1, "field \'tvFDate\' and method \'onClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFDate:Landroid/widget/TextView;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c92

    const-string v1, "field \'tvGDate\' and method \'onClick\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 18
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvGDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGDate:Landroid/widget/TextView;

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->e:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06c9

    const-string v1, "field \'llDiamod\' and method \'onClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v3, "field \'llDiamod\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->llDiamod:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->f:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06cb

    const-string v1, "field \'llF\' and method \'onClick\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 26
    const-class v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v3, "field \'llF\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->llF:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->g:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06d2

    const-string v1, "method \'onClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->h:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondIncome:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondSpending:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFIncome:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFSpending:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGIncome:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGSpending:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondDate:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFDate:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGDate:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->llDiamod:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->llF:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->f:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->g:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
