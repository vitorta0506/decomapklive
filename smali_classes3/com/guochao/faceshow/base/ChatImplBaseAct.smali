.class public abstract Lcom/guochao/faceshow/base/ChatImplBaseAct;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/ChatView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendMessageFail(ILjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    return-void
.end method

.method public sendImage()V
    .locals 0

    return-void
.end method

.method public sendText()V
    .locals 0

    return-void
.end method

.method public sending()V
    .locals 0

    return-void
.end method

.method public showDraft(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    return-void
.end method

.method public showMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
