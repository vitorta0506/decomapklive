.class public Lcom/guochao/faceshow/aaspring/beans/PkRound;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pkIngEndTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkingEndTime"
    .end annotation
.end field

.field private pkPunishEndTime:J

.field private selectTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPkIngEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkRound;->pkIngEndTime:J

    return-wide v0
.end method

.method public getPkPunishEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkRound;->pkPunishEndTime:J

    return-wide v0
.end method

.method public getSelectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkRound;->selectTime:J

    return-wide v0
.end method

.method public setPkIngEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkRound;->pkIngEndTime:J

    return-void
.end method

.method public setPkPunishEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkRound;->pkPunishEndTime:J

    return-void
.end method

.method public setSelectTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkRound;->selectTime:J

    return-void
.end method
