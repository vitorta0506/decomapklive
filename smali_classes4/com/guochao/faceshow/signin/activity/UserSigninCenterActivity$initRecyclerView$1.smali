.class public final Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initRecyclerView()V
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
        "com/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1",
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
.field final synthetic this$0:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->onCreateViewHolder$lambda-1(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-1(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getSignedCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->isTodaySigned()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1$onCreateViewHolder$2$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1$onCreateViewHolder$2$1;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V
    .locals 11
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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "day"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getSignList()Lcom/guochao/faceshow/signin/bean/SigninBean;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getSignList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/SignList;

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SignList;->getFixList()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SignList;->getLuckList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v8, Lcom/guochao/faceshow/signin/R$id;->iv_gift_icon:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 10
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v9, Lcom/guochao/faceshow/signin/R$id;->iv_gift_icon_svga:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/16 v9, 0x8

    .line 11
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v10, "ivGiftIcon"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 12
    :pswitch_0
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_big_gift:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getSignedCount()I

    move-result p2

    const/4 v7, 0x7

    if-ge p2, v7, :cond_7

    .line 14
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    sget p2, Lcom/guochao/faceshow/signin/R$raw;->signin_seventh_day:I

    invoke-virtual {v8, p2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    goto :goto_1

    .line 16
    :pswitch_1
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signinresult_box:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 17
    :pswitch_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_task_header:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    goto :goto_1

    .line 20
    :pswitch_3
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signinresult_box:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 21
    :pswitch_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 22
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_first:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    goto :goto_1

    .line 24
    :pswitch_5
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signinresult_box:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 25
    :pswitch_6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 26
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_sign_user_center:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 27
    :cond_6
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 28
    :cond_7
    :goto_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    .line 29
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget v10, Lcom/guochao/faceshow/signin/R$drawable;->bg_item_signin_content:I

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    invoke-virtual {v7}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getSignedCount()I

    move-result v8

    const/4 v10, 0x2

    if-gt v6, v8, :cond_8

    .line 31
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/guochao/faceshow/signin/R$drawable;->bg_item_signined:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 35
    :cond_8
    invoke-virtual {v7}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getSignedCount()I

    move-result v8

    add-int/2addr v8, v3

    if-ne v6, v8, :cond_b

    invoke-virtual {v7}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getSignList()Lcom/guochao/faceshow/signin/bean/SigninBean;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getDayFlag()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_b

    .line 36
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/guochao/faceshow/signin/R$drawable;->bg_item_to_signin:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v7, Lcom/guochao/lib_base/R$color;->white:I

    invoke-static {p2, v7}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 40
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    .line 41
    new-instance v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "viewGroup.context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, v5, v10, v5}, Lcom/guochao/faceshow/views/SvgaImageViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    sget v5, Lcom/guochao/faceshow/signin/R$raw;->task_center_light:I

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 44
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 45
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p2, -0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 48
    :cond_b
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/guochao/lib_base/R$color;->transparent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

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
    sget v1, Lcom/guochao/faceshow/signin/R$layout;->item_signin_center_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v0

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 8
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x40400000    # 3.0f

    .line 10
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 11
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 12
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    new-instance v1, Lcom/guochao/faceshow/signin/activity/f;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/signin/activity/f;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

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

    const/high16 v0, 0x40a00000    # 5.0f

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
