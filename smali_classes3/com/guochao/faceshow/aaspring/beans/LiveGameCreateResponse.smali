.class public Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private flag:I

.field private gameInfoId:J

.field private isJoin:I

.field private roundId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->flag:I

    return v0
.end method

.method public getGameInfoId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->gameInfoId:J

    return-wide v0
.end method

.method public getIsJoin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->isJoin:I

    return v0
.end method

.method public getRoundId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->roundId:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->flag:I

    return-void
.end method

.method public setGameInfoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->gameInfoId:J

    return-void
.end method

.method public setIsJoin(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->isJoin:I

    return-void
.end method

.method public setRoundId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->roundId:Ljava/lang/String;

    return-void
.end method
