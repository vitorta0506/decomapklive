.class public final Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u0010\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u0011\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\nJ*\u0010\u0017\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0008H\u0007J\u001a\u0010\u001c\u001a\u00020\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u001d\u001a\u00020\u0015H\u0007R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;",
        "",
        "()V",
        "deviceInfo",
        "",
        "getDeviceInfo",
        "()Ljava/lang/String;",
        "getActionBarHeight",
        "",
        "context",
        "Landroid/content/Context;",
        "getCurrentNavigationBarHeight",
        "activity",
        "Landroid/app/Activity;",
        "getNavigationBarHeight",
        "getNavigationBarHeightIfRoom",
        "getStatusbarHeight",
        "getStatusbarHeightByApiLevel",
        "hideStatusBar",
        "",
        "isNavigationBarShown",
        "",
        "navigationGestureEnabled",
        "setLightStatusBar",
        "window",
        "Landroid/view/Window;",
        "light",
        "statusBarColor",
        "showStatusBar",
        "isBlack",
        "lib_base_release"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getActionBarHeight(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget v1, Landroidx/appcompat/R$attr;->actionBarSize:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string v0, "context.obtainStyledAttr\u2026e\n            )\n        )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static final getNavigationBarHeight(Landroid/content/Context;)I
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.view.Display"

    .line 4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRealMetrics"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 5
    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 6
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, p0

    return v1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_0
    return v2
.end method

.method public static final getStatusbarHeight(Landroid/content/Context;)I
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static final hideStatusBar(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x1504

    .line 2
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static final isNavigationBarShown(Landroid/app/Activity;)Z
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1020030

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final setLightStatusBar(Landroid/content/Context;Landroid/view/Window;Z)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->setLightStatusBar$default(Landroid/content/Context;Landroid/view/Window;ZIILjava/lang/Object;)V

    return-void
.end method

.method public static final setLightStatusBar(Landroid/content/Context;Landroid/view/Window;ZI)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/guochao/lib_base/R$color;->color_app_primary:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method

.method public static synthetic setLightStatusBar$default(Landroid/content/Context;Landroid/view/Window;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->setLightStatusBar(Landroid/content/Context;Landroid/view/Window;ZI)V

    return-void
.end method

.method public static final showStatusBar(Landroid/app/Activity;Z)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x1500

    if-eqz p1, :cond_2

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    const/16 v0, 0x3500

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getCurrentNavigationBarHeight(Landroid/app/Activity;)I
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->isNavigationBarShown(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getDeviceInfo()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "navigationbar_is_min"

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "HUAWEI"

    const/4 v3, 0x1

    .line 3
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "navigation_gesture_on"

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "XIAOMI"

    .line 4
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "force_fsg_nav_bar"

    goto :goto_1

    :cond_2
    const-string v1, "VIVO"

    .line 5
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    move-object v2, v4

    goto :goto_1

    :cond_3
    const-string v1, "OPPO"

    .line 6
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v2
.end method

.method public final getNavigationBarHeightIfRoom(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->navigationGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getCurrentNavigationBarHeight(Landroid/app/Activity;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getStatusbarHeightByApiLevel(Landroid/content/Context;)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final navigationGestureEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
