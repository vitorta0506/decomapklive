.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;->b(Ljava/lang/Void;)V

    return-void
.end method

.method public b(Ljava/lang/Void;)V
    .locals 0
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    :cond_0
    return-void
.end method
