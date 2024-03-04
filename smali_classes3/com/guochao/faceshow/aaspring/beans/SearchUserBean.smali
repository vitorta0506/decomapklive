.class public Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private currPage:I

.field private pageSize:I

.field private searchType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->currPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->pageSize:I

    return v0
.end method

.method public getSearchType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->searchType:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->currPage:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->pageSize:I

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->searchType:I

    return-void
.end method
