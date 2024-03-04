.class public final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "lastChecked",
        "",
        "check",
        "",
        "item",
        "Landroid/content/ClipData$Item;",
        "checkEmailRecall",
        "",
        "context",
        "Landroid/content/Context;",
        "checkSaved",
        "uploadDataToServer",
        "string",
        "app_GooglePlayRelease"
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
.field private lastChecked:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    return-void
.end method

.method public static final synthetic access$uploadDataToServer(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;->uploadDataToServer(Ljava/lang/String;)V

    return-void
.end method

.method private final check(Landroid/content/ClipData$Item;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x2

    const-string v3, "BuzzCast-Recall-"

    .line 2
    invoke-static {v1, v3, p1, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "BuzzCast-Recall-"

    const-string v3, ""

    .line 3
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final checkSaved()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel$checkSaved$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel$checkSaved$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final uploadDataToServer(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel$uploadDataToServer$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel$uploadDataToServer$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final checkEmailRecall(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;->lastChecked:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;->checkSaved()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;->lastChecked:J

    const-string v0, "clipboard"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "\u526a\u5207\u677f\u5185\u5bb9\u4e3anull"

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "\u526a\u5207\u677f\u5185\u5bb9\u4e3a\u7a7a"

    .line 8
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_5

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    const-string v4, "data"

    .line 11
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;->check(Landroid/content/ClipData$Item;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    .line 13
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;->uploadDataToServer(Ljava/lang/String;)V

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
