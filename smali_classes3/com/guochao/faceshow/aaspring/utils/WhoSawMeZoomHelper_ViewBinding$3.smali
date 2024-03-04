.class Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$3;
.super Lbutterknife/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;

.field final synthetic val$target:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$3;->val$target:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-direct {p0}, Lbutterknife/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$3;->val$target:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->startChat(Landroid/view/View;)V

    return-void
.end method
