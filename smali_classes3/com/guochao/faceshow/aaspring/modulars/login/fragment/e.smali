.class public Lcom/guochao/faceshow/aaspring/modulars/login/fragment/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->FACEBOOK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "CN"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "RU"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/e;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/e;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->TWITTER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->INSTAGRAM:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->LINE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->FACEBOOK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static d(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->GOOGLE_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->FACEBOOK_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PHONE_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->VK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->TWITTER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->INSTAGRAM:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->FACEBOOK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
