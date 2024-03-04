.class public Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accountUserState:I

.field private currentUserDiamond:J

.field private userAccountState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountUserState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->accountUserState:I

    return v0
.end method

.method public getCurrentUserDiamond()I
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->currentUserDiamond:J

    long-to-int v1, v0

    return v1
.end method

.method public getUserAccountState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->userAccountState:I

    return v0
.end method

.method public setAccountUserState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->accountUserState:I

    return-void
.end method

.method public setCurrentUserDiamond(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->currentUserDiamond:J

    return-void
.end method

.method public setUserAccountState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->userAccountState:I

    return-void
.end method
