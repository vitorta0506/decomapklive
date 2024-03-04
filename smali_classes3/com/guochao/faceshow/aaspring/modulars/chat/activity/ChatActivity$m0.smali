.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m0;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m0"
.end annotation


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    return-void
.end method


# virtual methods
.method a(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCallBack:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;->onError(ILjava/lang/String;)V

    return-void
.end method

.method b(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$1500(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCallBack:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;->c(Ljava/util/List;)V

    return-void
.end method
