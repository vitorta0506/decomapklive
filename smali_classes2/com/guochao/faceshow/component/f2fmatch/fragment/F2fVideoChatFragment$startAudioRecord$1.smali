.class final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->startAudioRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;->invoke(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getFinalResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->inputMessage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->access$getF2fChatFragmentBase$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->sendSpeechToTextResult(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    :cond_1
    return-void
.end method
