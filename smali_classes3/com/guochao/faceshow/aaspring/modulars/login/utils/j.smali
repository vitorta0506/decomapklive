.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

.field private c:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    return-void
.end method

.method public static e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->d:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->d:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->d:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setUserId(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setUnionId(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "hello-"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "game-hello-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    return-object p1

    :cond_2
    const-string v1, "facecast-"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "game-facecast-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "new-game-facecast-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "contact-"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "sharepage_times"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object p1

    :cond_5
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getBirthday()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getmCountry_num()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getGender()I

    move-result v0

    return v0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "BuzzCast-invitecode-"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    .line 8
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getmLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->c:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getUnionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    .line 3
    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->d:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setBirthday(Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setmCountry_num(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public u(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setGender(I)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setmLogo(Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setMobile(Ljava/lang/String;)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setNickName(Ljava/lang/String;)V

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->b:Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/RegisterBean;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public z(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->c:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    return-void
.end method
