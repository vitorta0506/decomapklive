.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;->b:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V

    return-void
.end method
