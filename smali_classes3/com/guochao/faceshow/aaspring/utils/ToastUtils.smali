.class public final Lcom/guochao/faceshow/aaspring/utils/ToastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/ToastUtils$SafelyHandlerWarpper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001#B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J*\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0016H\u0002J,\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0016H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0007J(\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u00162\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J2\u0010 \u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0016H\u0007J(\u0010 \u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010!\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0016H\u0007J2\u0010\"\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0016H\u0007J(\u0010\"\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010!\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0016H\u0007R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/ToastUtils;",
        "",
        "()V",
        "isMainThread",
        "",
        "()Z",
        "sField_TN",
        "Ljava/lang/reflect/Field;",
        "sField_TN_Handler",
        "compatMode",
        "debug",
        "Landroid/widget/Toast;",
        "msg",
        "",
        "debugToast",
        "context",
        "Landroid/content/Context;",
        "hook",
        "",
        "toast",
        "realShowLiveToast",
        "drawableId",
        "",
        "message",
        "duration",
        "realShowToast",
        "gravity",
        "showCenterToast",
        "iconId",
        "showLiveToast",
        "str",
        "",
        "showMVPToast",
        "resId",
        "showToast",
        "SafelyHandlerWarpper",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sField_TN:Ljava/lang/reflect/Field;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static sField_TN_Handler:Ljava/lang/reflect/Field;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    .line 2
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->sField_TN:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->sField_TN:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "mHandler"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->sField_TN_Handler:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showLiveToast$lambda-1(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;ILjava/lang/CharSequence;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$lambda-0(Landroid/content/Context;ILjava/lang/CharSequence;I)V

    return-void
.end method

.method private final compatMode()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "INE-AL00"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "moto g(7) power"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XT1710-08"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final hook(Landroid/widget/Toast;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->sField_TN:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->sField_TN_Handler:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.Handler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Handler;

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->sField_TN_Handler:Ljava/lang/reflect/Field;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/ToastUtils$SafelyHandlerWarpper;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils$SafelyHandlerWarpper;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final realShowLiveToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3
    sget v2, Lcom/guochao/lib_base/R$layout;->transient_notification:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 5
    invoke-static {v2, p2}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    .line 6
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x43480000    # 200.0f

    .line 7
    invoke-static {p1, v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    .line 8
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x41a80000    # 21.0f

    .line 9
    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41b80000    # 23.0f

    .line 10
    invoke-static {p1, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    .line 11
    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 12
    invoke-static {p1, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    .line 13
    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 15
    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 16
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const v3, 0x106000b

    .line 17
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 18
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v0, p4}, Landroid/widget/Toast;->setDuration(I)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 p1, 0x11

    .line 22
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 p2, 0x30

    int-to-double v1, p1

    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    mul-double v1, v1, v3

    const/16 p1, 0x64

    int-to-double v3, p1

    div-double/2addr v1, v3

    double-to-int p1, v1

    .line 24
    invoke-virtual {v0, p2, p3, p1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0, p1, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 26
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-ne p1, p2, :cond_2

    .line 27
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->hook(Landroid/widget/Toast;)V

    .line 28
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private final realShowToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget v1, Lcom/guochao/lib_base/R$layout;->transient_notification:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x102000b

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 p1, 0x11

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 p3, 0x0

    if-ne p4, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    int-to-double p1, p2

    const-wide/high16 v1, 0x402a000000000000L    # 13.0

    mul-double p1, p1, v1

    const/16 v1, 0x64

    int-to-double v1, v1

    div-double/2addr p1, v1

    double-to-int p1, p1

    .line 11
    :goto_0
    invoke-virtual {v0, p4, p3, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-ne p1, p2, :cond_2

    .line 13
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->hook(Landroid/widget/Toast;)V

    .line 14
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method static synthetic realShowToast$default(Lcom/guochao/faceshow/aaspring/utils/ToastUtils;Landroid/content/Context;ILjava/lang/CharSequence;IILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/16 p4, 0x30

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->realShowToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showCenterToast(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->compatMode()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v3}, Lob/m;->e(I)V

    .line 3
    invoke-static {p2}, Lob/m;->l(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    .line 5
    :cond_1
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 7
    sget v4, Lcom/guochao/lib_base/R$layout;->layout_center_toast:I

    invoke-virtual {p0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v2, 0x102000b

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget p2, Lcom/guochao/lib_base/R$id;->icon:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 13
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x0

    .line 15
    invoke-virtual {v1, v3, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 16
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x19

    if-ne p0, p1, :cond_2

    .line 17
    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->hook(Landroid/widget/Toast;)V

    .line 18
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public static final showCenterToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->compatMode()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-eqz v1, :cond_0

    .line 20
    invoke-static {v3}, Lob/m;->e(I)V

    .line 21
    invoke-static {p1}, Lob/m;->l(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    .line 23
    :cond_1
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 25
    sget v4, Lcom/guochao/lib_base/R$layout;->transient_notification:I

    invoke-virtual {p0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v2, 0x102000b

    .line 26
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 29
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 30
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x0

    .line 31
    invoke-virtual {v1, v3, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 32
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x19

    if-ne p0, p1, :cond_2

    .line 33
    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->hook(Landroid/widget/Toast;)V

    .line 34
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public static final showLiveToast(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "str"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->realShowLiveToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/s;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static final showLiveToast$lambda-1(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$str"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->realShowLiveToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method

.method public static final showMVPToast(I)Landroid/widget/Toast;
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, p0, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showMVPToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showMVPToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 p0, 0x43520000    # 210.0f

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    invoke-static {p2, v0, p0}, Lob/m;->f(III)V

    .line 2
    invoke-static {p1}, Lob/m;->j(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final showMVPToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showMVPToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showMVPToast(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p0, 0x43520000    # 210.0f

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p3, p2, p0}, Lob/m;->f(III)V

    .line 4
    invoke-static {p1}, Lob/m;->l(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final showMVPToast(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 7
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showMVPToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showMVPToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    const/16 p3, 0x30

    .line 2
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showToast(I)Landroid/widget/Toast;
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, p0, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    :cond_0
    move-object v0, p0

    .line 2
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->compatMode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 p2, 0x30

    const/4 v0, 0x0

    int-to-double v1, p0

    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    mul-double v1, v1, v3

    const/16 p0, 0x64

    int-to-double v3, p0

    div-double/2addr v1, v3

    double-to-int p0, v1

    .line 4
    invoke-static {p2, v0, p0}, Lob/m;->f(III)V

    .line 5
    invoke-static {p1}, Lob/m;->j(I)V

    const/4 p0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p0, "ctx!!.getString(resId)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->compatMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 p2, 0x0

    int-to-double v0, p0

    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    mul-double v0, v0, v3

    const/16 p0, 0x64

    int-to-double v3, p0

    div-double/2addr v0, v3

    double-to-int p0, v0

    .line 9
    invoke-static {p3, p2, p0}, Lob/m;->f(III)V

    .line 10
    invoke-static {p1}, Lob/m;->l(Ljava/lang/CharSequence;)V

    return-object v2

    .line 11
    :cond_0
    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->realShowToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/r;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/guochao/faceshow/aaspring/utils/r;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v2
.end method

.method public static final showToast(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 7
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    const/16 p3, 0x30

    .line 2
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method private static final showToast$lambda-0(Landroid/content/Context;ILjava/lang/CharSequence;I)V
    .locals 1

    const-string v0, "$msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ToastUtils;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->realShowToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method
