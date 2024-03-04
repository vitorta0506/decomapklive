.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 4

    .line 2
    iget-boolean p1, p1, Lte/a;->b:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "5"

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3, v0}, Lcom/guochao/faceshow/utils/ReportController;->afterBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
