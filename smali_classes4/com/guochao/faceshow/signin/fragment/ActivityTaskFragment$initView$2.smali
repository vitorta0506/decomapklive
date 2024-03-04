.class public final Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "com/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setImageResource",
        "imageView",
        "Landroid/widget/ImageView;",
        "rewardBean",
        "Lcom/guochao/faceshow/signin/bean/RewardList;",
        "lib_sign_in_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->onBindViewHolder$lambda-5$lambda-2(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->onBindViewHolder$lambda-5$lambda-4(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->onBindViewHolder$lambda-5$lambda-3(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->onCreateViewHolder$lambda-0(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-5$lambda-2(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Landroid/view/View;)V
    .locals 1

    const-string p2, "$itemData"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment"

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "gongliao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->sendLiveMsg()V

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    if-nez p0, :cond_a

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    if-eqz p0, :cond_a

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "SENDGIFT"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->sendLiveGift()V

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    if-nez p0, :cond_a

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    if-eqz p0, :cond_a

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "FRIENDCOMMENT"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :sswitch_3
    const-string v0, "USERSING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 13
    sget-object p2, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    new-instance v0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;-><init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;)V

    invoke-virtual {p2, p0, v0}, Lcom/guochao/faceshow/signin/SigninManager;->checkSignInTask(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :sswitch_4
    const-string v0, "RECHARGE"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    sget-object p0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->showRechargeDialog()V

    goto :goto_1

    :sswitch_5
    const-string v0, "FRIENDLIKE"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    :cond_5
    sget-object p0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->gotoUgc()V

    goto :goto_1

    :sswitch_6
    const-string v0, "SENDVIDEO"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    :cond_7
    sget-object p0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->sendVideo()V

    goto :goto_1

    .line 22
    :cond_8
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    if-eqz p0, :cond_9

    .line 23
    sget-object p0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->goRandomLive()V

    goto :goto_1

    .line 24
    :cond_9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    if-eqz p0, :cond_a

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_a
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5711362d -> :sswitch_6
        -0x4bbfd8cb -> :sswitch_5
        -0x1679159 -> :sswitch_4
        0x1ed1dcda -> :sswitch_3
        0x23d86de1 -> :sswitch_2
        0x790924b8 -> :sswitch_1
        0x7cfff68c -> :sswitch_0
    .end sparse-switch
.end method

.method private static final onBindViewHolder$lambda-5$lambda-3(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$itemData"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;->getSigninReward(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-5$lambda-4(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$itemData"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityId()Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->gotoActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-0(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityFlag()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "activity_load_from_4000"

    const-string v2, "4"

    invoke-virtual {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->gotoActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "childFragmentManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->getMDataList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    .line 9
    invoke-virtual {v0, v1, v2, p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/signin/bean/GrowTaskBean;)Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V
    .locals 13
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    .line 4
    sget v0, Lcom/guochao/faceshow/signin/R$id;->activityNameTV:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    sget v0, Lcom/guochao/faceshow/signin/R$id;->btn_do_task:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const-string v4, "Go"

    .line 10
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "#556EFF"

    .line 11
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    new-instance v4, Lcom/guochao/faceshow/signin/fragment/c;

    invoke-direct {v4, p2, v3}, Lcom/guochao/faceshow/signin/fragment/c;-><init>(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_2
    :goto_1
    const-string v5, "#FFFFFF"

    if-nez v4, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    const-string v4, "Get"

    .line 16
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    new-instance v4, Lcom/guochao/faceshow/signin/fragment/f;

    invoke-direct {v4, v3, p2}, Lcom/guochao/faceshow/signin/fragment/f;-><init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 19
    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    const-string v4, "Draw"

    .line 21
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    new-instance v4, Lcom/guochao/faceshow/signin/fragment/e;

    invoke-direct {v4, v3, p2}, Lcom/guochao/faceshow/signin/fragment/e;-><init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_5
    :goto_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x29

    const/16 v4, 0x2f

    const/16 v5, 0x28

    const-string v6, "format(format, *args)"

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v0, :cond_19

    .line 25
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v0

    const-string v9, "kanzhibao"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    sget v0, Lcom/guochao/faceshow/signin/R$id;->task_name:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_6

    goto/16 :goto_d

    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 27
    sget-object v7, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v7}, Lcom/guochao/faceshow/signin/SigninManager;->getMActivityWatchLiveSecond()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_4

    :cond_7
    const/4 v11, 0x1

    :goto_4
    if-le v10, v11, :cond_8

    .line 28
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Lcom/guochao/faceshow/signin/SigninManager;->getMActivityWatchLiveSecond()I

    move-result v7

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 29
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v11, v2, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    .line 31
    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_a

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v7

    .line 33
    :cond_a
    :goto_6
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v4

    .line 35
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    :cond_b
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 37
    :cond_c
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v0

    const-string v9, "gongliao"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDaySendMsgCount()I

    move-result v0

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    .line 39
    :goto_7
    sget v9, Lcom/guochao/faceshow/signin/R$id;->task_name:I

    invoke-virtual {p1, v9}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-nez v9, :cond_e

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 40
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_8

    :cond_f
    const/4 v7, 0x1

    :goto_8
    if-le v0, v7, :cond_10

    .line 41
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    :goto_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v11, v2, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    .line 44
    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_12

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v0

    .line 46
    :cond_12
    :goto_a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v0

    .line 48
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 49
    :cond_13
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 50
    :cond_14
    sget v0, Lcom/guochao/faceshow/signin/R$id;->task_name:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_15

    goto/16 :goto_d

    :cond_15
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v7, v2, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v1

    .line 53
    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x0

    goto :goto_c

    :cond_17
    :goto_b
    const/4 v3, 0x1

    .line 55
    :goto_c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/1)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 56
    :cond_18
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 57
    :cond_19
    sget v0, Lcom/guochao/faceshow/signin/R$id;->task_name:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v10, v2, [Ljava/lang/Object;

    .line 59
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    .line 60
    invoke-static {v10, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v5

    .line 62
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v4

    .line 64
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 65
    :cond_1b
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_d
    sget v0, Lcom/guochao/faceshow/signin/R$id;->first_gift:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 67
    sget v3, Lcom/guochao/faceshow/signin/R$id;->second_gift:I

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroid/view/ViewGroup;

    .line 68
    sget v4, Lcom/guochao/faceshow/signin/R$id;->third_gift:I

    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x8

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v4, :cond_24

    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1e

    if-eq v7, v2, :cond_1d

    if-eq v7, v8, :cond_1c

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 73
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 75
    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 79
    :cond_1d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 81
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 82
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 83
    :cond_1e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 84
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x3

    const/16 v10, 0x78

    const-string v11, "null cannot be cast to non-null type android.widget.TextView"

    const-string v12, "null cannot be cast to non-null type android.widget.ImageView"

    if-lt v7, v9, :cond_20

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 87
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    .line 88
    invoke-virtual {p0, v7, v9}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_f

    :cond_1f
    const/4 v9, 0x1

    :goto_f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_20
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v8, :cond_22

    .line 91
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 93
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, p1, v7}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {v7}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_21

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_10

    :cond_21
    const/4 v7, 0x1

    :goto_10
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_22
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_24

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 98
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, p1, v7}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_24
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_25

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_25
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/guochao/faceshow/signin/R$layout;->item_activity_task:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    new-instance v1, Lcom/guochao/faceshow/signin/fragment/d;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/signin/fragment/d;-><init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public final setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/signin/bean/RewardList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget v0, Lcom/guochao/faceshow/signin/R$mipmap;->gift_clip_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    const/high16 v0, 0x40200000    # 2.5f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 8
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_fifth:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_3
    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 10
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_first:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v1, 0x2

    if-nez v0, :cond_6

    goto :goto_3

    .line 11
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 12
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_shuijing:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 13
    :cond_7
    :goto_3
    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getRewardImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :goto_4
    return-void
.end method
