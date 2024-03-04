.class public Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private partakeTimes:I

.field private topicId:Ljava/lang/String;

.field private topicName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->partakeTimes:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPartakeTimes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->partakeTimes:I

    return v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public setPartakeTimes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->partakeTimes:I

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicId:Ljava/lang/String;

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->topicName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->partakeTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
