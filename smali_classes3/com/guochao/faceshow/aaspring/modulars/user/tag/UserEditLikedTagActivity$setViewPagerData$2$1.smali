.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->setViewPagerData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->onCreateViewHolder$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;Landroid/view/View;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMUserLikedTagList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const p1, 0x7f12058c

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMTotalLikedTagList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMUserLikedTagList()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 8
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->setMIsSelect(Ljava/lang/Boolean;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMUserLikedTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getTvTagCount()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMUserLikedTagList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s/10"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMTotalRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMTotalLikedTagList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->getMTotalLikedTagList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    const v0, 0x7f0a0d04

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41200000    # 10.0f

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getMIsSelect()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0800dc

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;

    const v1, 0x7f0603ce

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0800db

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;

    const v1, 0x7f06009c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getTags()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0282

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0d04

    .line 3
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/o;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
