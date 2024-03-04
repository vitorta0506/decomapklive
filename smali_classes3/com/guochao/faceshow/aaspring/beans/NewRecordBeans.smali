.class public Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:Ljava/lang/Integer;

.field private pageSize:Ljava/lang/Integer;

.field private total:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->page:Ljava/lang/Integer;

    return-void
.end method

.method public setPageSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->pageSize:Ljava/lang/Integer;

    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->total:Ljava/lang/Integer;

    return-void
.end method
