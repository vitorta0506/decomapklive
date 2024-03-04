.class public Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;

.field loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->b:I

    return p1
.end method

.method public static S1(Ljava/util/List;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v1, "mTypeList"

    invoke-virtual {p1, v1, p0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0141

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->a:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v0, "mTypeList"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->c:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItems(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItemsVisibleCount(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setTextSize(F)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setOnItemScrollListener(Lna/a;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setListener(Lna/b;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a022d

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0232

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->d:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->a:Ljava/lang/String;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;->a(Landroid/app/Dialog;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->d:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;->b(Landroid/app/Dialog;)V

    :cond_2
    :goto_0
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

.method public setOnSelectItemListener(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->d:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;

    return-void
.end method
