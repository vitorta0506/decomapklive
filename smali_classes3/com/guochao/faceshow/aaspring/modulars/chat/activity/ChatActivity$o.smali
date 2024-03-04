.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendVideoMessage(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->buildVideoMessage(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;->a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
