.class final Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
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
    c = "com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$CountDownTask$1"
    f = "F2fMatchActivity.kt"
    i = {
        0x0
    }
    l = {
        0x2d4
    }
    m = "invokeSuspend"
    n = {
        "time"
    }
    s = {
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $textView:Landroid/widget/TextView;

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

.field final synthetic this$1:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;",
            "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->$textView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->this$1:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->this$1:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;-><init>(Landroid/widget/TextView;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
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
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-wide v4, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->J$0:J

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

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->$textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->$textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xc350

    add-long/2addr v4, v6

    :goto_0
    move-object p1, p0

    .line 7
    :cond_2
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->getCancel()Z

    move-result v1

    if-nez v1, :cond_6

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 10
    iget-object v1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->$textView:Landroid/widget/TextView;

    .line 11
    sget-object v8, Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;

    invoke-virtual {v8, v6, v7}, Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;->timeToString(J)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v8, 0x3a98

    cmp-long v1, v6, v8

    if-gtz v1, :cond_3

    .line 13
    iget-object v1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->$textView:Landroid/widget/TextView;

    const-string v8, "#F9447F"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    long-to-float v1, v6

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v1, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v1, v8

    float-to-int v1, v1

    const/16 v8, 0xa

    if-ne v1, v8, :cond_4

    .line 14
    sget-object v1, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->startPlay()V

    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v6, 0x3e8

    .line 15
    iput-wide v4, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->J$0:J

    iput v3, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->label:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    .line 16
    :cond_6
    :goto_1
    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->stopPlay()V

    .line 17
    iget-object v0, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->$textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->getExitRoomOnCancel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;->this$1:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v2, v3, v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer$DefaultImpls;->exitCurrentRoom$default(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;ZILjava/lang/Object;)V

    .line 20
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
