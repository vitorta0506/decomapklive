.class public Lcom/tencent/ugc/videoprocessor/SpeedProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSpeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    return-void
.end method

.method public findSpeedByLevel(I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    return p1

    :cond_1
    const/high16 p1, 0x3fc00000    # 1.5f

    return p1

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    return p1

    :cond_3
    const/high16 p1, 0x3e800000    # 0.25f

    return p1
.end method

.method public getSpeedLevel(J)F
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    .line 3
    iget-wide v3, v2, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v7, p1, v3

    if-lez v7, :cond_1

    iget-wide v3, v2, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    mul-long v3, v3, v5

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    .line 4
    iget p1, v2, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->findSpeedByLevel(I)F

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getSpeedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    return-object v0
.end method

.method public isSpeedListExist()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    .line 3
    iget v2, v2, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public setSpeedList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/SpeedProcessor;->mSpeedList:Ljava/util/List;

    return-void
.end method
