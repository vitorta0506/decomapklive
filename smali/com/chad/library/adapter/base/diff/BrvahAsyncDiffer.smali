.class public final Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u00016B\'\u0012\u0010\u0010$\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030#\u0012\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000&\u00a2\u0006\u0004\u00084\u00105J(\u0010\n\u001a\u00020\t2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J \u0010\r\u001a\u00020\t2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J\u001d\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0013J\u0016\u0010\u0015\u001a\u00020\t2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000bJ\'\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eJ\u0015\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u0013J$\u0010\u001d\u001a\u00020\t2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u0016\u0010 \u001a\u00020\t2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001eH\u0016J\u0014\u0010!\u001a\u00020\t2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001eJ\u0006\u0010\"\u001a\u00020\tR\u001e\u0010$\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010.R \u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001e0\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00102\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00067"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;",
        "T",
        "",
        "",
        "newList",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "diffResult",
        "Ljava/lang/Runnable;",
        "commitCallback",
        "",
        "latchList",
        "",
        "previousList",
        "onCurrentListChanged",
        "",
        "index",
        "data",
        "addData",
        "(ILjava/lang/Object;)V",
        "(Ljava/lang/Object;)V",
        "list",
        "addList",
        "newData",
        "payload",
        "changeData",
        "(ILjava/lang/Object;Ljava/lang/Object;)V",
        "removeAt",
        "t",
        "remove",
        "submitList",
        "Lcom/chad/library/adapter/base/diff/c;",
        "listener",
        "addListListener",
        "removeListListener",
        "clearAllListListener",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "adapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;",
        "config",
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "mUpdateCallback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "Ljava/util/concurrent/Executor;",
        "mMainThreadExecutor",
        "Ljava/util/concurrent/Executor;",
        "sMainThreadExecutor",
        "mListeners",
        "Ljava/util/List;",
        "mMaxScheduledGeneration",
        "I",
        "<init>",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V",
        "MainThreadExecutor",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/diff/c<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mMaxScheduledGeneration:I

.field private final mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sMainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;*>;",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    .line 3
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 4
    new-instance p1, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;

    invoke-direct {p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList$lambda-1$lambda-0(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    return-object p0
.end method

.method public static synthetic b(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList$lambda-1(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    return-void
.end method

.method private final latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/diff/c;

    .line 2
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/chad/library/adapter/base/diff/c;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public static synthetic submitList$default(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final submitList$lambda-1(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$oldList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;-><init>(Ljava/util/List;Ljava/util/List;Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v5

    const-string p1, "@JvmOverloads\n    fun su\u2026        }\n        }\n    }"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chad/library/adapter/base/diff/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/chad/library/adapter/base/diff/a;-><init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final submitList$lambda-1$lambda-0(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMaxScheduledGeneration:I

    if-ne v0, p1, :cond_0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addData(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v1, 0x1

    invoke-interface {p2, p1, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addData(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1, v2, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public addListListener(Lcom/chad/library/adapter/base/diff/c;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/diff/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/diff/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final changeData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v1, 0x1

    invoke-interface {p2, p1, v1, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearAllListListener()V
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeAt(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeListListener(Lcom/chad/library/adapter/base/diff/c;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/diff/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/diff/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList$default(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    iget v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMaxScheduledGeneration:I

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 7
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 8
    invoke-direct {p0, v3, p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 11
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 12
    invoke-direct {p0, v3, p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/chad/library/adapter/base/diff/b;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/chad/library/adapter/base/diff/b;-><init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
