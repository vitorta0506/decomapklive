.class Lcom/guochao/faceshow/utils/Tool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/Tool;->creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/Tool;->setBackgroundAlpha(Landroid/app/Activity;F)V

    return-void
.end method
