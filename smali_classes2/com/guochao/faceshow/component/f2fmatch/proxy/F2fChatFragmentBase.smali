.class public interface abstract Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\nH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0008\u0010\u0014\u001a\u00020\u0003H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;",
        "",
        "awakenChatRecyclerView",
        "",
        "detectNoFaceOnScreen",
        "enterInput",
        "textOrSpeech",
        "",
        "focusSomebody",
        "gcUser",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "showFoucusMessage",
        "removeCurrentGuass",
        "f2fMatchRoomInfo",
        "sendSpeechToTextResult",
        "f2fSpeechToTextResultModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
        "sendText",
        "text",
        "",
        "showGiftDialog",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract awakenChatRecyclerView()V
.end method

.method public abstract detectNoFaceOnScreen()V
.end method

.method public abstract enterInput(Z)V
.end method

.method public abstract focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removeCurrentGuass(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sendSpeechToTextResult(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sendText(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showGiftDialog()V
.end method
