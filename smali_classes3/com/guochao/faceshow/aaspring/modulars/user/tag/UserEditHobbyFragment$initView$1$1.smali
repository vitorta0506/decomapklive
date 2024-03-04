.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->initView(Landroid/view/View;)V
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
        "com/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->onCreateViewHolder$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;Landroid/view/View;)V
    .locals 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    const-string v1, "format(format, *args)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "(%s/10)"

    const/4 v5, 0x0

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    const-string v7, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity"

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getMIsSelect()Ljava/lang/Boolean;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->setMIsSelect(Ljava/lang/Boolean;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v5

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz v11, :cond_1

    .line 7
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1

    :cond_1
    move-object v12, v5

    :goto_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v10, v11

    goto :goto_0

    :cond_2
    if-eqz v10, :cond_3

    .line 8
    invoke-interface {v8, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 11
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    .line 15
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->setCount(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_7

    const p1, 0x7f12058c

    .line 18
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 19
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz v0, :cond_d

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object v8

    .line 22
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz v9, :cond_9

    .line 23
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v9

    goto :goto_2

    :cond_9
    move-object v9, v5

    :goto_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    return-void

    .line 24
    :cond_a
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->setMIsSelect(Ljava/lang/Boolean;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    :cond_b
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 28
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v3, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMUserHobbyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    .line 32
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->setCount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 4
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    const v1, 0x7f0a0d04

    .line 4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41800000    # 16.0f

    .line 6
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 7
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getMIsSelect()Ljava/lang/Boolean;

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
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060093

    .line 11
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0800db

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06009c

    .line 15
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getTags()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0282

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0d04

    .line 6
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    .line 7
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    .line 8
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    .line 9
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 10
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 11
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/j;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
