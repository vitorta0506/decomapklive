.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 02\u00020\u00012\u00020\u0002:\u0004/012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u001a\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0012\u0010\"\u001a\u00020\u00192\u0008\u0010#\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010$\u001a\u00020\u00192\u0008\u0010%\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010&\u001a\u00020\u00192\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010\'\u001a\u00020(2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010+\u001a\u00020\u00192\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0002J\u0008\u0010.\u001a\u00020\u0019H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\t\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u00063"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;",
        "Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;",
        "()V",
        "createRoomViewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;",
        "getCreateRoomViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;",
        "createRoomViewModel$delegate",
        "Lkotlin/Lazy;",
        "currentCoverImage",
        "",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;)V",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel$delegate",
        "getCover",
        "",
        "hideKeyboard",
        "token",
        "Landroid/os/IBinder;",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "notifyLocalImage",
        "path",
        "notifyNetworkImage",
        "url",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onViewCreated",
        "view",
        "resetData",
        "model",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "save",
        "BackgroundAdapter",
        "Companion",
        "SavingDialog",
        "TagAdapter",
        "component_liveroom_release"
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static cameraPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static myPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final createRoomViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentCoverImage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;

    const-string v0, ""

    .line 1
    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->cameraPath:Ljava/lang/String;

    .line 2
    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->myPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$viewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->createRoomViewModel$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->currentCoverImage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->initView$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->initView$lambda-10(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic R1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->initView$lambda-7$lambda-5$lambda-4(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->initView$lambda-7$lambda-3(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->initView$lambda-7$lambda-6(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->initView$lambda-8(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->initView$lambda-9(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final getCover()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crop"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->myPath:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->cameraPath:Ljava/lang/String;

    .line 5
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/liveroom_select_cover"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "openLive"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->withBoolean(Ljava/lang/String;Z)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->cameraPath:Ljava/lang/String;

    const-string v2, "cameraPath"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->myPath:Ljava/lang/String;

    const-string v2, "myPath"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final getCreateRoomViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->createRoomViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private final hideKeyboard(Landroid/os/IBinder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static final initView$lambda-10(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->hideKeyboard(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static final initView$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->resetData(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method private static final initView$lambda-7$lambda-3(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->save()V

    return-void
.end method

.method private static final initView$lambda-7$lambda-5$lambda-4(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/MenuItem;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p0, 0x1

    return p0
.end method

.method private static final initView$lambda-7$lambda-6(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getCover()V

    return-void
.end method

.method private static final initView$lambda-8(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->hideKeyboard(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static final initView$lambda-9(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->hideKeyboard(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;->newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    move-result-object v0

    return-object v0
.end method

.method private final resetData(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->info:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->info:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->notifyNetworkImage(Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->tagRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagConfs()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->backgroundRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBackgroundImageUrls()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private final save()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->info:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/guochao/component/liveroom/R$string;->voice_room_room_title_hint:I

    invoke-static {v0, v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v2

    const-string v5, "/app/sensitive_word_filter"

    invoke-virtual {v2, v5}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type com.guochao.lib_service_center.util.service.ISensitiveWordFilter"

    .line 6
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/guochao/lib_service_center/util/service/ISensitiveWordFilter;

    .line 7
    invoke-interface {v2, v0}, Lcom/guochao/lib_service_center/util/service/ISensitiveWordFilter;->checkWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/guochao/component/liveroom/R$string;->live_room_name_violate:I

    invoke-static {v0, v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 10
    :cond_3
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->tagRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    const/4 v2, -0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->currentTag()I

    move-result v1

    goto :goto_3

    :cond_5
    const/4 v1, -0x1

    :goto_3
    if-ne v1, v2, :cond_6

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 14
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 15
    :goto_4
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    .line 17
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->info:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 18
    iget-object v6, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->currentCoverImage:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->backgroundRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    instance-of v8, v7, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;

    if-eqz v8, :cond_7

    check-cast v7, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;

    goto :goto_5

    :cond_7
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->currentBackground()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    :cond_8
    const-string v7, ""

    .line 20
    :cond_9
    invoke-direct {v3, v5, v6, v1, v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;

    invoke-direct {v1, p0, v0, v4}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v3, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->saveVoiceRoomSetting(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
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
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getCreateRoomViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->getVoiceRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/a1;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/a1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getCreateRoomViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->loadVoiceRoomInfo()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, -0x1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object p1

    .line 6
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->tagRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->G(Landroid/content/Context;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b(I)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->a()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object v2, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->save:Landroid/widget/TextView;

    const-string v0, "save"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/guochao/component/voiceliveroom/fragment/u0;

    invoke-direct {v5, p0}, Lcom/guochao/component/voiceliveroom/fragment/u0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 10
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->title:Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;

    iget-object v0, v0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;->gcToolBar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 11
    sget v1, Lcom/guochao/component/liveroom/R$string;->voice_room_setting:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 12
    sget v1, Lcom/guochao/component/liveroom/R$menu;->menu_voice_room_member:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$id;->role:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_setting_close:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 14
    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/z0;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/z0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 16
    iget-object v2, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->coverArea:Landroid/widget/FrameLayout;

    const-string p1, "coverArea"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/guochao/component/voiceliveroom/fragment/v0;

    invoke-direct {v5, p0}, Lcom/guochao/component/voiceliveroom/fragment/v0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->backgroundRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/x0;

    invoke-direct {p2, p0}, Lcom/guochao/component/voiceliveroom/fragment/x0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->tagRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/y0;

    invoke-direct {p2, p0}, Lcom/guochao/component/voiceliveroom/fragment/y0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->contentFL:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/w0;

    invoke-direct {p2, p0}, Lcom/guochao/component/voiceliveroom/fragment/w0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public notifyLocalImage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showLoading$default(Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyNetworkImage(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissLoading()V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "http"

    .line 5
    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 6
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->currentCoverImage:Ljava/lang/String;

    .line 7
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->cover:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 9
    new-instance v1, Ljc/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Ljc/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

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
    .locals 2
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

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->makeDialogLikeActivity()V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    return-void
.end method
