.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PeopleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V",
        "convert",
        "",
        "holder",
        "item",
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;

    .line 2
    sget p1, Lcom/guochao/component/liveroom/R$layout;->item_voice_room_visitor:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/views/LoadMoreView;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/LoadMoreView;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    return-void
.end method


# virtual methods
.method public addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/LoadMoreModule$DefaultImpls;->addLoadMoreModule(Lcom/chad/library/adapter/base/module/LoadMoreModule;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;->convert(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;)V
    .locals 4
    .param p1    # Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->vipView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v1

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b(II)V

    .line 7
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getRoleType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_visitor_role_member:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_visitor_role_admin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->roleIV:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_visitor_role_owner:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMicroStatus()I

    move-result p2

    if-nez p2, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->onlineIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;->onlineIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
