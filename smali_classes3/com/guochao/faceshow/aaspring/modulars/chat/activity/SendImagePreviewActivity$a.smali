.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$a;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->v0(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z

    return-void
.end method
