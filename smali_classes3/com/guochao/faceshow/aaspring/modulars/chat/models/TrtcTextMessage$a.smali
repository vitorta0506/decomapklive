.class Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->translate(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->access$102(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    invoke-interface {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;->a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V

    :cond_1
    :goto_0
    return-void
.end method
