.class public final Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a\n\u0010\u0008\u001a\u00020\t*\u00020\n\u001a\u000c\u0010\u000b\u001a\u00020\t*\u00020\nH\u0002\u001a\n\u0010\u000c\u001a\u00020\u0004*\u00020\r\u001a\n\u0010\u000e\u001a\u00020\u0004*\u00020\u0005\"\u0018\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00018\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "field",
        "Ljava/lang/reflect/Field;",
        "kotlin.jvm.PlatformType",
        "findViewBindingAndSet",
        "",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "fixOrientation",
        "",
        "Landroid/app/Activity;",
        "isTranslucentOrFloating",
        "safeRegisterEventBus",
        "Landroidx/lifecycle/LifecycleOwner;",
        "setStatusBar",
        "lib_core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final field:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/app/Activity;

    const-string v1, "mActivityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static final findViewBindingAndSet(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;Landroid/os/Bundle;)V
    .locals 10
    .param p0    # Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    sget-object v3, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const-string v5, "layoutInflater"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, p0, v0, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->findViewBinding(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "take "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms to find viewBinding for "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCViewBinding"

    .line 7
    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onContentChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 12
    :goto_0
    sget v0, Lcom/guochao/lib_core/R$id;->toolbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    sget v0, Lcom/guochao/lib_core/R$id;->gc_tool_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 14
    new-instance v9, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v4, p0

    .line 16
    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    invoke-virtual {p0, v9}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitleBarController(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;)V

    .line 18
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    goto :goto_1

    .line 19
    :cond_2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/titlebar/EmptyTitleBar;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/titlebar/EmptyTitleBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitleBarController(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;)V

    .line 20
    :goto_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->initView(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public static final fixOrientation(Landroid/app/Activity;)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->isTranslucentOrFloating(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.content.pm.ActivityInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/pm/ActivityInfo;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final isTranslucentOrFloating(Landroid/app/Activity;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$styleable"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Window"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [I

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string v1, "obtainStyledAttributes(styleableRes)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/content/pm/ActivityInfo;

    const-string v3, "isTranslucentOrFloating"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 5
    const-class v6, Landroid/content/res/TypedArray;

    aput-object v6, v5, v0

    .line 6
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move v0, p0

    :catch_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public static final safeRegisterEventBus(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt$safeRegisterEventBus$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt$safeRegisterEventBus$1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static final setStatusBar(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;)V
    .locals 2
    .param p0    # Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->useImmersiveStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->useBlackTextStatusBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setLightStatusBar(Z)V

    :cond_0
    return-void
.end method
