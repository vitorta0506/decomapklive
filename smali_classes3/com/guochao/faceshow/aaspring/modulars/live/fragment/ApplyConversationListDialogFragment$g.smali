.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->Z1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->setAudienceId(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    invoke-interface {p2, p1}, Ld9/g;->r(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->y()V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->e2()V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mLiveBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->k2(Z)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mImageViewStatus:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;Z)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->w(Z)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    if-nez p1, :cond_1

    return-void

    .line 12
    :cond_1
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->apply_link_multi_click:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->apply_link_single_click:Ljava/lang/String;

    :goto_0
    const-string v0, "1"

    .line 14
    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mTextViewLinkMic:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const v0, 0x13882

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    const v0, 0x7f1204c3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mImageViewStatus:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->k2(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mLiveBtn:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->bottomLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->apply_link_multi_click:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->apply_link_single_click:Ljava/lang/String;

    :goto_0
    const-string v1, "0"

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;->a(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
