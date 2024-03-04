.class public Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnlineInfo"
.end annotation


# static fields
.field static final DAY:I = 0x5265c00

.field static final HOUR:I = 0x36ee80

.field static final MINUTE:I = 0xea60

.field static final SECOND:I = 0x3e8

.field static final WEEK:I = 0x240c8400


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private distanceSwitch:I

.field private district:Ljava/lang/String;

.field private nowTime:J

.field private onlineCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "onlineCode"
        }
        value = "onlineState"
    .end annotation
.end field

.field private onlineSwitch:I

.field private onlineTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "onlineTime"
        }
        value = "onlineTimestamp"
    .end annotation
.end field

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->province:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->city:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->country:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDistanceSwitch()I

    move-result v0

    const v1, 0x7f120067

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCountry()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s,%s"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChinaAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDistanceSwitch()I

    move-result v0

    const v1, 0x7f120067

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getProvince()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getProvince()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getProvince()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getProvince()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getProvince()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s\u00b7%s"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDistance()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "(%s)"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDistanceSwitch()I

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getOnlineSwitch()I

    move-result v1

    const-string v5, "%s %s"

    const/4 v6, 0x2

    if-ne v1, v4, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object v2, v1, v4

    invoke-static {p1, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v2, v5, v4

    aput-object p1, v5, v6

    const-string p1, "%s %s \u00b7 %s"

    invoke-static {v1, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v6, [Ljava/lang/Object;

    aput-object v0, p1, v3

    aput-object v2, p1, v4

    .line 9
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getDistanceSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->distanceSwitch:I

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getNowTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->nowTime:J

    return-wide v0
.end method

.method public getOnlineCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->onlineCode:I

    return v0
.end method

.method public getOnlineSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->onlineSwitch:I

    return v0
.end method

.method public getOnlineTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->onlineTime:J

    return-wide v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getOnlineCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1206f0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getOnlineTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/TimeUtil;->getTime(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->country:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->distance:Ljava/lang/String;

    return-void
.end method

.method public setDistanceSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->distanceSwitch:I

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->district:Ljava/lang/String;

    return-void
.end method

.method public setNowTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->nowTime:J

    return-void
.end method

.method public setOnlineCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->onlineCode:I

    return-void
.end method

.method public setOnlineSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->onlineSwitch:I

    return-void
.end method

.method public setOnlineTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->onlineTime:J

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->province:Ljava/lang/String;

    return-void
.end method
