.class public final Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;,
        Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0002-.B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012J\u001a\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u0012\u0010)\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010*\u001a\u00020+2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0008\u0010,\u001a\u00020\"H\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0007R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007R$\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001c\u0010\u0002\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006/"
    }
    d2 = {
        "Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "fragments",
        "",
        "Landroidx/fragment/app/Fragment;",
        "getFragments",
        "()Ljava/util/List;",
        "list",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
        "getList",
        "onDismissListener",
        "Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;",
        "getOnDismissListener",
        "()Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;",
        "setOnDismissListener",
        "(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;)V",
        "selectCountry",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
        "getSelectCountry",
        "()Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
        "setSelectCountry",
        "(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V",
        "titles",
        "",
        "getTitles",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;)V",
        "dismissWithItem",
        "",
        "country",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "updateUserCurrCountry",
        "Companion",
        "OnDismissListener",
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
.field public static final Companion:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onDismissListener:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectCountry:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->Companion:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->titles:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->fragments:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->list:Ljava/util/List;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->initView$lambda-3(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->initView$lambda-0(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->initView$lambda-2(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->initView$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->updateUserCurrCountry()V

    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->Companion:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    move-result-object p0

    return-object p0
.end method

.method private final updateUserCurrCountry()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->selectCountry:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateNowAdress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->selectCountry:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    if-eqz v2, :cond_2

    iget v1, v2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->C(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;-><init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v0, 0x7f120193

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.choose_country)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public final dismissWithItem(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->selectCountry:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->fragments:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getOnDismissListener()Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->onDismissListener:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;

    return-object v0
.end method

.method public final getSelectCountry()Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->selectCountry:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    return-object v0
.end method

.method public final getTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->titles:Ljava/util/List;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "selectCount"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->selectCountry:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;->bgView:Landroid/view/View;

    new-instance p2, Lcom/guochao/faceshow/mine/view/fragment/c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/fragment/c;-><init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;->contentArea:Landroid/widget/LinearLayout;

    sget-object p2, Lcom/guochao/faceshow/mine/view/fragment/e;->a:Lcom/guochao/faceshow/mine/view/fragment/e;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;->ivClose:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/mine/view/fragment/d;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/fragment/d;-><init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;->save:Landroid/widget/TextView;

    const-string/jumbo p1, "viewBinding.save"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/guochao/faceshow/mine/view/fragment/b;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/mine/view/fragment/b;-><init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    const-string/jumbo p1, "tokens/live/cache/getCountryByState"

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$initView$5;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$initView$5;-><init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-object p1
.end method

.method public final setOnDismissListener(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->onDismissListener:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;

    return-void
.end method

.method public final setSelectCountry(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->selectCountry:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;

    return-void
.end method
