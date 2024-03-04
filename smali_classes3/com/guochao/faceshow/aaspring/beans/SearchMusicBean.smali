.class public Lcom/guochao/faceshow/aaspring/beans/SearchMusicBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currPage:I

.field public musicName:Ljava/lang/String;

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchMusicBean;->currPage:I

    return v0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchMusicBean;->musicName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchMusicBean;->pageSize:I

    return v0
.end method

.method public setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchMusicBean;->currPage:I

    return-void
.end method

.method public setMusicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchMusicBean;->musicName:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchMusicBean;->pageSize:I

    return-void
.end method
