.class public final Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;",
        "Landroid/app/Service;",
        "()V",
        "createNotification",
        "Landroid/app/Notification;",
        "onBind",
        "Landroid/os/IBinder;",
        "p0",
        "Landroid/content/Intent;",
        "onDestroy",
        "",
        "onStartCommand",
        "",
        "intent",
        "flags",
        "startId",
        "Companion",
        "component_f2f_match_release"
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
.field public static final Companion:Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;->Companion:Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final createNotification()Landroid/app/Notification;
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "12"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "BuzzCast"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "1V1 Matching"

    .line 3
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$drawable;->jpush_notification_icon:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6
    sget v2, Lcom/guochao/lib_base/R$mipmap;->ic_launcher:I

    .line 7
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "fromService"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intent(this, F2fMatchAct\u2026xtra(\"fromService\", true)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x24000000

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v2

    const/16 v3, 0x64

    .line 12
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "notification"

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0xf423f

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-object v0
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;->Companion:Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method public static final stop(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;->Companion:Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;->stop(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    const v1, 0xf423f

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
