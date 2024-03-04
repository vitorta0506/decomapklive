.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private averageVolume:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;->averageVolume:D

    return-wide v0
.end method

.method public setAverageVolume(D)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;->averageVolume:D

    return-void
.end method
