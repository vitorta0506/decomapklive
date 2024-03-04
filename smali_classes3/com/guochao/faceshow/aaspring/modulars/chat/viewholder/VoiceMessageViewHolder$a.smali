.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field final synthetic c:Lcom/tencent/imsdk/v2/V2TIMSoundElem;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/tencent/imsdk/v2/V2TIMSoundElem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->c:Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/utils/MD5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->setVoiceFileUrl(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    const-string v2, "voice"

    const-string v3, "original"

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;->getBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->c:Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->downloadSound(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;->a(Ljava/lang/String;)V

    return-void
.end method
