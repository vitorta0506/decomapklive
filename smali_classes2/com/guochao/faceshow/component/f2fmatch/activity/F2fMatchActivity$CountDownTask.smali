.class public final Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountDownTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;",
        "",
        "textView",
        "Landroid/widget/TextView;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;)V",
        "value",
        "",
        "cancel",
        "getCancel",
        "()Z",
        "setCancel",
        "(Z)V",
        "exitRoomOnCancel",
        "getExitRoomOnCancel",
        "setExitRoomOnCancel",
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


# instance fields
.field private cancel:Z

.field private exitRoomOnCancel:Z

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "textView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->exitRoomOnCancel:Z

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p0, p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask$1;-><init>(Landroid/widget/TextView;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->cancel:Z

    return v0
.end method

.method public final getExitRoomOnCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->exitRoomOnCancel:Z

    return v0
.end method

.method public final setCancel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->cancel:Z

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->stopPlay()V

    :cond_0
    return-void
.end method

.method public final setExitRoomOnCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->exitRoomOnCancel:Z

    return-void
.end method
