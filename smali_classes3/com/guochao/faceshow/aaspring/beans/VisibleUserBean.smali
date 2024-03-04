.class public Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isAllSelected:Z

.field private isSelected:Z

.field private selectInvisibleName:Ljava/lang/String;

.field private selectInvisibleUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
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
.method public getSelectInvisibleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->selectInvisibleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectInvisibleUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->selectInvisibleUsers:Ljava/util/List;

    return-object v0
.end method

.method public isAllSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->isAllSelected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->isSelected:Z

    return v0
.end method

.method public setAllSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->isAllSelected:Z

    return-void
.end method

.method public setSelectInvisibleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->selectInvisibleName:Ljava/lang/String;

    return-void
.end method

.method public setSelectInvisibleUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->selectInvisibleUsers:Ljava/util/List;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->isSelected:Z

    return-void
.end method
