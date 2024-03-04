.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    .line 3
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0255

    const-string v2, "field \'merge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->merge:Landroid/widget/FrameLayout;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a01af

    const-string v1, "field \'mCancel\' and method \'cancel\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 6
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCancel:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->e:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0437

    const-string v1, "field \'mFollow\' and method \'follow\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 10
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFollow:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->f:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00af

    const-string v2, "field \'animViewLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->animViewLay:Landroid/view/ViewGroup;

    .line 14
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a042e

    const-string v2, "field \'mFloatingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFloatingView:Landroid/widget/FrameLayout;

    .line 15
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0591

    const-string v2, "field \'ivBack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivBack:Landroid/widget/ImageView;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a042b

    const-string v2, "field \'floatTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->floatTitle:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05a7

    const-string v2, "field \'ivFocus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    .line 18
    const-class v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v1, 0x7f0a0430

    const-string v2, "field \'focusSVGA\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 19
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05bd

    const-string v2, "field \'ivMore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivMore:Landroid/widget/ImageView;

    .line 20
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a0bc5

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a073a

    const-string v1, "field \'mMainContentView\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMainContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->merge:Landroid/widget/FrameLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCancel:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFollow:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->animViewLay:Landroid/view/ViewGroup;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFloatingView:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivBack:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->floatTitle:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivMore:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMainContentView:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->e:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity_ViewBinding;->f:Landroid/view/View;

    .line 20
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity_ViewBinding;->unbind()V

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
