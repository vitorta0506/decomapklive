.class Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$p;
.super Lcom/guochao/faceshow/utils/ArequestCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->T(Lcom/guochao/faceshow/aaspring/beans/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/utils/ArequestCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Landroid/app/Activity;Lcom/guochao/faceshow/utils/Ahttp;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$p;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/ArequestCallBack;-><init>(Landroid/app/Activity;Lcom/guochao/faceshow/utils/Ahttp;)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 0

    invoke-super {p0}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onFinished()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onSuccess(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->aresult:Lcom/guochao/faceshow/utils/AResult;

    iget v0, p1, Lcom/guochao/faceshow/utils/AResult;->code:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$p;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    iget p1, p1, Lcom/guochao/faceshow/utils/AResult;->levelId:I

    const-string v1, "levelId"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
