.class final Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView$lambda-5(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V
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
    c = "com.guochao.component.mvp.fragment.AnchorSetedToTopFragment$initView$7$1"
    f = "AnchorSetedToTopFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

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

    new-instance v0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-direct {v0, v1, p2}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->label:I

    if-nez v0, :cond_b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getCallBack()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/guochao/component/mvp/R$string;->mvp_set_top_success:I

    invoke-static {p1, v0, v4, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 6
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto/16 :goto_5

    :cond_2
    :goto_0
    const/4 v5, 0x2

    if-nez v0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 8
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/guochao/component/mvp/R$string;->mvp_set_top_time_conflict:I

    invoke-static {p1, v0, v4, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto/16 :goto_5

    :cond_4
    :goto_1
    const/16 v5, 0x65

    if-nez v0, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 10
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/guochao/component/mvp/R$string;->mvp_set_top_time_user_no_broadcast:I

    invoke-static {p1, v0, v4, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_5

    :cond_6
    :goto_2
    const/16 v5, 0x66

    if-nez v0, :cond_7

    goto :goto_3

    .line 11
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_8

    .line 12
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/guochao/component/mvp/R$string;->mvp_set_top_time_user_freeze:I

    invoke-static {p1, v0, v4, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_5

    :cond_8
    :goto_3
    const/16 v5, 0x67

    if-nez v0, :cond_9

    goto :goto_4

    .line 13
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 14
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/guochao/component/mvp/R$string;->mvp_set_top_time_input_right:I

    invoke-static {p1, v0, v4, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_5

    .line 15
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    sget v2, Lcom/guochao/component/mvp/R$string;->error_code:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "getString(R.string.error_code, it.code)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 16
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
