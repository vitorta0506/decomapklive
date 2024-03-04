.class public final Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2",
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;",
        "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
        "onNext",
        "",
        "o",
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
.field final synthetic this$0:Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2;->this$0:Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1;

    iget-object v1, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2;->this$0:Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1;-><init>(Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;)V

    .line 5
    invoke-static {p1, v0}, Lba/a;->q(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2;->onNext(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V

    return-void
.end method
