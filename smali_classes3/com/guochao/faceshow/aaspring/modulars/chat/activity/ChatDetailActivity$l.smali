.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
