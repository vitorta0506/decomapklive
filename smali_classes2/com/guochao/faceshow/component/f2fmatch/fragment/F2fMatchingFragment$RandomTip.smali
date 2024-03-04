.class public final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RandomTip"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "textView",
        "Landroid/widget/TextView;",
        "array",
        "",
        "",
        "(Lkotlinx/coroutines/CoroutineScope;Landroid/widget/TextView;[Ljava/lang/Integer;)V",
        "index",
        "matching",
        "",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "getTextView",
        "()Landroid/widget/TextView;",
        "cancel",
        "",
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
.field private index:I

.field private matching:Z

.field private final scope:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/widget/TextView;[Ljava/lang/Integer;)V
    .locals 6
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->matching:Z

    .line 3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p3, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;[Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->index:I

    return p0
.end method

.method public static final synthetic access$getMatching$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->matching:Z

    return p0
.end method

.method public static final synthetic access$setIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->index:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->matching:Z

    return-void
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->textView:Landroid/widget/TextView;

    return-object v0
.end method
