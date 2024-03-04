.class public Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameCoin"
.end annotation


# instance fields
.field private diamond:I

.field private gameCoin:I

.field private ruleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->diamond:I

    return v0
.end method

.method public getGameCoin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->gameCoin:I

    return v0
.end method

.method public getRuleId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->ruleId:I

    return v0
.end method

.method public setDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->diamond:I

    return-void
.end method

.method public setGameCoin(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->gameCoin:I

    return-void
.end method

.method public setRuleId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->ruleId:I

    return-void
.end method
