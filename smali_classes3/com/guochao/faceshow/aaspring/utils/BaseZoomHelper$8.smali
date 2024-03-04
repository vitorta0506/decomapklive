.class Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->showIndex()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewSave:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->onShowActionArea()V

    return-void
.end method
