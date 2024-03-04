.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;
    }
.end annotation


# instance fields
.field private currPage:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I

.field private totalCount:I

.field private totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->currPage:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->pageSize:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->totalPage:I

    return v0
.end method

.method public setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->currPage:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->list:Ljava/util/List;

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->pageSize:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->totalCount:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->totalPage:I

    return-void
.end method
