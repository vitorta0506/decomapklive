.class public Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    const v0, 0x7f0a0b48

    const-string v1, "field \'mView1\' and method \'click\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView1:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b49

    const-string v1, "field \'mView2\' and method \'click\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView2:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b51

    const-string v2, "field \'vipTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->vipTV:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b4b

    const-string v2, "field \'svipTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->svipTV:Landroid/widget/TextView;

    const v0, 0x7f0a095f

    const-string v1, "field \'mRedPoint\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mRedPoint:Landroid/view/View;

    const v0, 0x7f0a0540

    const-string v1, "field \'mViewIndicator\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView1:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView2:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->vipTV:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->svipTV:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mRedPoint:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
