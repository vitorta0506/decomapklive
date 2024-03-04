.class public Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private friendId:I

.field private hasRetryTimes:I

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            ">;"
        }
    .end annotation
.end field

.field private invisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isComment:I

.field private isNearbySeat:I

.field private isPoi:I

.field private isShowSeat:I

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private publishStatus:I

.field private shield:I

.field private uuid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->shield:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isShowSeat:I

    return-void
.end method

.method public static fromDynamic(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUuid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setUuid(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setFriendId(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setContent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsComment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsComment(I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsNearbySeat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsNearbySeat(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getShield()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setShield(I)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsShowSeat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsShowSeat(I)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getInvisibleList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setInvisibleList(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getPublishStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getHasRetryTimes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setHasRetryTimes(I)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setAddress(Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getDynamicFile()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    .line 16
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;-><init>()V

    .line 17
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setType(I)V

    .line 18
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setFileUrl(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setFileSmallUrl(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setThumb(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setUri(Landroid/net/Uri;)V

    .line 22
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/16 v4, 0x65

    goto :goto_2

    :cond_2
    const/16 v4, 0x66

    :goto_2
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setMediaType(I)V

    .line 23
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setWidth(I)V

    .line 24
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setHeight(I)V

    .line 25
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setImgList(Ljava/util/List;)V

    return-object v0
.end method

.method public static toDynamic(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUuid(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getFriendId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setFriendId(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setContent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getShield()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setShield(I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getIsNearbySeat()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setIsNearbySeat(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getIsComment()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setIsComment(I)V

    const-string v2, "userId"

    .line 8
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getInvisibleList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setInvisibleList(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getIsShowSeat()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setIsShowSeat(I)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getPublishStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setPublishStatus(I)V

    .line 12
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserId(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 14
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getPublishStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setPublishable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 17
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setPublishable(Z)V

    .line 18
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/sql/Date;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 20
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setCreateTime(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 23
    iget-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserImg(Ljava/lang/String;)V

    .line 24
    iget-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserCountryFlag(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAge()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserAge(I)V

    .line 26
    iget v2, v0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserSex(I)V

    .line 27
    iget v2, v0, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setLevelId(I)V

    .line 28
    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setNickName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getHasRetryTimes()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setHasRetryTimes(I)V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setAddress(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 32
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setLatitude(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setLongitude(Ljava/lang/String;)V

    .line 35
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    .line 38
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;-><init>()V

    .line 39
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setFileUrl(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setFileSmallUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setType(I)V

    .line 42
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setWidth(I)V

    .line 43
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setHeight(I)V

    .line 44
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setUri(Landroid/net/Uri;)V

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_5
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setDynamicFile(Ljava/util/ArrayList;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->uuid:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->uuid:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->friendId:I

    return v0
.end method

.method public getHasRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->hasRetryTimes:I

    return v0
.end method

.method public getImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->imgList:Ljava/util/List;

    return-object v0
.end method

.method public getInvisibleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->invisibleList:Ljava/util/List;

    return-object v0
.end method

.method public getIsComment()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isComment:I

    return v0
.end method

.method public getIsNearbySeat()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isNearbySeat:I

    return v0
.end method

.method public getIsPoi()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isPoi:I

    return v0
.end method

.method public getIsShowSeat()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isShowSeat:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->publishStatus:I

    return v0
.end method

.method public getShield()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->shield:I

    return v0
.end method

.method public getUuid()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->uuid:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->uuid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPublishable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setFriendId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->friendId:I

    return-void
.end method

.method public setHasRetryTimes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->hasRetryTimes:I

    return-void
.end method

.method public setImgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->imgList:Ljava/util/List;

    return-void
.end method

.method public setInvisibleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->invisibleList:Ljava/util/List;

    return-void
.end method

.method public setIsComment(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isComment:I

    return-void
.end method

.method public setIsNearbySeat(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isNearbySeat:I

    return-void
.end method

.method public setIsPoi(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isPoi:I

    return-void
.end method

.method public setIsShowSeat(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->isShowSeat:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setPublishStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->publishStatus:I

    return-void
.end method

.method public setPublishable(Z)V
    .locals 0

    return-void
.end method

.method public setShield(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->shield:I

    return-void
.end method

.method public setUuid(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->uuid:I

    return-void
.end method
