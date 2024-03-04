.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->showDeleteTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;->invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->getUserIds()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->access$getVoiceRoomId(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$1;

    invoke-direct {v3, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V

    sget-object v4, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$2;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$2;

    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberRemove(Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    :cond_0
    return-void
.end method
