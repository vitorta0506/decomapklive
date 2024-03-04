.class public final Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010#\u001a\u00020$H\u0002J\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010)\u001a\u00020$2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u0008\u0010,\u001a\u00020$H\u0002J\u0008\u0010-\u001a\u00020$H\u0002J\u0008\u0010.\u001a\u00020$H\u0002J\u0012\u0010/\u001a\u00020$2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0018\u00102\u001a\u00020&2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002J\u0008\u00106\u001a\u00020$H\u0002J\"\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\u00152\u0006\u00109\u001a\u00020\u00152\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0014J\u0012\u0010<\u001a\u00020$2\u0008\u0010=\u001a\u0004\u0018\u000101H\u0014J\u0012\u0010>\u001a\u00020$2\u0008\u0010?\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010@\u001a\u00020$2\u0006\u00108\u001a\u00020\u0015H\u0002J\u0008\u0010A\u001a\u00020$H\u0002J\u000c\u0010B\u001a\u00020$*\u00020\u0018H\u0002J\u000c\u0010C\u001a\u00020$*\u00020DH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0019\u0010\u0004\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006E"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;",
        "()V",
        "agreementWebViewDialog",
        "Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;",
        "country_num",
        "",
        "guildId",
        "languageList",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
        "liveVideoAdapter",
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;",
        "Landroid/net/Uri;",
        "logo",
        "phone",
        "pictureAdapter",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "signType",
        "",
        "videoAdapter",
        "viewBinding",
        "Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkApplySignEnabled",
        "",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "hideKeyboard",
        "token",
        "Landroid/os/IBinder;",
        "initLiveVideoAdapter",
        "initPictureAdapter",
        "initVideoAdapter",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "isShouldHideKeyboard",
        "v",
        "Landroid/view/View;",
        "event",
        "liveDataObserve",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "onModelUpdate",
        "model",
        "selectVideo",
        "setClickEnvent",
        "initCountry",
        "noWhiteSpace",
        "Landroid/widget/EditText;",
        "component_guild_release"
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
.field private agreementWebViewDialog:Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private country_num:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private guildId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final languageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private liveVideoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private logo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private signType:I

