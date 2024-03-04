.class public Lcom/guochao/faceshow/aaspring/beans/BlackResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;
    }
.end annotation


# instance fields
.field private ActionStatus:Ljava/lang/String;

.field private ErrorCode:I

.field private ErrorDisplay:Ljava/lang/String;

.field private ErrorInfo:Ljava/lang/String;

.field private ResultItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ActionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ErrorCode:I

    return v0
.end method

.method public getErrorDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ErrorDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ErrorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ResultItem:Ljava/util/List;

    return-object v0
.end method

.method public setActionStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ActionStatus:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ErrorCode:I

    return-void
.end method

.method public setErrorDisplay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ErrorDisplay:Ljava/lang/String;

    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ErrorInfo:Ljava/lang/String;

    return-void
.end method

.method public setResultItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse;->ResultItem:Ljava/util/List;

    return-void
.end method
