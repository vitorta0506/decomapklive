.class public Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/PageBeanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageBean"
.end annotation


# instance fields
.field private count:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DressUpData;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private size:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/beans/PageBeanData;

.field private total:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/PageBeanData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->this$0:Lcom/guochao/faceshow/aaspring/beans/PageBeanData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->page:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DressUpData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->size:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->count:I

    return v0
.end method

.method public setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->page:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DressUpData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->size:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->total:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->count:I

    return-void
.end method
