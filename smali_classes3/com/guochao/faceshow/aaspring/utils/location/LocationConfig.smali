.class public Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTimeOut:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;->mTimeOut:I

    return-void
.end method


# virtual methods
.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;->mTimeOut:I

    return v0
.end method

.method public setTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;->mTimeOut:I

    return-void
.end method
