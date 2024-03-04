.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;

    const v0, 0x7f0a00fd

    const-string v1, "field \'userAvatar\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const-string v3, "field \'userAvatar\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0dc5

    const-string v1, "field \'userName\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'userName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userName:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0dc6

    const-string v1, "field \'userNameLay\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'userNameLay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userNameLay:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0255

    const-string v2, "field \'content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->content:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0507

    const-string v2, "field \'iconVideo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    .line 17
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0137

    const-string v2, "field \'bgVideo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    .line 18
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0508

    const-string v2, "field \'iconVideoLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b9e

    const-string v2, "field \'timeHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->timeHistory:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userNameLay:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->content:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->timeHistory:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
