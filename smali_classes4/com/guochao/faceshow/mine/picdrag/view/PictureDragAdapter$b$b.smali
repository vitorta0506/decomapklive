.class Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->c(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

.field final synthetic c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;ILcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    iput p2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->b:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->b(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->b(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->c(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->c(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->a:I

    iget-object v3, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;->b:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;->b(ILandroid/view/View;ILcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    :cond_1
    return-void
.end method
