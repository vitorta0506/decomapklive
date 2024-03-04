.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    const v0, 0x7f0a0332

    const-string v1, "field \'emptyView\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->emptyView:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0440

    const-string v2, "field \'fragmentContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->fragmentContainer:Landroid/view/ViewGroup;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03f0

    const-string v2, "field \'firstTab\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->firstTab:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a37

    const-string v2, "field \'secondTab\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->secondTab:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b92

    const-string v2, "field \'thirdTab\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->thirdTab:Landroid/widget/TextView;

    const v0, 0x7f0a0b15

    const-string v1, "field \'tab1\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab1:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b16

    const-string v1, "field \'tab2\' and method \'onViewClicked\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab2:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b17

    const-string v1, "field \'tab3\' and method \'onViewClicked\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab3:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->f:Landroid/view/View;

    .line 22
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b20

    const-string v1, "field \'tabLay\' and method \'onViewClicked\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'tabLay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tabLay:Landroid/view/ViewGroup;

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->g:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b23

    const-string v1, "field \'tabLine\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tabLine:Landroid/view/View;

    const v0, 0x7f0a04f8

    const-string v1, "field \'iconClose\' and method \'onViewClicked\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 29
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'iconClose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->iconClose:Landroid/widget/ImageView;

    .line 30
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->h:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->emptyView:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->fragmentContainer:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->firstTab:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->secondTab:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->thirdTab:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab1:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab2:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab3:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tabLay:Landroid/view/ViewGroup;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tabLine:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->iconClose:Landroid/widget/ImageView;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->f:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->g:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
