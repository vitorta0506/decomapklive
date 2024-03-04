.class public Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;,
        Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;
    }
.end annotation


# instance fields
.field private page:Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

.field private total:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;",
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
.method public getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->page:Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    return-object v0
.end method

.method public getTotal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->total:Ljava/util/List;

    return-object v0
.end method

.method public setPage(Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->page:Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    return-void
.end method

.method public setTotal(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->total:Ljava/util/List;

    return-void
.end method
