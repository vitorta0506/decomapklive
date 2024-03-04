.class public Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
    }
.end annotation


# static fields
.field public static final COMMENT_MESSAGE:Ljava/lang/String; = "comment_message"

.field public static final COMMENT_MESSAGE_NUMBER:Ljava/lang/String; = "comment_message_number"

.field public static final KEY_LOCAL_COUNTRY:Ljava/lang/String; = "key_local_country"

.field public static final KEY_PAY_MODE:Ljava/lang/String; = "key_pay_mode"

.field public static final KEY_PLANT_MASKED:Ljava/lang/String; = "key_plant_masked"

.field public static final KEY_SELECT_ADVERTISEMENT:Ljava/lang/String; = "key_select_advertisement"

.field public static final KEY_SEVER_CONFIG_TIME:Ljava/lang/String; = "key_sever_config_time"

.field public static final KEY_SHOW_LOOK:Ljava/lang/String; = "key_show_look"

.field public static final MODULE_NOTIFICATION:Ljava/lang/String; = "module_notification"

.field public static final MODULE_PLANET:Ljava/lang/String; = "module_planet"

.field public static final MODULE_SEVER_CONFIG_TIME:Ljava/lang/String; = "module_sever_config_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p2, p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    :cond_0
    const-string p0, ""

    .line 2
    invoke-static {p1, p2, p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils$SpModules;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
