.class public Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    const v0, 0x7f0a06bc

    const-string v1, "field \'llAll\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->llAll:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/ChatControllerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06ce

    const-string v1, "field \'llFollow\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llFollow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->llFollow:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->e:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/ChatControllerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a058c

    const-string v2, "field \'ivAll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivAll:Landroid/widget/ImageView;

    .line 12
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05a8

    const-string v2, "field \'ivFollow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivFollow:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->llAll:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->llFollow:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivAll:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivFollow:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity_ViewBinding;->e:Landroid/view/View;

    .line 11
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
