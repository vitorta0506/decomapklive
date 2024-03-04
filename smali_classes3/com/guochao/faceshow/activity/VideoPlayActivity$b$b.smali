.class Lcom/guochao/faceshow/activity/VideoPlayActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/VideoPlayActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/VideoPlayActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    new-instance p1, Ly7/i;

    invoke-direct {p1}, Ly7/i;-><init>()V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Ly7/i;->c(I)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Ly7/i;->d(I)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity$b$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;->a:Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
