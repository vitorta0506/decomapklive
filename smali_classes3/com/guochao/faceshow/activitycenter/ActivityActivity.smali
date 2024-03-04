.class public final Lcom/guochao/faceshow/activitycenter/ActivityActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/activitycenter/ActivityActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ActivityActivityBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ActivityActivityBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/ActivityActivityBinding;)V",
        "initView",
        "",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "replaceFragment",
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
.field public static final Companion:Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public viewBinding:Lcom/guochao/faceshow/databinding/ActivityActivityBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/activitycenter/ActivityActivity;->Companion:Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;-><init>()V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final replaceFragment()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "supportFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->Companion:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;

    invoke-virtual {v1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;->newInstance()Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    move-result-object v1

    const v2, 0x7f0a0968

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ActivityActivityBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/activitycenter/ActivityActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityActivityBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f1200c3

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/activitycenter/ActivityActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityActivityBinding;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/activitycenter/ActivityActivity;->replaceFragment()V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/ActivityActivityBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ActivityActivityBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/activitycenter/ActivityActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityActivityBinding;

    return-void
.end method
