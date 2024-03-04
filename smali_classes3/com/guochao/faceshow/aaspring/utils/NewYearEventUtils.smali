.class public Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils$SvgaCallback;,
        Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils$ParseCallback;
    }
.end annotation


# static fields
.field private static sPlayed:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNewYearEvent(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->shouldShowNewYearEvent(Lcom/guochao/faceshow/aaspring/config/ServerConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget-boolean p1, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->sPlayed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->sPlayed:Z

    .line 4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->obtainSvgaImageView(Landroid/app/Activity;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils$SvgaCallback;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils$SvgaCallback;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    :cond_1
    return-void
.end method

.method private static obtainSvgaImageView(Landroid/app/Activity;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 3

    const v0, 0x7f0a09f1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {v0, p0}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    .line 5
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x1020002

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    const/4 p0, 0x1

    .line 10
    invoke-virtual {v0, p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 11
    invoke-virtual {v0, p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterStop(Z)V

    return-object v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->sPlayed:Z

    return-void
.end method

.method private static shouldShowNewYearEvent(Lcom/guochao/faceshow/aaspring/config/ServerConfig;)Z
    .locals 6
    .param p0    # Lcom/guochao/faceshow/aaspring/config/ServerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsActivity()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsActivity()I

    move-result v2

    if-eq v2, v0, :cond_3

    :cond_2
    if-nez p0, :cond_7

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsActivity()I

    move-result p0

    if-ne p0, v0, :cond_7

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_new_year_event"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 10
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1, p0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 11
    :cond_6
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1, p0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    return v1
.end method
