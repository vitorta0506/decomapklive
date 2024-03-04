.class Lcom/guochao/faceshow/activity/PushVideoActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/PushVideoActivity$a;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/PushVideoActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/PushVideoActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a$a;->a:Lcom/guochao/faceshow/activity/PushVideoActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p2, "upLoadOver"

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$a$a;->a:Lcom/guochao/faceshow/activity/PushVideoActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/PushVideoActivity$a;->b:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->finish()V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
