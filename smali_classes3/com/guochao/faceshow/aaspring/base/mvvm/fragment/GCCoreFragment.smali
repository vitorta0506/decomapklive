.class public abstract Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008A\u0010BJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0017J\u0013\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0097\u0002J\u000e\u0010\u001b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001aH\u0017J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0016J\u001a\u0010#\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010$\u001a\u00020\u0005H\u0016J\u0014\u0010&\u001a\u00020\u00052\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u001cH\u0017J\u0008\u0010\'\u001a\u00020\u0005H\u0017J\u0014\u0010(\u001a\u00020\u00052\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u001cH\u0017J\u0008\u0010)\u001a\u00020\u0005H\u0016J\u0008\u0010+\u001a\u00020*H\u0016J\u0008\u0010-\u001a\u00020,H\u0016J\u0008\u0010.\u001a\u00020,H\u0016J\u0008\u00100\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\u0003H\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u00102R\u001a\u00103\u001a\u00020*8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00083\u00105R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u00109\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u001c\u0010;\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010@\u001a\u00020=8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\u00a8\u0006C"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;",
        "",
        "mGravity",
        "",
        "setGravity",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "root",
        "initView",
        "Lcom/guochao/faceshow/aaspring/base/http/client/a;",
        "getHttpClient",
        "",
        "path",
        "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        "post",
        "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;",
        "get",
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;",
        "lastRequest",
        "",
        "toastStr",
        "showToast",
        "resId",
        "Landroidx/fragment/app/FragmentManager;",
        "manager",
        "tag",
        "show",
        "dismiss",
        "msg",
        "showProgressDialog",
        "dismissProgressDialog",
        "showLoading",
        "dismissLoading",
        "",
        "isProgressLoading",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "createCenterDialog",
        "createFullscreenDialog",
        "Landroid/app/Dialog;",
        "createBottomDialog",
        "theme",
        "I",
        "isDialog",
        "Z",
        "()Z",
        "Landroidx/viewbinding/ViewBinding;",
        "vb",
        "Landroidx/viewbinding/ViewBinding;",
        "mFaceCastHttpClient",
        "Lcom/guochao/faceshow/aaspring/base/http/client/a;",
        "mLastRequest",
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;",
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
.field private final isDialog:Z

.field private mFaceCastHttpClient:Lcom/guochao/faceshow/aaspring/base/http/client/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public mGravity:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private vb:Landroidx/viewbinding/ViewBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/16 v0, 0x50

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    return-void
.end method

.method public static synthetic showLoading$default(Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showLoading(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showLoading"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showProgressDialog$default(Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

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

.method public createBottomDialog()Landroid/app/Dialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x50

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public createBottomDialog(I)Landroid/app/Dialog;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/guochao/lib_base/R$color;->mytranparent:I

    .line 7
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 8
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 11
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget v2, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    .line 15
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, -0x2

    .line 16
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_3
    if-nez p1, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_4
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_6
    return-object v0
.end method

.method public createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/guochao/lib_base/R$style;->NormalDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/guochao/lib_base/R$color;->mytranparent:I

    .line 7
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 8
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x3f19999a    # 0.6f

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-object v0
.end method

.method public createFullscreenDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/lib_base/R$style;->NormalDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public dismissLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    :cond_0
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

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissLoading()V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

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
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.GetRequest"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    return-object p1
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mFaceCastHttpClient:Lcom/guochao/faceshow/aaspring/base/http/client/a;

    if-nez v0, :cond_0

    invoke-static {p0}, Lh7/a;->a(Landroidx/fragment/app/Fragment;)Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mFaceCastHttpClient:Lcom/guochao/faceshow/aaspring/base/http/client/a;

    :cond_0
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

.method public getMainDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;->getMainDispatcher(Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
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

    return-void
.end method

.method public isDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->isDialog:Z

    return v0
.end method

.method public isProgressLoading()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->isProgressLoading()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

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

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\u5df2\u5f03\u7528"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->isDialog()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->vb:Landroidx/viewbinding/ViewBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->findViewBinding(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->vb:Landroidx/viewbinding/ViewBinding;

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_2
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.PostRequest"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-object p1
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    :try_start_0
    const-class v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "mDismissed"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "mShownByMe"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v1, "manager.beginTransaction()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public final showLoading()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showLoading$default(Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    return-void
.end method

.method public showLoading(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showLoading(Ljava/lang/CharSequence;)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showLoading(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showToast(I)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toastStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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
