.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->x1()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;ILcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 0

    .line 1
    instance-of p1, p2, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1, p4}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->b0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 4
    iget p1, p4, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    const/4 p2, -0x3

    if-ne p1, p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->d0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1, p4}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->u0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    :goto_0
    return-void
.end method

.method public b(ILandroid/view/View;ILcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$k;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1, p4}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Q0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    return-void
.end method
