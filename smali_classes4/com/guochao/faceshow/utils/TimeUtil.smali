.class public Lcom/guochao/faceshow/utils/TimeUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/util/service/TimeFormatter;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/time_formatter"
.end annotation


# static fields
.field public static final DAY:J = 0x5265c00L

.field public static final HOUR:J = 0x36ee80L

.field public static final MINUTE:J = 0xea60L

.field public static final MONTH:J = 0x9a7ec800L

.field public static final SECOND:J = 0x3e8L

.field public static final WEEK:J = 0x240c8400L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToStamp(Ljava/lang/String;)J
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDateStrName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "yyyyMMddHHmm"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getDefaultFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDressUpTime(Landroid/content/Context;JIJ)Ljava/lang/String;
    .locals 5

    const v0, 0x7f12052b

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p3, v3, :cond_3

    const/4 v4, 0x2

    if-ne p3, v4, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p3, p1, p4

    if-ltz p3, :cond_1

    const-string p3, "M/d/yyyy"

    .line 1
    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p3

    .line 2
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, p1, p2}, Ljava/util/Date;-><init>(J)V

    const p1, 0x7f1206e3

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p3, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long p3, p1, v1

    if-gtz p3, :cond_2

    const p1, 0x7f1206e4

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    cmp-long v4, p1, p4

    if-gtz v4, :cond_7

    cmp-long p4, p1, v1

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 p4, -0x1

    cmp-long v1, p1, p4

    if-nez v1, :cond_6

    if-ne p3, v3, :cond_5

    const p1, 0x7f1209db

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const p1, 0x7f120aae

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    if-ne p3, v3, :cond_8

    const p1, 0x7f120a2f

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const p1, 0x7f120aaf

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDressUpTimeMVP(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f12065f

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f12052b

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDressUpTimePair(Landroid/content/Context;JIJZ)Landroid/util/Pair;
    .locals 7

    const v0, 0x7f12052b

    const-wide/16 v1, 0x0

    const v3, 0x7f120636

    const v4, 0x7f120635

    const/4 v5, 0x1

    if-eq p3, v5, :cond_5

    const/4 v6, 0x2

    if-ne p3, v6, :cond_0

    goto :goto_2

    :cond_0
    cmp-long p3, p1, p4

    if-ltz p3, :cond_2

    const-string p3, "M/d/yyyy"

    .line 1
    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 2
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3
    new-instance p1, Landroid/util/Pair;

    xor-int/lit8 p2, p6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p6, :cond_1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    cmp-long p3, p1, v1

    if-gtz p3, :cond_4

    .line 4
    new-instance p1, Landroid/util/Pair;

    xor-int/lit8 p2, p6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p6, :cond_3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    :goto_2
    cmp-long v6, p1, p4

    if-gtz v6, :cond_9

    cmp-long p4, p1, v1

    if-nez p4, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 p4, -0x1

    cmp-long p6, p1, p4

    if-nez p6, :cond_8

    if-ne p3, v5, :cond_7

    .line 6
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const p3, 0x7f1209db

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 7
    :cond_7
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const p3, 0x7f120aae

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_8
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_9
    :goto_3
    if-ne p3, v5, :cond_b

    .line 9
    new-instance p1, Landroid/util/Pair;

    xor-int/lit8 p2, p6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p6, :cond_a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 10
    :cond_b
    new-instance p1, Landroid/util/Pair;

    xor-int/lit8 p2, p6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p6, :cond_c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getDressUpTimePair(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/DressUpData;J)Landroid/util/Pair;
    .locals 7

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getItemType()I

    move-result v0

    const v1, 0x7f120636

    const v2, 0x7f120635

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    .line 12
    iget v0, p1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->beFrom:I

    sget v4, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->BE_FROM_MVP:I

    if-ne v0, v4, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getCanItBeUsed()I

    move-result p2

    const/4 p3, 0x0

    if-ne p2, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result v0

    .line 15
    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->received:I

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p2, :cond_3

    .line 16
    new-instance p1, Landroid/util/Pair;

    xor-int/lit8 p2, v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f120635

    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 17
    :cond_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const p3, 0x7f12052b

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getExpireTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTypes()I

    move-result v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result v6

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/utils/TimeUtil;->getDressUpTimePair(Landroid/content/Context;JIJZ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 21
    :cond_6
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getDressUpTimePairMvp(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)Landroid/util/Pair;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getItemType()I

    move-result v0

    const v1, 0x7f120636

    const v2, 0x7f120635

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getCanItBeUsed()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result p1

    if-eqz v3, :cond_2

    .line 4
    new-instance v0, Landroid/util/Pair;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f120635

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v1, 0x7f12052b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getForthTimeWithSdf(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const-string v0, "M/d/yyyy HH:mm"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "yyyy-M-d HH:mm"

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "HH:mm"

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v1, v2

    const-wide/32 v3, 0xea60

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    const p1, 0x7f12059c

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 9
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getHHTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v1, 0x240c8400

    cmp-long v3, p1, v1

    if-gez v3, :cond_3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getWeekName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getHHTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p0, p1, v1

    if-gez p0, :cond_4

    .line 12
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 13
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGiftTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "HH:mm"

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    const-wide/32 v6, 0xea60

    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-lez v0, :cond_0

    const p1, 0x7f12059c

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const-string v2, "%s %s"

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    .line 6
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getHHTime(J)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object p0

    :cond_1
    const-wide/32 v4, 0x240c8400

    cmp-long v6, p1, v4

    if-gez v6, :cond_2

    .line 8
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getHHTime(J)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getWeekName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "M/d/yyyy"

    .line 11
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->getAppLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zh"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo p0, "yyyy-M-d"

    .line 13
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    .line 14
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_4

    .line 15
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p1

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 16
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getHHTime(J)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    new-array p1, v0, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    aput-object v5, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getHHTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHHTime(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string p0, "HH:mm"

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const-string v0, "M/d/yyyy"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "yyyy-M-d"

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "HH:mm"

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v1, v2

    const-wide/16 v3, 0x0

    const v5, 0x7f12059c

    cmp-long v6, p1, v3

    if-gez v6, :cond_1

    .line 8
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v3, 0xea60

    cmp-long v6, p1, v3

    if-gez v6, :cond_2

    .line 9
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v5, 0x927c0

    cmp-long v7, p1, v5

    if-gez v7, :cond_4

    .line 10
    div-long/2addr p1, v3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_3

    const p1, 0x7f1208c6

    goto :goto_0

    :cond_3
    const p1, 0x7f1208c5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    cmp-long v3, p1, v1

    if-gez v3, :cond_5

    .line 12
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getHHTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-wide/32 v1, 0x240c8400

    cmp-long v3, p1, v1

    if-gez v3, :cond_6

    .line 13
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getWeekName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p0, p1, v1

    if-gez p0, :cond_7

    .line 15
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 16
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_7
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLableTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "HH:mm"

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v0, v1

    const v2, 0x7f1206f0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v3, 0xea60

    cmp-long p0, p1, v3

    if-gez p0, :cond_1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v5, 0x493e0

    cmp-long p0, p1, v5

    if-gez p0, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const p1, 0x7f12059c

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v5, 0x1

    const-wide/32 v7, 0x36ee80

    const-string p0, " "

    cmp-long v2, p1, v7

    if-gez v2, :cond_4

    .line 8
    div-long/2addr p1, v3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    cmp-long v1, p1, v5

    if-lez v1, :cond_3

    const p1, 0x7f1208c6

    goto :goto_0

    :cond_3
    const p1, 0x7f1208c5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    .line 10
    div-long/2addr p1, v7

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    cmp-long v1, p1, v5

    if-lez v1, :cond_5

    const p1, 0x7f1208c3

    goto :goto_1

    :cond_5
    const p1, 0x7f1208c2

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-wide/32 v0, 0x5265c00

    .line 12
    div-long/2addr p1, v0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const p1, 0x7f1208c0

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOldVideoCommentTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "HH:mm"

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v0, v1

    const v2, 0x7f12059c

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v3, 0xea60

    cmp-long p0, p1, v3

    if-gez p0, :cond_1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v5, 0x36ee80

    const-string p0, " "

    const-wide/16 v7, 0x1

    cmp-long v2, p1, v5

    if-gez v2, :cond_3

    .line 7
    div-long/2addr p1, v3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    cmp-long v1, p1, v7

    if-lez v1, :cond_2

    const p1, 0x7f1208c6

    goto :goto_0

    :cond_2
    const p1, 0x7f1208c5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    .line 9
    div-long/2addr p1, v5

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    cmp-long v1, p1, v7

    if-lez v1, :cond_4

    const p1, 0x7f1208c3

    goto :goto_1

    :cond_4
    const p1, 0x7f1208c2

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-wide v0, 0x9a7ec800L

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const-wide/32 v0, 0x5265c00

    .line 11
    div-long/2addr p1, v0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v1, p1, v7

    if-gez v1, :cond_6

    goto :goto_2

    :cond_6
    move-wide v7, p1

    :goto_2
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    if-lez v1, :cond_7

    const p1, 0x7f1208c1

    goto :goto_3

    :cond_7
    const p1, 0x7f1208c0

    :goto_3
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-wide v2, 0x73df16000L

    cmp-long v4, p1, v2

    if-gez v4, :cond_a

    .line 13
    div-long/2addr p1, v0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    cmp-long v1, p1, v7

    if-lez v1, :cond_9

    const p1, 0x7f1208c8

    goto :goto_4

    :cond_9
    const p1, 0x7f1208c7

    :goto_4
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "M/d/yyyy"

    .line 15
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo p0, "yyyy-M-d"

    .line 17
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    .line 18
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_c

    .line 19
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_c
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 21
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecond(J)Ljava/lang/String;
    .locals 4

    const-string v0, "00"

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0xa

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v1, 0x3c

    cmp-long v3, p0, v1

    if-gez v3, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getServerTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 6
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStrData2Age(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "yyyy-MM-dd"

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getDefaultFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v6, 0x18

    div-long/2addr v0, v6

    const-wide/16 v8, 0x16d

    div-long/2addr v0, v8

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v2

    div-long/2addr v10, v4

    div-long/2addr v10, v4

    div-long/2addr v10, v6

    div-long/2addr v10, v8

    sub-long/2addr v10, v0

    const-wide/16 v0, 0x0

    cmp-long p0, v10, v0

    if-gtz p0, :cond_2

    const-string p0, "0"

    return-object p0

    .line 7
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStrToDateYmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v0, "MM/dd/yyyy"

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getDefaultFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    const-string v1, "EST5EDT"

    .line 4
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getStringCallTime(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-string p0, "00:00"

    return-object p0

    :cond_0
    const-wide/16 v0, 0xe10

    const-string v2, ":"

    const-wide/16 v3, 0x3c

    cmp-long v5, p0, v0

    if-gez v5, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p0, v3

    invoke-static {v5, v6}, Lcom/guochao/faceshow/utils/TimeUtil;->getSecond(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v3

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/TimeUtil;->getSecond(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-long v0, p0, v0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getSecond(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, p0, v3

    rem-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getSecond(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v3

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/TimeUtil;->getSecond(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTime(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    return-object p1

    :cond_0
    sub-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1206f0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12059c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v2, 0x36ee80

    const-string v4, " "

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    long-to-float p1, v0

    mul-float p1, p1, v5

    const v0, 0x476a6000    # 60000.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1208c5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 v2, 0x5265c00

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    long-to-float p1, v0

    mul-float p1, p1, v5

    const v0, 0x4a5bba00    # 3600000.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1208c3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/32 v2, 0x2932e000

    cmp-long v6, v0, v2

    if-ltz v6, :cond_5

    return-object p1

    :cond_5
    long-to-float p1, v0

    mul-float p1, p1, v5

    const v0, 0x4ca4cb80    # 8.64E7f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1208c1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalTime(J)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/TimeUtil;->getTotalUsTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/TimeUtil;->getTotalUsTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalUsTime(J)Ljava/lang/String;
    .locals 19

    const-string v0, "00:00"

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v3, 0x3e8

    .line 1
    div-long v3, p0, v3

    const-wide/16 v5, 0x3c

    .line 2
    div-long v7, v3, v5

    .line 3
    div-long v9, v7, v5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0xa

    cmp-long v16, v9, v1

    if-nez v16, :cond_4

    cmp-long v1, v7, v14

    if-gez v1, :cond_1

    .line 4
    rem-long v9, v3, v5

    cmp-long v2, v9, v14

    if-gez v2, :cond_1

    new-array v0, v11, [Ljava/lang/Object;

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "0%s:0%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-gez v1, :cond_2

    .line 6
    rem-long v9, v3, v5

    cmp-long v2, v9, v14

    if-ltz v2, :cond_2

    new-array v0, v11, [Ljava/lang/Object;

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "0%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-ltz v1, :cond_3

    .line 8
    rem-long v9, v3, v5

    cmp-long v2, v9, v14

    if-gez v2, :cond_3

    new-array v0, v11, [Ljava/lang/Object;

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "%s:0%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-ltz v1, :cond_8

    .line 10
    rem-long/2addr v3, v5

    cmp-long v1, v3, v14

    if-ltz v1, :cond_8

    new-array v0, v11, [Ljava/lang/Object;

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    rem-long/2addr v7, v5

    const/4 v1, 0x3

    cmp-long v2, v7, v14

    if-gez v2, :cond_5

    rem-long v16, v3, v5

    cmp-long v18, v16, v14

    if-gez v18, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "%s:0%s:0%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    if-gez v2, :cond_6

    .line 14
    rem-long v16, v3, v5

    cmp-long v18, v16, v14

    if-ltz v18, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "%s:0%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    if-ltz v2, :cond_7

    .line 16
    rem-long v16, v3, v5

    cmp-long v18, v16, v14

    if-gez v18, :cond_7

    new-array v0, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "%s:%s:0%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    if-ltz v2, :cond_8

    .line 18
    rem-long/2addr v3, v5

    cmp-long v2, v3, v14

    if-ltz v2, :cond_8

    new-array v0, v1, [Ljava/lang/Object;

    .line 19
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "%s:%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public static getUgcTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 8
    invoke-static {p0, v1, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 9
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoCommentTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "HH:mm"

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const v0, 0x7f1206f0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v1, 0xea60

    cmp-long p0, p1, v1

    if-gez p0, :cond_1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v3, 0x493e0

    cmp-long p0, p1, v3

    if-gez p0, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const p1, 0x7f12059c

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v3, 0x1

    const-wide/32 v5, 0x36ee80

    const-string p0, " "

    cmp-long v0, p1, v5

    if-gez v0, :cond_4

    .line 8
    div-long/2addr p1, v1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    cmp-long v1, p1, v3

    if-lez v1, :cond_3

    const p1, 0x7f1208c6

    goto :goto_0

    :cond_3
    const p1, 0x7f1208c5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/32 v0, 0x5265c00

    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    .line 10
    div-long/2addr p1, v5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    cmp-long v1, p1, v3

    if-lez v1, :cond_5

    const p1, 0x7f1208c3

    goto :goto_1

    :cond_5
    const p1, 0x7f1208c2

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_6
    div-long/2addr p1, v0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const p1, 0x7f1208c0

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWeekName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f1205d7

    .line 1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12092d

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f120ab8

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const v2, 0x7f1208bc

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const v2, 0x7f1203ae

    .line 5
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const v2, 0x7f1207b3

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const v2, 0x7f1208ac

    .line 7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    aput-object p0, v1, v2

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 9
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p1

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 10
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v4

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x7

    :cond_0
    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, p0

    .line 12
    :goto_0
    aget-object p0, v1, v3

    return-object p0
.end method

.method public static getWhoSawMeTime(J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0xea60

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const p1, 0x7f12059c

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v2, 0x927c0

    cmp-long v4, p0, v2

    if-gez v4, :cond_3

    .line 2
    div-long/2addr p0, v0

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-wide/16 v2, 0x1

    cmp-long v4, p0, v2

    if-lez v4, :cond_2

    const p0, 0x7f1208c6

    goto :goto_1

    :cond_2
    const p0, 0x7f1208c5

    :goto_1
    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 v0, 0x5265c00

    cmp-long v2, p0, v0

    if-gez v2, :cond_4

    .line 7
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string p0, "HH:mm"

    .line 8
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/32 v0, 0x240c8400

    cmp-long v2, p0, v0

    if-gez v2, :cond_5

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/utils/TimeUtil;->getWeekName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string p0, "M/d/yyyy"

    .line 11
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeToString(JZ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1f4

    add-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    .line 2
    div-long/2addr p0, v0

    long-to-int p1, p0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ":"

    const-string v1, "0"

    const/16 v2, 0xa

    if-eqz p2, :cond_1

    .line 4
    div-int/lit8 p2, p1, 0x3c

    div-int/lit8 p2, p2, 0x3c

    if-ge p2, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    if-ge p2, v2, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    rem-int/lit8 p1, p1, 0x3c

    if-ge p1, v2, :cond_3

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIMTime(J)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVoiceRoomOfflineTime(J)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/utils/Tool;->helloHistoryTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
