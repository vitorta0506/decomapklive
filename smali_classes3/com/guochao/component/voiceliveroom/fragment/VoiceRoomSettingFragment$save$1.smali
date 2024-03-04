.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "",
        "it",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.guochao.component.voiceliveroom.fragment.VoiceRoomSettingFragment$save$1"
    f = "VoiceRoomSettingFragment.kt"
    i = {}
    l = {
        0xac
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

.field synthetic I$0:I

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;",
            "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->$dialog:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->$dialog:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

    invoke-direct {v0, v1, v2, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->I$0:I

    return-object v0
.end method

.method public final invoke(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->invoke(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->I$0:I

    if-ne p1, v2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    sget v0, Lcom/guochao/component/liveroom/R$string;->save_successful:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->$dialog:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 6
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->$dialog:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;->getViewBinding()Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;->info:Landroid/widget/TextView;

    sget v1, Lcom/guochao/component/liveroom/R$string;->saved_error:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->$dialog:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;->getViewBinding()Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;->loading:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->clearPlay()V

    .line 10
    sget v1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_save_failed:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-wide/16 v3, 0x7d0

    .line 11
    iput v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$save$1;->$dialog:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 13
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
