.class final Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert$lambda-4$lambda-3(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
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
    c = "com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$3$1$2"
    f = "MVPListFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $item:Lcom/guochao/component/mvp/model/GiftModel;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

.field final synthetic this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            "Lcom/guochao/component/mvp/fragment/MVPListFragment;",
            "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    iput-object p3, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    iget-object v2, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    iget-object v3, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;-><init>(Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/mvp/model/TypeData;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;

    .line 7
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;->newInstance(Ljava/util/List;)Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "parentFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "giftSelectSuccess"

    invoke-virtual {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/model/TypeData;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/component/mvp/model/TypeData;->setStatus(Ljava/lang/Integer;)V

    .line 11
    :goto_2
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/component/mvp/activity/MVPActivity;

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.component.mvp.activity.MVPActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/component/mvp/activity/MVPActivity;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->checkGetAll()V

    goto :goto_3

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 15
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    sget v3, Lcom/guochao/component/mvp/R$string;->error_code:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "getString(R.string.error_code, it.code)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 17
    :cond_4
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
