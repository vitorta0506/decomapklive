.class public final Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J$\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J$\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;",
        "()V",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "onBlackStateChanged",
        "holder",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;",
        "dynamicBean",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
        "blacked",
        "",
        "onFocusStateChanged",
        "focused",
        "showEmptyText",
        "showEmptyView",
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
.field public static final Companion:Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;-><init>()V

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;->getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;

    move-result-object p0

    return-object p0
.end method

.method private final showEmptyText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x42b20000    # 89.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public onBlackStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->onBlackStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    instance-of v0, p3, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    :cond_1
    return-void
.end method

.method public onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLikeClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Laa/d;->a(Laa/e;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V

    return-void
.end method

.method public showEmptyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->showEmptyView()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;->showEmptyText()V

    return-void
.end method
