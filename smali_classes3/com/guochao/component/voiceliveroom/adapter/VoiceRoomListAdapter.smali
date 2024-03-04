.class public Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u000eB\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "list",
        "",
        "(Ljava/util/List;)V",
        "formatter",
        "Lcom/guochao/lib_service_center/util/service/TimeFormatter;",
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


# instance fields
.field private final formatter:Lcom/guochao/lib_service_center/util/service/TimeFormatter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/time_formatter"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/guochao/lib_service_center/util/service/TimeFormatter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/guochao/lib_service_center/util/service/TimeFormatter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;->formatter:Lcom/guochao/lib_service_center/util/service/TimeFormatter;

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/view/VoiceListLoadMoreView;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/guochao/component/voiceliveroom/view/VoiceListLoadMoreView;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    .line 7
    new-instance v0, Lcom/guochao/component/voiceliveroom/adapter/a;

    invoke-direct {v0, p1}, Lcom/guochao/component/voiceliveroom/adapter/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    return-void
.end method

.method private static final _init_$lambda-0(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "view.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p3, p2}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;->_init_$lambda-0(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

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
    check-cast p1, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;->convert(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 16
    .param p1    # Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "item"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v1, Lcom/guochao/component/liveroom/R$id;->cover:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    const/4 v5, -0x1

    .line 5
    invoke-static {v1, v3, v5, v4}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    sget v3, Lcom/guochao/component/liveroom/R$raw;->voice_room_list_member_num:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getNature()I

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 9
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->lockRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->lockRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->roomTitle:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->memberCount:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getVisitorCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->countryLogo:Landroid/widget/ImageView;

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCountryImg()Ljava/lang/String;

    move-result-object v6

    .line 15
    sget v7, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_list_default_cover:I

    .line 16
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    .line 17
    invoke-static {v1, v6, v7, v8}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagNames()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const/4 v7, 0x0

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 20
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_7

    .line 21
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 22
    :cond_7
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagNames()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v8, v7

    :goto_6
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :goto_7
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->seatArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v1

    const/high16 v8, -0x3f800000    # -4.0f

    const/high16 v9, 0x41c80000    # 25.0f

    if-eqz v1, :cond_a

    const/4 v10, 0x5

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v10

    .line 27
    invoke-static {v4, v10}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v10

    .line 28
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v11, v10

    check-cast v11, Lkotlin/collections/IntIterator;

    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v11

    .line 29
    new-instance v12, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 30
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v14

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v11, :cond_9

    .line 32
    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 33
    :cond_9
    iget-object v14, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->seatArea:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    invoke-virtual {v11}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v11

    .line 35
    sget v13, Lcom/guochao/lib_base/R$mipmap;->default_head:I

    .line 36
    new-instance v14, Ljc/d;

    const/high16 v15, 0x40000000    # 2.0f

    .line 37
    invoke-static {v15}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v15

    int-to-float v15, v15

    .line 38
    invoke-direct {v14, v15, v5, v6}, Ljc/d;-><init>(FIZ)V

    .line 39
    invoke-static {v12, v11, v13, v14}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    goto :goto_8

    .line 40
    :cond_a
    new-instance v5, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 41
    sget v10, Lcom/guochao/component/liveroom/R$mipmap;->ic_voice_room_list_add_icon:I

    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 42
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v11

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    invoke-direct {v10, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v1, :cond_c

    .line 44
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v9, 0x1

    :goto_a
    if-nez v9, :cond_d

    .line 45
    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 46
    :cond_d
    iget-object v8, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->seatArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_f

    .line 47
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    :cond_f
    :goto_b
    if-eqz v6, :cond_12

    .line 48
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->micCountArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->onlineTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->onlineTime:Landroid/widget/TextView;

    move-object/from16 v1, p0

    .line 51
    iget-object v3, v1, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;->formatter:Lcom/guochao/lib_service_center/util/service/TimeFormatter;

    if-eqz v3, :cond_11

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getOfflineTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_c

    :cond_10
    const-wide/16 v6, 0x0

    :goto_c
    sub-long/2addr v4, v6

    .line 53
    invoke-interface {v3, v4, v5}, Lcom/guochao/lib_service_center/util/service/TimeFormatter;->getVoiceRoomOfflineTime(J)Ljava/lang/String;

    move-result-object v7

    .line 54
    :cond_11
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_12
    move-object/from16 v1, p0

    .line 55
    iget-object v2, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->micCountArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->onlineTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void
.end method
