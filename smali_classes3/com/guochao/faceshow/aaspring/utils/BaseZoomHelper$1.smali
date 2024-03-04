.class Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragFinish(Z)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->resetZoom()V

    return-void
.end method
