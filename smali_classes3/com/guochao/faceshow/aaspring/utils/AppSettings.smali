.class public Lcom/guochao/faceshow/aaspring/utils/AppSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSetting(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSetting(Ljava/lang/String;Z)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static isFirstUse(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v2, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    return v0
.end method

.method public static isFirstUse(Ljava/lang/String;I)Z
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    return p1
.end method

.method public static isFirstUse(Ljava/lang/String;Z)Z
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 8
    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 9
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    return p0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->isFirstUse(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setSetting(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
