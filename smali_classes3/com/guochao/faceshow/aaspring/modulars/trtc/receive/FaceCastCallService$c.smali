.class Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->g(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
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

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$c;->e(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method

.method private static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->D(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Z)V

    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo NEX A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "G8142"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INE-AL00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/a;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
