.class public Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;
.super Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private detailId:Ljava/lang/String;

.field private evaluate:Ljava/lang/String;

.field private evaluateStore:I

.field private feedBackQuestionDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluate:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluateStore:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->detailId:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->fileList:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->feedBackQuestionDetails:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->typeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDetailId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->detailId:Ljava/lang/String;

    return-object v0
.end method

.method public getEvaluate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluate:Ljava/lang/String;

    return-object v0
.end method

.method public getEvaluateStore()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluateStore:I

    return v0
.end method

.method public getFeedBackQuestionDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->feedBackQuestionDetails:Ljava/util/List;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setDetailId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->detailId:Ljava/lang/String;

    return-void
.end method

.method public setEvaluate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluate:Ljava/lang/String;

    return-void
.end method

.method public setEvaluateStore(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluateStore:I

    return-void
.end method

.method public setFeedBackQuestionDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->feedBackQuestionDetails:Ljava/util/List;

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->fileList:Ljava/util/List;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->typeName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->evaluateStore:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->detailId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->fileList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->feedBackQuestionDetails:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->typeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
