.class Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method
