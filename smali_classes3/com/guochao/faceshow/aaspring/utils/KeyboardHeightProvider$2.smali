.class Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->access$000(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->access$100(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V

    :cond_0
    return-void
.end method
