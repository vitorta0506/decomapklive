.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemberAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V",
        "convert",
        "",
        "holder",
        "item",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
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


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/view/LoadMoreTextView;

    invoke-direct {v2, p1, v0, p1}, Lcom/guochao/component/voiceliveroom/view/LoadMoreTextView;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMoreIfNotFullPage(Z)V

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

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$TitleHolder;

    if-eqz v0, :cond_2

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$id;->title:I

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 4
    sget p2, Lcom/guochao/component/liveroom/R$string;->voice_room_members:I

    goto :goto_0

    .line 5
    :cond_0
    sget p2, Lcom/guochao/component/liveroom/R$string;->live_admin:I

    goto :goto_0

    .line 6
    :cond_1
    sget p2, Lcom/guochao/component/liveroom/R$string;->voice_room_host:I

    .line 7
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 8
    :cond_2
    instance-of v0, p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;->bind(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)V

    return-void
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from(parent.context)\n   \u2026                        )"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1
    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 3
    sget v4, Lcom/guochao/component/liveroom/R$layout;->list_item_voice_members:I

    .line 4
    invoke-virtual {v3, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p2, v2, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$TitleHolder;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 8
    sget v4, Lcom/guochao/component/liveroom/R$layout;->list_item_voice_member_list_title:I

    .line 9
    invoke-virtual {v3, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p2, v2, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$TitleHolder;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
