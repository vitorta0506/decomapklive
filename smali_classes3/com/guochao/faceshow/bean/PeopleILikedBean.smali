.class public Lcom/guochao/faceshow/bean/PeopleILikedBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;,
        Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private pageSize:I


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
            "Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean;->pageSize:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean;->pageSize:I

    return-void
.end method
