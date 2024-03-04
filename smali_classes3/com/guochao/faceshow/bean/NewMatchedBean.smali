.class public Lcom/guochao/faceshow/bean/NewMatchedBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


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
            "Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/NewMatchedBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/NewMatchedBean;->total:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/bean/NewMatchedBean;->list:Ljava/util/List;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/NewMatchedBean;->total:I

    return-void
.end method
