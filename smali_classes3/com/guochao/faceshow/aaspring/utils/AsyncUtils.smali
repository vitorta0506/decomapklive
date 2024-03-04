.class public final Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Jf\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\'\u0008\u0002\u0010\u0007\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00082#\u0010\u000c\u001a\u001f\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008H\u0007J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;",
        "",
        "()V",
        "run",
        "",
        "async",
        "Lkotlin/Function0;",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "any",
        "error",
        "",
        "e",
        "Ljava/lang/Runnable;",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$lambda-1(Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Runnable;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$lambda-0(Ljava/lang/Runnable;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final run(Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "async"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$default(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final run(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "async"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$default(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final run(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "async"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p0

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils$run$2;

    invoke-direct {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils$run$2;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public static final run(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "async"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$default(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final run(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "async"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p0

    .line 5
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils$run$4;

    invoke-direct {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils$run$4;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public static synthetic run$default(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic run$default(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final run$lambda-0(Ljava/lang/Runnable;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 1

    const-string v0, "$async"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const-string p0, ""

    return-object p0
.end method

.method private static final run$lambda-1(Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 1

    const-string v0, "$async"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
