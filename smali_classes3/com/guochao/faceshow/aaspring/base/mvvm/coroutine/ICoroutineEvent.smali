.class public interface abstract Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J@\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010\u0017\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010\u0018\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010\u0019\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010\u001a\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010\u001b\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J9\u0010\u001c\u001a\u00020\u001d2\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ9\u0010 \u001a\u00020\u001d2\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ9\u0010!\u001a\u00020\u001d2\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ9\u0010\"\u001a\u00020\u001d2\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ9\u0010#\u001a\u00020\u001d2\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ9\u0010$\u001a\u00020\u001d2\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ@\u0010%\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010&\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010\'\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J@\u0010(\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016JD\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00110)\"\u0004\u0008\u0000\u0010\u0011*\u00020\u00072\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0002\u00f8\u0001\u0000JD\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00110)\"\u0004\u0008\u0000\u0010\u0011*\u00020\u00072\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0002\u00f8\u0001\u0000JD\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00110)\"\u0004\u0008\u0000\u0010\u0011*\u00020\u00072\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0002\u00f8\u0001\u0000J8\u0010\u001c\u001a\u00020\u001d*\u00020\u00072\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0002\u00f8\u0001\u0000J8\u0010!\u001a\u00020\u001d*\u00020\u00072\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0002\u00f8\u0001\u0000J8\u0010#\u001a\u00020\u001d*\u00020\u00072\'\u0010\u0012\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u00a2\u0006\u0002\u0008\u0015H\u0002\u00f8\u0001\u0000R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0012\u0010\u000c\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;",
        "",
        "cpuDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getCpuDispatcher",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "globalScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getGlobalScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "ioDispatcher",
        "getIoDispatcher",
        "lifecycleSupportedScope",
        "getLifecycleSupportedScope",
        "mainDispatcher",
        "getMainDispatcher",
        "asyncCPU",
        "T",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "asyncCPUG",
        "asyncIO",
        "asyncIOG",
        "asyncMain",
        "asyncMainG",
        "launchCPU",
        "Lkotlinx/coroutines/Job;",
        "",
        "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;",
        "launchCPUG",
        "launchIO",
        "launchIOG",
        "launchMain",
        "launchMainG",
        "withCPU",
        "withIO",
        "withMain",
        "withNonCancellable",
        "Lkotlinx/coroutines/Deferred;",
        "lib_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract asyncCPU(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract asyncCPUG(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract asyncIO(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract asyncIOG(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract asyncMain(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract asyncMainG(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCpuDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getGlobalScope()Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getIoDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLifecycleSupportedScope()Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMainDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract launchCPU(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract launchCPUG(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract launchIOG(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract launchMain(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract launchMainG(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract withCPU(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract withIO(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract withMain(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract withNonCancellable(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
