.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;->loadMsg(Ljava/lang/String;Ljava/util/ArrayList;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "+",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback;",
        "",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "onError",
        "",
        "code",
        "",
        "errorMsg",
        "",
        "onSuccess",
        "dataList",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callBack:Lcom/tencent/imsdk/v2/V2TIMValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $msgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$msgList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$callBack:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$callBack:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$msgList:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$msgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$msgList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->$callBack:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;->access$loadMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;Ljava/lang/String;Ljava/util/ArrayList;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    const-string v0, ""

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$2;->onError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
