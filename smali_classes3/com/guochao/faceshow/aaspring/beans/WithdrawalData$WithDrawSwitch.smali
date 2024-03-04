.class public Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithDrawSwitch"
.end annotation


# instance fields
.field private aliPaySwitch:I

.field private payoneerSwitch:I

.field private payoneerSwitchV2:I

.field private paypalSwitch:I

.field private usdtSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliPaySwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->aliPaySwitch:I

    return v0
.end method

.method public getPayoneerSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->payoneerSwitch:I

    return v0
.end method

.method public getPayoneerSwitchV2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->payoneerSwitchV2:I

    return v0
.end method

.method public getPaypalSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->paypalSwitch:I

    return v0
.end method

.method public getUsdtSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->usdtSwitch:I

    return v0
.end method

.method public setAliPaySwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->aliPaySwitch:I

    return-void
.end method

.method public setPayoneerSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->payoneerSwitch:I

    return-void
.end method

.method public setPayoneerSwitchV2(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->payoneerSwitchV2:I

    return-void
.end method

.method public setPaypalSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->paypalSwitch:I

    return-void
.end method

.method public setUsdtSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->usdtSwitch:I

    return-void
.end method
