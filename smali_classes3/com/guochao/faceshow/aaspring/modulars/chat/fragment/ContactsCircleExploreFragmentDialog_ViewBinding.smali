.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;

    const v0, 0x7f0a0193

    const-string v1, "field \'btnOk\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnOk\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;->btnOk:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0183

    const-string v1, "field \'btnSearch\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'btnSearch\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;->btnSearch:Landroid/widget/TextView;

    .line 9
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;->btnOk:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;->btnSearch:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
