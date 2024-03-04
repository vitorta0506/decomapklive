.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;->loadMsg(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/ArrayList<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$1",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback;",
        "Ljava/util/ArrayList;",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "onError",
        "",
        "p0",
        "",
        "p1",
        "",
        "onSuccess",
        "v2TIMMessageList",
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
.field final synthetic $activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$1;->$activity:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$1;->$userName:Ljava/lang/String;

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

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$1;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$1;->$activity:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$loadMsg$1;->$userName:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;->access$parseMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
