.class final Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->initView$lambda-1(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Integer;",
        ">;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
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
    c = "com.guochao.component.mvp.fragment.GiftSelectFragment$initView$2$1"
    f = "GiftSelectFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/fragment/GiftSelectFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-direct {v0, v1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4
    :goto_0
    sget-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;

    .line 5
    iget-object v2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-virtual {v2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getMAdapter()Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-virtual {v3}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getMAdapter()Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->getSelectedPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/component/mvp/model/TypeData;

    .line 6
    invoke-virtual {v3, p1}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    .line 7
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;->newInstance(Ljava/util/List;)Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "parentFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "giftSelectSuccess"

    invoke-virtual {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 11
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getCallBack()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    sget v3, Lcom/guochao/component/mvp/R$string;->error_code:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "getString(R.string.error_code, it.code)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 13
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
