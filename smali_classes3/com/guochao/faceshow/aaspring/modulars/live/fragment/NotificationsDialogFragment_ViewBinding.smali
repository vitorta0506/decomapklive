.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;

    const v0, 0x7f0a0194

    const-string v1, "field \'btnOpenSetting\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'btnOpenSetting\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;->btnOpenSetting:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0597

    const-string v1, "method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;->btnOpenSetting:Landroid/widget/FrameLayout;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
