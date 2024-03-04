.class public Lcom/guochao/faceshow/utils/ReportController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/report/service/ReportProxy;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/gc_report"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/ReportController$ReportType;
    }
.end annotation


# static fields
.field private static final PERMISSIONS:[Ljava/lang/String;

.field public static final REPORT_TYPE_COMMENT:Ljava/lang/String; = "3"

.field public static final REPORT_TYPE_DYNAMIC:Ljava/lang/String; = "12"

.field public static final REPORT_TYPE_DYNAMIC_COMMENT:Ljava/lang/String; = "13"

.field public static final REPORT_TYPE_LIVE:Ljava/lang/String; = "2"

.field public static final REPORT_TYPE_MOMENT:Ljava/lang/String; = "4"

.field public static final REPORT_TYPE_ONE_V_ONE:Ljava/lang/String; = "8"

.field public static final REPORT_TYPE_PERSON:Ljava/lang/String; = "5"

.field public static final REPORT_TYPE_TOPIC:Ljava/lang/String; = "12"

.field public static final REPORT_TYPE_TRTC:Ljava/lang/String; = "16"

.field public static final REPORT_TYPE_VIDEO:Ljava/lang/String; = "1"

.field public static final REPORT_TYPE_VOICE_ROOM:Ljava/lang/String; = "17"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/utils/ReportController;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/ReportController;->handleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static addMatrixTimeWatermark(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 8
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const v4, 0x7f06008b

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4}, Lcom/guochao/faceshow/utils/TCUtils;->sp2px(Landroid/content/Context;F)F

    move-result v3

    mul-float v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v3, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p1

    sub-float/2addr v5, v3

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p1

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/guochao/faceshow/utils/TCUtils;->sp2px(Landroid/content/Context;F)F

    move-result v4

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    .line 17
    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-object p0
.end method

.method private static addTimeWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, p0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    const v5, 0x7f06008b

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v4, v5}, Lcom/guochao/faceshow/utils/TCUtils;->sp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v4, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/guochao/faceshow/utils/TCUtils;->sp2px(Landroid/content/Context;F)F

    move-result v5

    add-float/2addr v4, v5

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 16
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-object v1
.end method

.method public static afterBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x3f333333    # 0.7f

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/ReportController;->addMatrixTimeWatermark(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/FileUtil;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pathPhoto"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "account"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "infoId"

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "reportType"

    .line 8
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "16"

    .line 10
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public static afterBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const v0, 0x3f333333    # 0.7f

    .line 12
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/ReportController;->addMatrixTimeWatermark(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/FileUtil;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 15
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pathPhoto"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "account"

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "infoId"

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "reportType"

    .line 19
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    sget-object p2, Lcom/guochao/faceshow/utils/Contants;->SP_KEY_SWITCH_SCREEN_SHOTS:Ljava/lang/String;

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "16"

    .line 22
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private static handleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static report(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/utils/ReportController$ReportType;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static report(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/utils/ReportController$ReportType;
        .end annotation
    .end param

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/ReportController$3;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/guochao/faceshow/utils/ReportController$3;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p6, v1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->startScreenShot(Landroidx/fragment/app/Fragment;Landroid/view/Window;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V

    return-void
.end method

.method public static report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/utils/ReportController$ReportType;
        .end annotation
    .end param

    const-string v0, "8"

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/utils/ReportController$ReportType;
        .end annotation
    .end param

    const-string v0, "8"

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object v0

    new-instance v7, Lcom/guochao/faceshow/utils/ReportController$1;

    move-object v1, v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/utils/ReportController$1;-><init>(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p4, v7}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->startScreenShot(Landroid/app/Activity;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V

    return-void
.end method

.method public static report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/utils/ReportController$ReportType;
        .end annotation
    .end param

    const-string v0, "8"

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 6
    sget v0, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_OFF:I

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object v0

    new-instance v9, Lcom/guochao/faceshow/utils/ReportController$2;

    move-object v1, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/utils/ReportController$2;-><init>(ZZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, p0, p4, v9}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->startScreenShot(Landroid/app/Activity;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V

    return-void
.end method

.method public static reportWithDialogAndActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/utils/ReportController$ReportType;
        .end annotation
    .end param

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/ReportController$4;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/guochao/faceshow/utils/ReportController$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->startScreenShot(Landroidx/fragment/app/Fragment;Landroid/view/Window;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static/range {p1 .. p6}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
