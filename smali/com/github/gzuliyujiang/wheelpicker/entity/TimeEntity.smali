.class public Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hourOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->setHour(I)V

    return-object v0
.end method

.method public static minuteOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getMinute()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->setMinute(I)V

    return-object v0
.end method

.method public static now()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 5
    invoke-static {v1, v2, v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->target(III)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v0

    return-object v0
.end method

.method public static target(III)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 1

    .line 1
    new-instance v0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-direct {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->setHour(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->setMinute(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->setSecond(I)V

    return-object v0
.end method


# virtual methods
.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->second:I

    return v0
.end method

.method public setHour(I)V
    .locals 0

    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->minute:I

    return-void
.end method

.method public setSecond(I)V
    .locals 0

    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->second:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->minute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
