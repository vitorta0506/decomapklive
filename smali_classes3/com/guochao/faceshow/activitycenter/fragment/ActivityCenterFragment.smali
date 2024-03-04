.class public final Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;,
        Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;,
        Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0003\u0015\u0016\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u001a\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u0015\u0010\u0003\u001a\u00060\u0004R\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "mAdapter",
        "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;",
        "getMAdapter",
        "()Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;)V",
        "getData",
        "",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "ActivityAdapter",
        "Companion",
        "PeopleViewHolder",
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
.field public static final Companion:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mAdapter:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->Companion:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;-><init>(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->mAdapter:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->initView$lambda-4(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->initView$lambda-3$lambda-1(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->initView$lambda-3$lambda-2(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method private final getData()V
    .locals 2

    const-string v0, "api/appactivity/findAllActivity"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;-><init>(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-3$lambda-1(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getData()V

    return-void
.end method

.method private static final initView$lambda-3$lambda-2(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getData()V

    return-void
.end method

.method private static final initView$lambda-4(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p2, "activity_center_activity_3000"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    const-string p2, "activity_load_from_4000"

    const-string v0, "3"

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->mAdapter:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;

    invoke-static {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AppEventFragment;->Q1(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->mAdapter:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getData()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    new-instance v0, Lcom/guochao/faceshow/activitycenter/fragment/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activitycenter/fragment/b;-><init>(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 5
    iget-object v1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->emptyIV:Landroid/widget/ImageView;

    const-string p1, "emptyIV"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/faceshow/activitycenter/fragment/a;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/activitycenter/fragment/a;-><init>(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->mAdapter:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->mAdapter:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;

    new-instance p2, Lcom/guochao/faceshow/activitycenter/fragment/c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/activitycenter/fragment/c;-><init>(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    return-void
.end method
