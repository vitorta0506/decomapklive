.class final Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;J)V
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
    c = "com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$CountUpTask$1"
    f = "F2fMatchActivity.kt"
    i = {
        0x0
    }
    l = {
        0x301
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

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->$textView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    invoke-direct {p1, v0, v1, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;-><init>(Landroid/widget/TextView;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v3, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->J$0:J

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
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->$textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->$textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;->getLastTime()J

    move-result-wide v3

    :goto_0
    move-object p1, p0

    .line 7
    :cond_2
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;->getCancel()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 10
    iget-object v1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->$textView:Landroid/widget/TextView;

    .line 11
    sget-object v7, Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;

    invoke-virtual {v7, v5, v6}, Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;->timeToString(J)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0x3e8

    .line 13
    iput-wide v3, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->J$0:J

    iput v2, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->label:I

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    .line 14
    :cond_3
    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask$1;->$textView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
