.class Lcom/guochao/faceshow/aaspring/modulars/live/game/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1205b6

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->B()V

    return-void
.end method
