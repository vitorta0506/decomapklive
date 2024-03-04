.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/model/ILuckyRunwayMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuckyGiftRunwayMessage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private diamonds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDiamonds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;->diamonds:Z

    return v0
.end method

.method public getRunwayMessages()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setDiamonds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;->diamonds:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
