.class public final Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u000cB\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "list",
        "",
        "(Ljava/util/List;)V",
        "convert",
        "",
        "holder",
        "item",
        "VoiceRoomHolder",
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/guochao/component/liveroom/R$layout;->list_item_voice_room_list:I

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/views/LoadMoreView;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/views/LoadMoreView;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMoreIfNotFullPage(Z)V

    .line 7
    new-instance v0, Lcom/guochao/component/voiceliveroom/adapter/b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/component/voiceliveroom/adapter/b;-><init>(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p4, p2}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;->_init_$lambda-0(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

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
    check-cast p1, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;->convert(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 5
    .param p1    # Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;
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
    sget v0, Lcom/guochao/component/liveroom/R$id;->cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    const/4 v3, -0x1

    .line 5
    invoke-static {v0, v1, v3, v2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->roomTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->memberCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getVisitorCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->countryLogo:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCountryImg()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-direct {v2, v4}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    .line 12
    invoke-static {v0, v1, v3, v2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 13
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 14
    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 15
    :cond_2
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagNames()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
