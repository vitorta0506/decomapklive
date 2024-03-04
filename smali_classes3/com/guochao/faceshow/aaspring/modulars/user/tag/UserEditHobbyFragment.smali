.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0014J\u0010\u0010\u001b\u001a\u00020\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "()V",
        "mDataList",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
        "getMDataList",
        "()Ljava/util/List;",
        "mHobbyBean",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
        "getMHobbyBean",
        "()Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
        "setMHobbyBean",
        "(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;)V",
        "mRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getMRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setMRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "getLayoutId",
        "",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "loadData",
        "refreshItemUnSelect",
        "hobbyBean",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mHobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mDataList:Ljava/util/List;

    return-void
.end method

.method public static final getInstance(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;)Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;
    .locals 1
    .param p0    # Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;->getInstance(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;)Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e3

    return v0
.end method

.method public final getMDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public final getMHobbyBean()Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mHobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    return-object v0
.end method

.method public final getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "HobbyBean"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mHobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    if-eqz p1, :cond_1

    const v0, 0x7f0a095c

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    move-object v1, p1

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method protected loadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mHobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->getHobbyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final refreshItemUnSelect(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mDataList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->setMIsSelect(Ljava/lang/Boolean;)V

    .line 5
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final setMHobbyBean(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mHobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    return-void
.end method

.method public final setMRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
