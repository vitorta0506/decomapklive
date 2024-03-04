.class public Lcom/guochao/faceshow/aaspring/beans/VideoList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currPage:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;"
        }
    .end annotation
.end field

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

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoList;->currPage:I

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoList;->totalPage:I

    return v0
.end method

.method public setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoList;->currPage:I

    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoList;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoList;->totalPage:I

    return-void
.end method
