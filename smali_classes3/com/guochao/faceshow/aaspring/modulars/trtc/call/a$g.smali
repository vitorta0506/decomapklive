.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field final synthetic g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->a:Ljava/lang/String;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->b:I

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->c:I

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->f:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public c(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->e(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;I)I

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->f:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->e:Ljava/lang/String;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/b;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->c:I

    const/16 v0, 0xfa5

    packed-switch p1, :pswitch_data_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->businessId:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0xfa4

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xfa6

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xfa3

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xfa2

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xfa1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "%s....%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->d(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->f(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->a:Ljava/lang/String;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->b:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->c:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->e(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;I)I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->g:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->e:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->c(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method
