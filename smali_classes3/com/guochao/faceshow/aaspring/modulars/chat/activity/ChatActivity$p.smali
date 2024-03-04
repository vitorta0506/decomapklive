.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


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
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideoDetail(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p;->a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    return-void
.end method
