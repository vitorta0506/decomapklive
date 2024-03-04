.class public Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackQuestionDetailBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createTime:J

.field private createUserName:Ljava/lang/String;

.field private createUserType:I

.field private detail:Ljava/lang/String;

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowScore:Z

.field private questionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->questionId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserType:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->detail:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->fileList:Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createTime:J

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

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createTime:J

    return-wide v0
.end method

.method public getCreateUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUserType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserType:I

    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public getQuestionId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->questionId:I

    return v0
.end method

.method public getShowScore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->mShowScore:Z

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createTime:J

    return-void
.end method

.method public setCreateUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserName:Ljava/lang/String;

    return-void
.end method

.method public setCreateUserType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserType:I

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->detail:Ljava/lang/String;

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->fileList:Ljava/util/List;

    return-void
.end method

.method public setQuestionId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->questionId:I

    return-void
.end method

.method public setShowScore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->mShowScore:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->questionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createUserType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->detail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->fileList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
