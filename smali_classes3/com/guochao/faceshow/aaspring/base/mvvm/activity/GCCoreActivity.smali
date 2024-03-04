.class public abstract Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
.implements Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;
.implements Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008c\u0010dJ\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0017J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\u0008H\u0014J\u001a\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0017J\u0012\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0017J\u000e\u0010\u001d\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001cH\u0016J\u0012\u0010\u001f\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006H&J\u0012\u0010\"\u001a\u00020\u00142\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010%\u001a\u00020\u00082\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u0010H\u0016J\u000e\u0010(\u001a\u00020\'2\u0006\u0010\u0017\u001a\u00020\u0016J\u0018\u0010-\u001a\u00020\u00082\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+H\u0016J\u0010\u0010/\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0014H\u0017J\u0010\u00101\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u0014H\u0016J\u0008\u00102\u001a\u00020\u0014H\u0016J\u0008\u00103\u001a\u00020\u0014H\u0016J\u0014\u00105\u001a\u00020\u00082\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010#H\u0017J\u0008\u00106\u001a\u00020\u0008H\u0017J\u0014\u00107\u001a\u00020\u00082\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010#H\u0017J\u0008\u00108\u001a\u00020\u0008H\u0016J\u0008\u00109\u001a\u00020\u0014H\u0016J\u0008\u0010:\u001a\u00020\u0014H\u0016J\u0019\u0010<\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010;*\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0012\u0010?\u001a\u00020\u00082\u0008\u0010>\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010?\u001a\u00020\u00082\u0006\u0010@\u001a\u00020\u0010H\u0016J\u001a\u0010B\u001a\u00020\u00082\u0008\u0010A\u001a\u0004\u0018\u00010 2\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u0010F\u001a\u00020\u00082\u0006\u0010,\u001a\u00020C2\u0008\u0010E\u001a\u0004\u0018\u00010DR$\u0010H\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001c\u0010\u001d\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010NR$\u0010O\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR$\u0010V\u001a\u0004\u0018\u00010U8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R\u0018\u0010]\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0014\u0010b\u001a\u00020_8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010a\u00a8\u0006e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;",
        "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onContentChanged",
        "Lcom/guochao/faceshow/aaspring/base/http/client/a;",
        "getHttpClient",
        "Landroid/content/res/Resources;",
        "getResources",
        "onDestroy",
        "",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "event",
        "",
        "onKeyDown",
        "",
        "path",
        "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        "post",
        "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;",
        "get",
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;",
        "lastRequest",
        "savedInstanceSate",
        "initView",
        "Landroid/view/MenuItem;",
        "item",
        "onMenuItemClick",
        "",
        "title",
        "setTitle",
        "titleId",
        "Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;",
        "navigate",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;",
        "titleBar",
        "Landroid/view/View;",
        "view",
        "onNavigationButtonClicked",
        "light",
        "setLightStatusBar",
        "black",
        "setStatusBarTextBlack",
        "useImmersiveStatusBar",
        "useBlackTextStatusBar",
        "msg",
        "showProgressDialog",
        "dismissProgressDialog",
        "showLoading",
        "dismissLoading",
        "isProgressLoading",
        "shouldShowLiveFloatWindow",
        "T",
        "getActivity",
        "()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "toastStr",
        "showToast",
        "resId",
        "menuItem",
        "onMenuClicked",
        "Landroid/view/ViewGroup;",
        "Landroid/view/View$OnClickListener;",
        "clickListener",
        "showNetErrorView",
        "Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;",
        "onBackButtonPressedHandler",
        "Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;",
        "getOnBackButtonPressedHandler",
        "()Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;",
        "setOnBackButtonPressedHandler",
        "(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V",
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;",
        "titleBarController",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;",
        "getTitleBarController",
        "()Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;",
        "setTitleBarController",
        "(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;)V",
        "Lbutterknife/Unbinder;",
        "mUnbinder",
        "Lbutterknife/Unbinder;",
        "getMUnbinder",
        "()Lbutterknife/Unbinder;",
        "setMUnbinder",
        "(Lbutterknife/Unbinder;)V",
        "Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;",
        "loadingDialog",
        "Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getLifecycleSupportedScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "lifecycleSupportedScope",
        "<init>",
        "()V",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private lastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loadingDialog:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mUnbinder:Lbutterknife/Unbinder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onBackButtonPressedHandler:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private titleBarController:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic showLoading$default(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showLoading(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showLoading"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showProgressDialog$default(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showProgressDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asyncCPU(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->asyncCPU(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asyncCPUG(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->asyncCPUG(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asyncIO(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->asyncIO(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asyncIOG(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->asyncIOG(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asyncMain(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->asyncMain(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asyncMainG(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->asyncMainG(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dismissLoading()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->loadingDialog:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "\u66ff\u6362\u65b9\u6cd5"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dismissLoading"
            imports = {}
        .end subannotation
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\u5df2\u5f03\u7528"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->c(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->lastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.GetRequest"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    return-object p1
.end method

.method public getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "null cannot be cast to non-null type T of com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity.getActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCpuDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->getCpuDispatcher(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->getGlobalScope(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\u5df2\u5f03\u7528"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v0

    return-object v0
.end method

.method public getIoDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->getIoDispatcher(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleSupportedScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method protected final getMUnbinder()Lbutterknife/Unbinder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->mUnbinder:Lbutterknife/Unbinder;

    return-object v0
.end method

.method public getMainDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->getMainDispatcher(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getOnBackButtonPressedHandler()Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onBackButtonPressedHandler:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    const-string v1, "resources"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitleBarController()Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->titleBarController:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;

    return-object v0
.end method

.method public abstract initView(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public isProgressLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->loadingDialog:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastRequest()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->lastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-object v0
.end method

.method public launchCPU(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->launchCPU(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public launchCPUG(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->launchCPUG(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->launchIO(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public launchIOG(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->launchIOG(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public launchMain(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->launchMain(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public launchMainG(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->launchMainG(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final navigate(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onContentChanged()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    .line 2
    sget v0, Lcom/guochao/lib_core/R$id;->gc_tool_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;

    .line 5
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    move-object v6, p0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;)V

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->titleBarController:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;

    .line 8
    :cond_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->mUnbinder:Lbutterknife/Unbinder;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/a;->e(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->fixOrientation(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->setStatusBar(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;)V

    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->findViewBindingAndSet(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onBackButtonPressedHandler:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onBackButtonPressedHandler:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;->onBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onNavigationButtonClicked(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "titleBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\u5df2\u5f03\u7528"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->c(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->lastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.PostRequest"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-object p1
.end method

.method public setLightStatusBar(Z)V
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\u5df2\u5f03\u7528"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setStatusBarTextBlack"
            imports = {}
        .end subannotation
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v0, "window"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->setLightStatusBar$default(Landroid/content/Context;Landroid/view/Window;ZIILjava/lang/Object;)V

    return-void
.end method

.method protected final setMUnbinder(Lbutterknife/Unbinder;)V
    .locals 0
    .param p1    # Lbutterknife/Unbinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->mUnbinder:Lbutterknife/Unbinder;

    return-void
.end method

.method public final setOnBackButtonPressedHandler(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onBackButtonPressedHandler:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    return-void
.end method

.method public setStatusBarTextBlack(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setLightStatusBar(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->titleBarController:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->titleBarController:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTitleBarController(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->titleBarController:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final showLoading()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showLoading$default(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    return-void
.end method

.method public showLoading(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->loadingDialog:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    if-nez p1, :cond_1

    new-instance p1, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->loadingDialog:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final showNetErrorView(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/guochao/lib_core/R$layout;->layout_net_error:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 5
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "\u66ff\u6362\u65b9\u6cd5"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "showLoading"
            imports = {}
        .end subannotation
    .end annotation

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showLoading(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showToast(I)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    :cond_1
    :goto_0
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    :cond_1
    :goto_0
    return-void
.end method

.method public useBlackTextStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useImmersiveStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public withCPU(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->withCPU(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withIO(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->withIO(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withMain(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->withMain(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withNonCancellable(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->withNonCancellable(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
