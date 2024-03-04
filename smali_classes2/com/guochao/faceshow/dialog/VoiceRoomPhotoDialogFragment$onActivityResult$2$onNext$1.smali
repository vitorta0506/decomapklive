.class public final Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2;->onNext(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\"\u0010\r\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000bH\u0016J\u0018\u0010\u0010\u001a\u00020\u00082\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000eH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d;",
        "",
        "",
        "current",
        "total",
        "",
        "progress",
        "",
        "onProgress",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1;->this$0:Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JJD)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;

    .line 4
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->getResult()Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1;->this$0:Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;->access$getDisplayer$p(Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;)Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;->notifyLocalImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
