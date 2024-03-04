.class Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->requestFocus(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getIsAttention()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->setIsAttention(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->focus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->access$100(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->access$100(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;->onFocus()V

    :cond_0
    return-void
.end method
