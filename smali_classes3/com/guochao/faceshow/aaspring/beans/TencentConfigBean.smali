.class public Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private beautyKey:Ljava/lang/String;

.field private beautyLicenseUrl:Ljava/lang/String;

.field private imAppId:Ljava/lang/String;

.field private liveAppId:Ljava/lang/String;

.field private liveKey:Ljava/lang/String;

.field private liveLicenseUrl:Ljava/lang/String;

.field private liveV2Key:Ljava/lang/String;

.field private liveV2LicenseUrl:Ljava/lang/String;

.field private ugcKey:Ljava/lang/String;

.field private ugcLicenseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "19ee5e6d456330e815dd45d9253fa0db"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyKey:Ljava/lang/String;

    const-string v0, "https://license.vod2.myqcloud.com/license/v2/1256213697_1/v_cube.license"

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyLicenseUrl:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    const-string v1, "txConfig"

    const-string v2, "TencentConfigBean"

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;-><init>()V

    const v1, 0x5373a5c4

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->imAppId:Ljava/lang/String;

    const-string v1, "1256213697"

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveAppId:Ljava/lang/String;

    const-string v1, "https://license.vod2.myqcloud.com/license/v2/1256213697_1/v_cube.license"

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveLicenseUrl:Ljava/lang/String;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcLicenseUrl:Ljava/lang/String;

    const-string v2, "19ee5e6d456330e815dd45d9253fa0db"

    .line 7
    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveKey:Ljava/lang/String;

    .line 8
    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcKey:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveV2Key:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveV2LicenseUrl:Ljava/lang/String;

    .line 11
    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyKey:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyLicenseUrl:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getPushData(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;-><init>()V

    const-string v1, "liveAppId"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveAppId:Ljava/lang/String;

    const-string v1, "ugcLicenseUrl"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcLicenseUrl:Ljava/lang/String;

    const-string v1, "liveLicenseUrl"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveLicenseUrl:Ljava/lang/String;

    const-string v1, "ugcKey"

    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcKey:Ljava/lang/String;

    const-string v1, "liveKey"

    .line 6
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveKey:Ljava/lang/String;

    const-string v1, "imAppId"

    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    :cond_5
    iput-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->imAppId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public enable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcLicenseUrl:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveLicenseUrl:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcKey:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveKey:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->imAppId:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equalsLocal()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getDefault()Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->imAppId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->imAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveAppId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveLicenseUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveLicenseUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcLicenseUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcLicenseUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcKey:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public getBeautyKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBeautyLicenseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyLicenseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->imAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveLicenseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveLicenseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveV2Key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveV2Key:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveV2LicenseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveV2LicenseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUgcKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUgcLicenseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcLicenseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public saveLocal()V
    .locals 2

    const-string v0, "txConfig"

    const-string v1, "TencentConfigBean"

    invoke-static {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBeautyKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyKey:Ljava/lang/String;

    return-void
.end method

.method public setBeautyLicenseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->beautyLicenseUrl:Ljava/lang/String;

    return-void
.end method

.method public setImAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->imAppId:Ljava/lang/String;

    return-void
.end method

.method public setLiveAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveAppId:Ljava/lang/String;

    return-void
.end method

.method public setLiveKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveKey:Ljava/lang/String;

    return-void
.end method

.method public setLiveLicenseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveLicenseUrl:Ljava/lang/String;

    return-void
.end method

.method public setLiveV2Key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveV2Key:Ljava/lang/String;

    return-void
.end method

.method public setLiveV2LicenseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->liveV2LicenseUrl:Ljava/lang/String;

    return-void
.end method

.method public setUgcKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcKey:Ljava/lang/String;

    return-void
.end method

.method public setUgcLicenseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->ugcLicenseUrl:Ljava/lang/String;

    return-void
.end method
