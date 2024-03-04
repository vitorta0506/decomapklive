.class public Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private date:Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

.field private time:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->dayOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->setDate(Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;)V

    return-object v0
.end method

.method public static hourOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->hourOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->setTime(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    return-object v0
.end method

.method public static minuteOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->minuteOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->setTime(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    return-object v0
.end method

.method public static monthOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->monthOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->setDate(Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;)V

    return-object v0
.end method

.method public static now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 2

    .line 1
    new-instance v0, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    invoke-direct {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;-><init>()V

    .line 2
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->today()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->setDate(Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;)V

    .line 3
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->setTime(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    return-object v0
.end method

.method public static yearOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->yearOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->setDate(Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;)V

    return-object v0
.end method


# virtual methods
.method public getDate()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->date:Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    return-object v0
.end method

.method public getTime()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->time:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    return-object v0
.end method

.method public setDate(Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->date:Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    return-void
.end method

.method public setTime(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->time:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->date:Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->time:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
