.class Lcom/guochao/faceshow/activity/PushVideoActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/PushVideoActivity;->r0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/activity/PushVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/PushVideoActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->l0(Lcom/guochao/faceshow/activity/PushVideoActivity;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    new-instance v1, Lcom/guochao/faceshow/activity/PushVideoActivity$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/PushVideoActivity$a$a;-><init>(Lcom/guochao/faceshow/activity/PushVideoActivity$a;)V

    const-string v2, ""

    invoke-virtual {v0, v2, p1, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;)Lcom/guochao/faceshow/views/e;

    return-void
.end method

.method public onSuccessful()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "upLoadOver"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->b0(Lcom/guochao/faceshow/activity/PushVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->b0(Lcom/guochao/faceshow/activity/PushVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->d0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->i0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->g0(Lcom/guochao/faceshow/activity/PushVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->k0(Lcom/guochao/faceshow/activity/PushVideoActivity;)V

    return-void
.end method
