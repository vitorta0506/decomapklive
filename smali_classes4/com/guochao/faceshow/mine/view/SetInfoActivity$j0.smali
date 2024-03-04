.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->X0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setData(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->a1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/util/List;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->W0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$j0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->X0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->f()V

    :cond_3
    :goto_1
    return-void
.end method
