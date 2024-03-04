.class public Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->today()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->getDay()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->setDay(I)V

    return-object v0
.end method

.method public static monthOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->today()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->getMonth()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->setMonth(I)V

    return-object v0
.end method

.method public static target(III)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;
    .locals 1

    .line 1
    new-instance v0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    invoke-direct {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->setYear(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->setMonth(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->setDay(I)V

    return-object v0
.end method

.method public static today()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 5
    invoke-static {v2, v3, v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->target(III)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v0

    return-object v0
.end method

.method public static yearOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->today()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->getYear()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->setYear(I)V

    return-object v0
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
    check-cast p1, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    .line 3
    iget v2, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->year:I

    iget v3, p1, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->year:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->month:I

    iget v3, p1, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->month:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->day:I

    iget p1, p1, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->day:I

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

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDay(I)V
    .locals 0

    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->day:I

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->month:I

    return-void
.end method

.method public setYear(I)V
    .locals 0

    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
