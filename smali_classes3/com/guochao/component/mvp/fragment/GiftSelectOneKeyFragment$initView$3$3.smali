.class final Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->initView$lambda-8(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V
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
    c = "com.guochao.component.mvp.fragment.GiftSelectOneKeyFragment$initView$3$3"
    f = "GiftSelectOneKeyFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->$dataList:Ljava/util/ArrayList;

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

    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    iget-object v2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->$dataList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->$dataList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->access$hasDressup(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;

    .line 5
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->$dataList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;->newInstance(Ljava/util/List;)Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v3, "parentFragmentManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "giftSelectSuccess"

    invoke-virtual {p1, v0, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getCallBack()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/guochao/component/mvp/R$string;->mvp_gift_select_success_title:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 10
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_2

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x2

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 12
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 13
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    sget v1, Lcom/guochao/component/mvp/R$string;->mvp_toast_get_diamond_status_error:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.mvp_t\u2026get_diamond_status_error)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_2

    .line 15
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    sget v4, Lcom/guochao/component/mvp/R$string;->error_code:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "getString(R.string.error_code, it.code)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 16
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
