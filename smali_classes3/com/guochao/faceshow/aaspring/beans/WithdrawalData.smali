.class public Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;
    }
.end annotation


# instance fields
.field private currency:I

.field private normList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;"
        }
    .end annotation
.end field

.field private withDrawSwitch:Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->currency:I

    return v0
.end method

.method public getNormList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->normList:Ljava/util/List;

    return-object v0
.end method

.method public getWithDrawSwitch()Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->withDrawSwitch:Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    return-object v0
.end method

.method public setCurrency(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->currency:I

    return-void
.end method

.method public setNormList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->normList:Ljava/util/List;

    return-void
.end method

.method public setWithDrawSwitch(Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->withDrawSwitch:Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    return-void
.end method
