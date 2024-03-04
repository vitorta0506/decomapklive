.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->g2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const v3, 0x7f120915

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->B(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
