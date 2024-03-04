.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0012\u0010\u001f\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001d\u0010 \u001a\u00020\u001b2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020\u001bH\u0016J\u0012\u0010&\u001a\u00020\u001b2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u0019\u0010)\u001a\u00020\u001b2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\"H\u0002\u00a2\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u0004H\u0017J\u0008\u0010.\u001a\u00020\u001bH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00148\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0015\u0010\u0002\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u00060"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;",
        "()V",
        "cancelPost",
        "",
        "getCancelPost",
        "()Z",
        "setCancelPost",
        "(Z)V",
        "headerView",
        "Landroid/view/View;",
        "getHeaderView",
        "()Landroid/view/View;",
        "setHeaderView",
        "(Landroid/view/View;)V",
        "isMatching",
        "setMatching",
        "matchPost",
        "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;)V",
        "initView",
        "",
        "root",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onOffsetChanged",
        "totalScrollRange",
        "",
        "offset",
        "(Ljava/lang/Integer;I)V",
        "onPause",
        "refreshAfterData",
        "data",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        "setMatchNum",
        "count",
        "(Ljava/lang/Integer;)V",
        "setUserVisibleHint",
        "isVisibleToUser",
        "startMatch",
        "TypefaceSpan",
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
.field private cancelPost:Z

.field public headerView:Landroid/view/View;

.field private isMatching:Z

.field private matchPost:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;-><init>()V

    return-void
.end method

.method public static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setMatchNum(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->setMatchNum(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->startMatch()V

    return-void
.end method

.method private final setMatchNum(Ljava/lang/Integer;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v2, 0x7f1204d3

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.live_people_matched)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, p1

    .line 5
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "getTypeface(FontUtils.TYPE_UGC_NUMBER_DIN)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    new-instance v5, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v5, v6}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;-><init>(F)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v2, p1

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, v5, v2, p1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic setMatchNum$default(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->setMatchNum(Ljava/lang/Integer;)V

    return-void
.end method

.method private final startMatch()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->isMatching:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->isMatching:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->getHeaderView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a04ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 4
    fill-array-data v2, :array_0

    const-string v3, "rotation"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x3e8

    .line 6
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 8
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 9
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->cancelPost:Z

    const-string v0, "tokens/live/newLive/mathLive"

    .line 11
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Landroid/animation/ObjectAnimator;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->matchPost:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public final getCancelPost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->cancelPost:Z

    return v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "headerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0699

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->setHeaderView(Landroid/view/View;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-static {p0, p1, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->setMatchNum$default(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->getHeaderView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/m;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final isMatching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->isMatching:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->setMCurrSelectTypeId(I)V

    return-void
.end method

.method public final onOffsetChanged(Ljava/lang/Integer;I)V
    .locals 4
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-gez v1, :cond_1

    if-gez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getItemType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v2, :cond_3

    const v3, 0x7f0a051b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;->onOffsetChanged(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->cancelPost:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->matchPost:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    :cond_0
    return-void
.end method

.method protected refreshAfterData(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->refreshAfterData(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getMatchNum()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->setMatchNum(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setCancelPost(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->cancelPost:Z

    return-void
.end method

.method public final setHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->headerView:Landroid/view/View;

    return-void
.end method

.method public final setMatching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->isMatching:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->cancelPost:Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->matchPost:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    :cond_0
    return-void
.end method

.method public setViewBinding(Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    return-void
.end method
