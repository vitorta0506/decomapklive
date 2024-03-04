.class public Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createTime:J

.field private detail:Ljava/lang/String;

.field private feedQuestionId:I

.field private isNewAnswer:I

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->status:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->feedQuestionId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->detail:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->isNewAnswer:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->createTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->createTime:J

    return-wide v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedQuestionId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->feedQuestionId:I

    return v0
.end method

.method public getIsNewAnswer()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->isNewAnswer:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->status:I

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->createTime:J

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->detail:Ljava/lang/String;

    return-void
.end method

.method public setFeedQuestionId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->feedQuestionId:I

    return-void
.end method

.method public setIsNewAnswer(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->isNewAnswer:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->status:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->feedQuestionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->detail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->isNewAnswer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
