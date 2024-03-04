.class public final Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0004J$\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\u0012\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0011H\u0016J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0016J\u0008\u0010#\u001a\u00020\u000eH\u0016J$\u0010$\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010%\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;",
        "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "()V",
        "mEmptyView",
        "Landroid/view/View;",
        "mUserId",
        "",
        "getMUserId",
        "()Ljava/lang/String;",
        "setMUserId",
        "(Ljava/lang/String;)V",
        "convertItem",
        "",
        "holder",
        "position",
        "",
        "item",
        "getLayoutId",
        "initView",
        "view",
        "loadData",
        "pageNo",
        "notifyDataLoaded",
        "hasMoreData",
        "",
        "onCreateLayoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onDestroyView",
        "onItemClick",
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
.field public static final Companion:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mEmptyView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->showEmptyView$lambda-3(Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final showEmptyView$lambda-3(Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->reload()V

    return-void
.end method


# virtual methods
.method public convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/VideoItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const v0, 0x7f0a027c

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoImg()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/16 p3, 0xa

    invoke-static {p1, p2, p3}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0161

    return v0
.end method

.method public final getMUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    const v0, 0x7f0a095a

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    .line 6
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mUserId:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42b20000    # 89.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v5, v5, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public loadData(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->getMyVideoNew:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "is_private"

    const-string v2, "1"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$fail$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    :cond_0
    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->showEmptyView()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
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
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0204

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/VideoItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p3, v0, v1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    const-string p3, "makeScaleUpAnimation(vie\u2026 view!!.height / 2, 0, 0)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p3

    sput-object p3, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    .line 4
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/PersonVideoActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-direct {v0}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string v3, "currentUser.userId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "userId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "page"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_private"

    const-string v5, "1"

    .line 9
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "limit"

    const-string v5, "24"

    .line 10
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->getMyVideoNew:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->e(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->c(I)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->d(Ljava/util/HashMap;)V

    const-string v1, "config"

    .line 14
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "position"

    .line 15
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "currPage"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "from"

    const/16 v0, 0xc

    .line 18
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method

.method public final setMUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public showEmptyView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d02f5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Lcom/guochao/faceshow/userhomepage/act/v;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/userhomepage/act/v;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_2
    if-eqz v2, :cond_7

    const/4 v0, -0x1

    .line 6
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_7

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v3, v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_9

    const v2, 0x7f0603ce

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 11
    :cond_8
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 12
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 13
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    goto :goto_5

    .line 14
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 16
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_d

    if-nez v0, :cond_c

    goto :goto_6

    .line 17
    :cond_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_6
    return-void
.end method
