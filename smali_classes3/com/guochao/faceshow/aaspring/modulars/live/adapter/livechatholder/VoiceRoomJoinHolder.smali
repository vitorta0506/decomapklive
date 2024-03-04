.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "view",
        "Landroid/view/View;",
        "fragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
        "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;",
        "app_GooglePlayRelease"
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
.field private final viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    move-result-object p1

    const-string v0, "bind(view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "fragment.requireActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 5
    const-class p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    .line 6
    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 9
    const-class v1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    .line 10
    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    .line 11
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final _init_$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$memberViewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result p4

    const/16 v1, 0x1e

    if-ne p4, v1, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string v1, "viewBinding.root"

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 2
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    iget-object p4, p4, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;->text:Landroid/widget/TextView;

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120a9b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    iget-object p4, p4, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;->text:Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    invoke-virtual {p4, v2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;

    invoke-direct {v5, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;->text:Landroid/widget/TextView;

    .line 12
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a8e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;

    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->_init_$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method private static final lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Landroid/view/View;)V
    .locals 0

    const-string p3, "$fragment"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$viewModel"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$memberViewModel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;

    invoke-virtual {p3, p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;->showJoinTips(Landroidx/fragment/app/Fragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V

    return-void
.end method
