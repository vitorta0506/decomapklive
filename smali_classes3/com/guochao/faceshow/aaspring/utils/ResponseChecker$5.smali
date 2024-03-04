.class Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;->checkFreeze(ILorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$5;->this$0:Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$5;->this$0:Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;->access$000(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12009c

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method
