.class public abstract Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JA\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH \u00a2\u0006\u0002\u0008\rJ\"\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;",
        "",
        "()V",
        "onShowNotification",
        "",
        "context",
        "Landroid/content/Context;",
        "map",
        "",
        "",
        "largeIcon",
        "Landroid/graphics/Bitmap;",
        "largeImage",
        "onShowNotification$app_GooglePlayRelease",
        "showNotification",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification$lambda-3(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic onShowNotification$app_GooglePlayRelease$default(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->onShowNotification$app_GooglePlayRelease(Landroid/content/Context;Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onShowNotification"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final showNotification$lambda-3(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Ljava/util/Map;)V
    .locals 8

    const-string v0, "$largeIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$map"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v0, 0x2

    const/4 v7, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_0

    const/high16 v1, 0x42800000    # 64.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/h;->d()Lcom/bumptech/glide/g;

    move-result-object v4

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4, p0}, Lcom/bumptech/glide/g;->Y0(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1, v1}, Lcom/bumptech/glide/g;->I0(II)Lcom/bumptech/glide/request/d;

    move-result-object p0

    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->d()Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/g;->Y0(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p0

    const/high16 p2, -0x80000000

    .line 13
    invoke-virtual {p0, p2, p2}, Lcom/bumptech/glide/g;->I0(II)Lcom/bumptech/glide/request/d;

    move-result-object p0

    .line 14
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-interface {p0, v2, v3, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_2

    .line 16
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 19
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 21
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_2
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "NotificationDisplayer"

    const-string v1, "showNotification: "

    .line 26
    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    :goto_0
    invoke-static {p0, v7, v0, v7}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void

    :goto_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p2, v7, v0, v7}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    throw p0
.end method

.method private static final showNotification$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lageIconBitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lageImageBitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Bitmap;

    iget-object p4, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->onShowNotification$app_GooglePlayRelease(Landroid/content/Context;Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public abstract onShowNotification$app_GooglePlayRelease(Landroid/content/Context;Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation
.end method

.method public final showNotification(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "large_img"

    .line 1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "icon"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    .line 5
    invoke-static/range {v5 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->onShowNotification$app_GooglePlayRelease$default(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayerKt;->getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;

    move-object v1, v7

    move-object v3, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
