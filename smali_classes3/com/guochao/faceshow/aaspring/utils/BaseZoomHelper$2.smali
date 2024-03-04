.class Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onDragPercent(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    rsub-int p1, p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method
