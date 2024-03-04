.class Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding$1;
.super Lbutterknife/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;

.field final synthetic val$target:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding$1;->val$target:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-direct {p0}, Lbutterknife/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding$1;->val$target:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->save(Landroid/view/View;)V

    return-void
.end method
