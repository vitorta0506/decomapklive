.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fd

    const-string v2, "field \'mAvatarView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'mUserNameView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mUserNameView:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0269

    const-string v2, "field \'mCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mCount:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0274

    const-string v2, "field \'mCountWeight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mCountWeight:Landroid/widget/TextView;

    .line 7
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0e13

    const-string v2, "field \'vipIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0506

    const-string v2, "field \'iconSmallCoin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->iconSmallCoin:Landroid/widget/ImageView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c4f

    const-string v2, "field \'bestLuck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->bestLuck:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mUserNameView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mCount:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mCountWeight:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->iconSmallCoin:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->bestLuck:Landroid/widget/TextView;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
