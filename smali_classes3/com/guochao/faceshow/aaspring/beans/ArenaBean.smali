.class public Lcom/guochao/faceshow/aaspring/beans/ArenaBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private arenaDurationTime:J

.field private arenaPunishmentDurationTime:J

.field private introductionToPlay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectTime:J

.field private surplusAdmitDefeatNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdmitDefeatNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->surplusAdmitDefeatNum:I

    return v0
.end method

.method public getArenaDurationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->arenaDurationTime:J

    return-wide v0
.end method

.method public getArenaPunishmentDurationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->arenaPunishmentDurationTime:J

    return-wide v0
.end method

.method public getIntroductionToPlay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->introductionToPlay:Ljava/util/List;

    return-object v0
.end method

.method public getSelectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->selectTime:J

    return-wide v0
.end method

.method public setAdmitDefeatNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->surplusAdmitDefeatNum:I

    return-void
.end method

.method public setArenaDurationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->arenaDurationTime:J

    return-void
.end method

.method public setArenaPunishmentDurationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->arenaPunishmentDurationTime:J

    return-void
.end method

.method public setIntroductionToPlay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->introductionToPlay:Ljava/util/List;

    return-void
.end method

.method public setSelectTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->selectTime:J

    return-void
.end method
