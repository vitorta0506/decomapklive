.class public Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;
    }
.end annotation


# instance fields
.field private diamond:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;",
            ">;"
        }
    .end annotation
.end field

.field private tokenNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->diamond:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTokenNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->tokenNum:I

    return v0
.end method

.method public setDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->diamond:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->list:Ljava/util/List;

    return-void
.end method

.method public setTokenNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->tokenNum:I

    return-void
.end method
