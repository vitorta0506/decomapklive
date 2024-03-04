.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMCompleteCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    const p2, 0x7f0a0e2c

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$c;->a(ILjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method
