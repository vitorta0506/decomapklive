.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendImageFile(ZLcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;->a:Z

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ZLjava/lang/String;)V

    return-void
.end method
