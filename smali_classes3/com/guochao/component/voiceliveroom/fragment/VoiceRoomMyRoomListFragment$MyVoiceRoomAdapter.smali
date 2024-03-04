.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;
.super Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyVoiceRoomAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0014J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;",
        "list",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Ljava/util/List;)V",
        "addLoadMoreModule",
        "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "convert",
        "",
        "holder",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;",
        "item",
        "setNoMoreData",
        "num",
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;-><init>(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    new-instance v0, Lcom/guochao/component/voiceliveroom/view/LoadMoreTextView;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/view/LoadMoreTextView;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMoreIfNotFullPage(Z)V

    .line 7
    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/m0;

    invoke-direct {p2, p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/m0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;)V

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lx0/h;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {p3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p3, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$string;->voice_room_remove_room_title1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026_room_remove_room_title1)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p3

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showCancel(ZLjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p3

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$string;->voice_room_remove_room_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showConfirm(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p3

    .line 6
    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;ILcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$2;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$2;

    invoke-virtual {p3, v1, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_1
    return v0
.end method

.method public static synthetic f(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;->_init_$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 1
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

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;->addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;->convert(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 1
    .param p1    # Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;->convert(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->mineTV:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->mineTV:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final setNoMoreData(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.view.LoadMoreTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/component/voiceliveroom/view/LoadMoreTextView;

    .line 2
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$string;->voice_room_my_room_loadmore:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.stri\u2026my_room_loadmore, \"$num\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/view/LoadMoreTextView;->setText(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
