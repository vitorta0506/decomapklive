.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->q:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->start()V

    :cond_1
    :goto_0
    return-void
.end method