.field private videoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->languageList:Ljava/util/ArrayList;

    .line 3
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->viewModel$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->phone:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$checkApplySignEnabled(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->checkApplySignEnabled()V

    return-void
.end method

.method public static final synthetic access$getCountry_num$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLogo$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setCountry_num$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLogo$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    return-void
.end method

.method private final checkApplySignEnabled()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->applySign:Landroid/widget/Button;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->isPicListEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->emailNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->whatsappNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->masteryOfLanguage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getVideoRecordScreenLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->ivAgreement:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 8
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-12(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-11(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-17(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final hideKeyboard(Landroid/os/IBinder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveDataObserve$lambda-20(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final initCountry(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    const-string v4, "US"

    if-lt v0, v2, :cond_2

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const-string v2, "getLocales(Resources.getSystem().configuration)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    move-object v3, v4

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 6
    :cond_4
    :goto_2
    new-instance v0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v0}, Lva/a;->b(Landroid/content/Context;Lva/a$d;)V

    goto :goto_3

    .line 8
    :cond_5
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->etPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->etPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    invoke-static {p0}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    sget v2, Lcom/guochao/faceshow/guild/R$mipmap;->ic_earth:I

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    .line 12
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iget-object v2, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->rvCountry:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->tvCountry:Landroid/widget/TextView;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "+%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private final initLiveVideoAdapter()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getOtherVideoUrlList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    sget v1, Lcom/guochao/faceshow/guild/R$layout;->guild_upload_data_cover:I

    .line 3
    new-instance v2, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveVideoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->liveRecordScreen:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->liveRecordScreen:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveVideoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private final initPictureAdapter()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->addAddPicButton()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getSelectPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    sget v1, Lcom/guochao/faceshow/guild/R$layout;->guild_upload_picture_item:I

    .line 4
    new-instance v2, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initPictureAdapter$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initPictureAdapter$1;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->pictureList:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->pictureList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private final initVideoAdapter()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getOtherVideoUrlList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    sget v1, Lcom/guochao/faceshow/guild/R$layout;->guild_upload_data_cover:I

    .line 3
    new-instance v2, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initVideoAdapter$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initVideoAdapter$1;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->videoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->otherVideoList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->otherVideoList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->videoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final initView$lambda-4$lambda-3(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/view/ObservableScrollView;IIII)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->hideKeyboard(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private final isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpg-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-gez p1, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic k0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-15(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveDataObserve$lambda-22(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final liveDataObserve()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getVideoRecordScreenLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/c;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getOtherVideoUrlList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/m;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/m;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getSelectPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/b;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getApplyResultLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/l;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final liveDataObserve$lambda-19(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveVideoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getVideoRecordScreenLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->uploadLiveRecordScreen:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->uploadLiveRecordScreen:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->checkApplySignEnabled()V

    return-void
.end method

.method private static final liveDataObserve$lambda-20(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->videoAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getOtherVideoUrlList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->uploadOtherVideo:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->uploadOtherVideo:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private static final liveDataObserve$lambda-22(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->checkApplySignEnabled()V

    :cond_1
    return-void
.end method

.method private static final liveDataObserve$lambda-24(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/Boolean;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/guochao/faceshow/guild/R$string;->feedback_feedback_success:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.feedback_feedback_success)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lcom/guochao/faceshow/guild/R$string;->signed_fail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.signed_fail)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public static synthetic m0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveDataObserve$lambda-19(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic n0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-6(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method

.method private final noWhiteSpace(Landroid/widget/EditText;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$noWhiteSpace$1;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$noWhiteSpace$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$noWhiteSpace$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static synthetic o0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-7(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-9(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/view/ObservableScrollView;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->initView$lambda-4$lambda-3(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/view/ObservableScrollView;IIII)V

    return-void
.end method

.method public static synthetic r0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent$lambda-18$lambda-10(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveDataObserve$lambda-24(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final selectVideo(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mode"

    const/16 v2, 0x66

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "max"

    const/16 v2, 0x3c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    const-string v2, "/app/photoActivity"

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->withParams(Landroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->requestCode(I)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    return-void
.end method

.method private final setClickEnvent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->uploadLiveRecordScreen:Landroid/widget/TextView;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/activity/e;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->uploadOtherVideo:Landroid/widget/TextView;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/f;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/activity/f;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->applySign:Landroid/widget/Button;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/activity/g;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->llCountryHide:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/h;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/activity/h;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->llMasteryOfLanguage:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/activity/a;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->ivAgreement:Landroid/widget/ImageView;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/j;

    invoke-direct {v2, v0, p0}, Lcom/guochao/faceshow/guild/activity/j;-><init>(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->agreementTip:Landroid/widget/TextView;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/i;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/guild/activity/i;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->applySign:Landroid/widget/Button;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/k;

    invoke-direct {v2, v0, p0}, Lcom/guochao/faceshow/guild/activity/k;-><init>(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-10(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    const-string v0, "/ugc/AreaSelectActivity"

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getCOUNTRY()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->requestCode(I)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-11(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lva/b;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->languageList:Ljava/util/ArrayList;

    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "result_language"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    const-string v1, "/ugc/ChooseLanguageActivity"

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->withParams(Landroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getLANGUAGE()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->requestCode(I)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-12(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->ivAgreement:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->ivAgreement:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->isSelected()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    invoke-direct {p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->checkApplySignEnabled()V

    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-15(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->agreementWebViewDialog:Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;

    const-string p2, "AgreementWebViewDialog"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;

    invoke-direct {p1}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->agreementWebViewDialog:Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-17(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this_apply"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->emailNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    if-nez v3, :cond_1

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_0

    const/4 v3, 0x2

    const-string v8, "@"

    invoke-static {v2, v8, v7, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    :cond_0
    sget v0, Lcom/guochao/faceshow/guild/R$string;->email_phone_input_hint:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/guochao/faceshow/guild/R$string;->email:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.email\u2026etString(R.string.email))"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 6
    :cond_1
    iget-object v3, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->etPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_2

    .line 8
    sget v0, Lcom/guochao/faceshow/guild/R$string;->email_phone_input_hint:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/guochao/faceshow/guild/R$string;->phone_number:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.email\u2026g(R.string.phone_number))"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 10
    :cond_2
    iget-object v3, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->whatsappNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_3

    .line 12
    sget v0, Lcom/guochao/faceshow/guild/R$string;->account_input_hint:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/guochao/faceshow/guild/R$string;->WhatsApp:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.accou\u2026tring(R.string.WhatsApp))"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 14
    :cond_3
    iget-object v3, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->facebookNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_4

    .line 16
    sget v0, Lcom/guochao/faceshow/guild/R$string;->account_input_hint:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/guochao/faceshow/guild/R$string;->Facebook:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.accou\u2026tring(R.string.Facebook))"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 18
    :cond_4
    iget-object v3, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->instagramNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 19
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_5

    .line 20
    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 22
    sget v0, Lcom/guochao/faceshow/guild/R$string;->account_input_hint:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/guochao/faceshow/guild/R$string;->Instagram:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.accou\u2026ring(R.string.Instagram))"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 24
    :cond_5
    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->invitationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 25
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v0, v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->languageList:Ljava/util/ArrayList;

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    .line 28
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "it.id"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-wide/16 v5, 0x0

    .line 29
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->monthFlow:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-wide v14, v5

    .line 30
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->fansNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v16, v0

    goto :goto_1

    :catch_1
    const/16 v16, 0x0

    .line 31
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->outSide:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 32
    :try_start_2
    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_7

    .line 34
    sget v0, Lcom/guochao/faceshow/guild/R$string;->outside_the_station_hint:I

    const/4 v3, 0x4

    invoke-static {v1, v0, v7, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 35
    :catch_2
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    .line 36
    iget-object v3, v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    .line 37
    iget-object v7, v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->guildId:Ljava/lang/String;

    .line 38
    iget v6, v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->signType:I

    move-object/from16 v1, p1

    move-object v4, v8

    move-object v5, v9

    move/from16 v18, v6

    move-object v6, v10

    move-object v9, v7

    move-object v7, v11

    move-object v8, v13

    move/from16 v10, v18

    move-object v11, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    .line 39
    invoke-virtual/range {v0 .. v15}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;D)V

    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-6(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getVIDEO_RECORD_SCREEN()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->selectVideo(I)V

    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-7(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getOTHER_VIDEO()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->selectVideo(I)V

    return-void
.end method

.method private static final setClickEnvent$lambda-18$lambda-9(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->hideKeyboard(Landroid/os/IBinder;)V

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/guochao/faceshow/guild/R$string;->apply_contract:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->setClickEnvent()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->initLiveVideoAdapter()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->initVideoAdapter()V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->initPictureAdapter()V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->liveDataObserve()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->phone:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "logo"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStr(GCApplication.app(), \"logo\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "country_num"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStr(GCApplication.app(), \"country_num\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->etPhone:Landroid/widget/EditText;

    sget v1, Lcom/guochao/faceshow/guild/R$string;->guild_input_phone_account:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->emailNumber:Landroid/widget/EditText;

    .line 13
    sget v1, Lcom/guochao/faceshow/guild/R$string;->guild_input_all_account:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->email:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->whatsappNumber:Landroid/widget/EditText;

    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    sget v4, Lcom/guochao/faceshow/guild/R$string;->WhatsApp:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->facebookNumber:Landroid/widget/EditText;

    new-array v3, v2, [Ljava/lang/Object;

    .line 19
    sget v4, Lcom/guochao/faceshow/guild/R$string;->Facebook:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->instagramNumber:Landroid/widget/EditText;

    new-array v3, v2, [Ljava/lang/Object;

    .line 22
    sget v4, Lcom/guochao/faceshow/guild/R$string;->Instagram:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->invitationCode:Landroid/widget/EditText;

    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    sget v3, Lcom/guochao/faceshow/guild/R$string;->invitation_code:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->initCountry(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V

    .line 28
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->emailNumber:Landroid/widget/EditText;

    const-string v1, "emailNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initView$lambda-4$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initView$lambda-4$$inlined$addTextChangedListener$default$1;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->whatsappNumber:Landroid/widget/EditText;

    const-string/jumbo v1, "whatsappNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initView$lambda-4$$inlined$addTextChangedListener$default$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initView$lambda-4$$inlined$addTextChangedListener$default$2;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 34
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->scrollVeiw:Lcom/guochao/faceshow/guild/view/ObservableScrollView;

    new-instance v0, Lcom/guochao/faceshow/guild/activity/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/guild/activity/d;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/guild/view/ObservableScrollView;->setScrollViewListener(Lcom/guochao/faceshow/guild/view/ObservableScrollView$a;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v0, :cond_5

    const/16 v0, 0x3eb

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->addAddPicButton()V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getLANGUAGE()I

    move-result p2

    if-ne p1, p2, :cond_c

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "result_language"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->languageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->languageList:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->languageList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    .line 11
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->getLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->masteryOfLanguage:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x3

    invoke-virtual {p1, v1, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->masteryOfLanguage:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->checkApplySignEnabled()V

    goto/16 :goto_2

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getVIDEO_RECORD_SCREEN()I

    move-result p2

    const-string/jumbo v0, "uri"

    const-string v4, "null cannot be cast to non-null type android.net.Uri"

    if-ne p1, p2, :cond_7

    if-eqz p3, :cond_6

    .line 18
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :cond_6
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/net/Uri;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->addVideoRecordScreenLive(Landroid/net/Uri;)V

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->checkApplySignEnabled()V

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getOTHER_VIDEO()I

    move-result p2

    if-ne p1, p2, :cond_9

    if-eqz p3, :cond_8

    .line 22
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :cond_8
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/net/Uri;

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->addOtherVideo(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getPICTURE()I

    move-result p2

    if-ne p1, p2, :cond_a

    if-eqz p3, :cond_c

    .line 25
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string p2, "media"

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->addPicture(Ljava/util/ArrayList;)V

    .line 28
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->checkApplySignEnabled()V

    goto :goto_2

    .line 29
    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->getCOUNTRY()I

    move-result p2

    if-ne p1, p2, :cond_c

    if-eqz p3, :cond_b

    const-string p1, "country_num"

    .line 30
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 31
    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->tvCountry:Landroid/widget/TextView;

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->country_num:Ljava/lang/String;

    aput-object v0, p2, v1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "+%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    if-eqz p3, :cond_c

    const-string p1, "logo"

    .line 33
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 34
    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    .line 35
    invoke-static {p0}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 36
    sget p2, Lcom/guochao/faceshow/guild/R$mipmap;->ic_earth:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 37
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->rvCountry:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_c
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "guildId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->guildId:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->etPhone:Landroid/widget/EditText;

    const-string v1, "etPhone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->noWhiteSpace(Landroid/widget/EditText;)V

    .line 6
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->emailNumber:Landroid/widget/EditText;

    const-string v1, "emailNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->noWhiteSpace(Landroid/widget/EditText;)V

    .line 7
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->whatsappNumber:Landroid/widget/EditText;

    const-string/jumbo v1, "whatsappNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->noWhiteSpace(Landroid/widget/EditText;)V

    .line 8
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->facebookNumber:Landroid/widget/EditText;

    const-string v1, "facebookNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->noWhiteSpace(Landroid/widget/EditText;)V

    .line 9
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->instagramNumber:Landroid/widget/EditText;

    const-string v1, "instagramNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->noWhiteSpace(Landroid/widget/EditText;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->guildId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->textView15:Landroid/widget/TextView;

    sget v3, Lcom/guochao/faceshow/guild/R$string;->commit_platform_tips:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->invitationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 13
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->requiredTextView8:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 14
    :cond_3
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->textView15:Landroid/widget/TextView;

    sget v1, Lcom/guochao/faceshow/guild/R$string;->commit_tips:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->requiredTextView8:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->invitationCode:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v1, 0x0

    .line 17
    :goto_3
    iput v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->signType:I

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    return-void
.end method
