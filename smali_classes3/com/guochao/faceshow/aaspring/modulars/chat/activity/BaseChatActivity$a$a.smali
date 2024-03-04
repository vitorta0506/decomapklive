.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->onResponse(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->scrollToEnd(ZZ)V

    return-void
.end method
