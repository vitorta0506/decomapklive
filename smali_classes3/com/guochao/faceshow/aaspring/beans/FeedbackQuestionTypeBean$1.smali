.class Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;
    .locals 1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean$1;->newArray(I)[Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;

    move-result-object p1

    return-object p1
.end method
