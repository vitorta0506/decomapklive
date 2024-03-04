.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemberHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;Landroid/view/View;)V",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;",
        "bind",
        "",
        "model",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

.field private final viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    move-result-object p1

    const-string p2, "bind(itemView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 5
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->vipView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->region:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b(II)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->access$getOperationMode$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMemberType()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    :goto_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->access$getRole(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->selected:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ar"

    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->myCard:Landroidx/cardview/widget/CardView;

    const/high16 v1, -0x3db00000    # -52.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->myCard:Landroidx/cardview/widget/CardView;

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->myCard:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 14
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->selected:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->viewBinding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->selected:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
