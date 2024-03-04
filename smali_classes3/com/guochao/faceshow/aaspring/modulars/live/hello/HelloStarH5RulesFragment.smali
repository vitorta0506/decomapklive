.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "h5RulesSelectListener",
        "Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;",
        "getH5RulesSelectListener",
        "()Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;",
        "setH5RulesSelectListener",
        "(Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;)V",
        "mWebViewFragment",
        "Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;",
        "getMWebViewFragment",
        "()Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;",
        "setMWebViewFragment",
        "(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setOnH5RulesSelectListener",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private h5RulesSelectListener:Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mWebViewFragment:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->initView$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->h5RulesSelectListener:Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;->onH5BlackSummonListener()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getH5RulesSelectListener()Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->h5RulesSelectListener:Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;

    return-object v0
.end method

.method public final getMWebViewFragment()Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->mWebViewFragment:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/guochao/faceshow/utils/WebViewUrlTools;->getLocalWebUrl(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0440

    const-string v2, ""

    invoke-static {v1, p2, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getInstance(ILandroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->mWebViewFragment:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    .line 4
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;->ivBlack:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setH5RulesSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->h5RulesSelectListener:Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;

    return-void
.end method

.method public final setMWebViewFragment(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->mWebViewFragment:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    return-void
.end method

.method public final setOnH5RulesSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "h5RulesSelectListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->h5RulesSelectListener:Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;

    return-void
.end method
