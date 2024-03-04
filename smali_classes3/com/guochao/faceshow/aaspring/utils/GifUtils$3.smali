.class Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/GifUtils;->convertMp4ToGif(Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;)V
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
.field final synthetic val$gifSavePath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

.field final synthetic val$mp4Path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$mp4Path:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$gifSavePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$mp4Path:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$gifSavePath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;->onEncodeFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$mp4Path:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;->val$gifSavePath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;->onEncodeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
