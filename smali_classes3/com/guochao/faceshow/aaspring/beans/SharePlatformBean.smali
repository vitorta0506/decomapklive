.class public Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$ShareType;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Friend;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SnapChat;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Copy;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$QZone;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SinaWeibo;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WechatMoments;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Wechat;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Youtube;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;,
        Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;
    }
.end annotation


# static fields
.field public static final FacebookPackage:Ljava/lang/String; = "com.facebook.katana"

.field public static final IMAGE_TYPE:I = 0x2

.field public static final InstagramPackage:Ljava/lang/String; = "com.instagram.android"

.field public static final QQ2Package:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final QQPackage:Ljava/lang/String; = "com.tencent.mqq"

.field public static final SnapChatPackage:Ljava/lang/String; = "com.snapchat.android"

.field public static final TEXT_TYPE:I = 0x3

.field public static final TwitterPackage:Ljava/lang/String; = "com.twitter.android"

.field public static final VIDEO_TYPE:I = 0x1

.field public static final WEB_TYPE:I = 0x0

.field public static final WechatPackage:Ljava/lang/String; = "com.tencent.mm"

.field public static final WeiBoPackage:Ljava/lang/String; = "com.sina.weibo"

.field public static final WhatsAppPackage:Ljava/lang/String; = "com.whatsapp"

.field public static final YoutubePackage:Ljava/lang/String; = "com.google.android.youtube"


# instance fields
.field private diplayNameId:I

.field private icon:I

.field private sharePlatformName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->sharePlatformName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->icon:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->sharePlatformName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->icon:I

    .line 7
    iput p3, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->diplayNameId:I

    return-void
.end method

.method public static checkApkExist(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mobileqq"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sina.weibo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    .line 4
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static getDefault()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.facebook.katana"

    .line 3
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getFbShare()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v3, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    const v4, 0x7f0f033b

    const v5, 0x7f1202f3

    invoke-direct {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v1, :cond_1

    const-string v2, "com.instagram.android"

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v3, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    const v4, 0x7f0f033d

    const v5, 0x7f120046

    invoke-direct {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v1, :cond_2

    const-string v2, "com.snapchat.android"

    .line 7
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v3, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SnapChat;->NAME:Ljava/lang/String;

    const v4, 0x7f0f0340

    const v5, 0x7f120080

    invoke-direct {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "com.twitter.android"

    .line 9
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    const v3, 0x7f0f0341

    const v4, 0x7f120095

    const-string v5, "Twitter"

    invoke-direct {v2, v5, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "com.whatsapp"

    .line 11
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    const v3, 0x7f0f0344

    const v4, 0x7f12009d

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/More;->NAME:Ljava/lang/String;

    const v3, 0x7f0f04c1

    const v4, 0x7f120798

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTopicDefault(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Friend;->NAME:Ljava/lang/String;

    const v2, 0x7f0f02ab

    const v3, 0x7f1203ba

    invoke-direct {p0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p0

    if-nez p0, :cond_1

    const-string v1, "com.facebook.katana"

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getFbShare()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    const v3, 0x7f0f033b

    const v4, 0x7f1202f3

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p0, :cond_2

    const-string v1, "com.snapchat.android"

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SnapChat;->NAME:Ljava/lang/String;

    const v3, 0x7f0f0340

    const v4, 0x7f120080

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez p0, :cond_3

    const-string v1, "com.twitter.android"

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    const v2, 0x7f0f0341

    const v3, 0x7f120095

    const-string v4, "Twitter"

    invoke-direct {v1, v4, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez p0, :cond_4

    const-string p0, "com.whatsapp"

    .line 10
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    new-instance p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    const v2, 0x7f0f0344

    const v3, 0x7f12009d

    invoke-direct {p0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    new-instance p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/More;->NAME:Ljava/lang/String;

    const v2, 0x7f0f04c1

    const v3, 0x7f120798

    invoke-direct {p0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static isWeixinExist(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDiplayNameId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->diplayNameId:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->icon:I

    return v0
.end method

.method public getSharePlatformName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->sharePlatformName:Ljava/lang/String;

    return-object v0
.end method

.method public setDiplayNameId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->diplayNameId:I

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->icon:I

    return-void
.end method

.method public setSharePlatformName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->sharePlatformName:Ljava/lang/String;

    return-void
.end method
