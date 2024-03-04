.class public final Lcom/guochao/faceshow/gift/view/GiftComboView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/gift/view/GiftComboView$Companion;,
        Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;,
        Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;,
        Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0002SV\u0018\u0000 f2\u00020\u00012\u00020\u0002:\u0004gfhiB\u001d\u0008\u0007\u0012\u0006\u0010a\u001a\u00020`\u0012\n\u0008\u0002\u0010c\u001a\u0004\u0018\u00010b\u00a2\u0006\u0004\u0008d\u0010eJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0008H\u0002J&\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0002J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0006\u0010\u0019\u001a\u00020\u0003J\u0010\u0010\u001c\u001a\u00020\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ$\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0008\u0010 \u001a\u0004\u0018\u00010\u001fR\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010%\u001a\u0004\u0018\u00010$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R$\u0010)\u001a\u0012\u0012\u0004\u0012\u00020\u00080\'j\u0008\u0012\u0004\u0012\u00020\u0008`(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\"\u0010.\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u00107\u001a\u0002048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00087\u00106R\u0014\u00108\u001a\u0002048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00088\u00106R\u0014\u0010:\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010;R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010?R\"\u0010A\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010-\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\"\u0010\r\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010/\u001a\u0004\u0008E\u00101\"\u0004\u0008F\u00103R2\u0010K\u001a\u001e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020I0Gj\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020I`J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010M\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010OR\u0014\u0010Q\u001a\u00020P8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0014\u0010T\u001a\u00020S8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0014\u0010W\u001a\u00020V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0014\u0010Z\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010[R\u0014\u0010]\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010[R\u0016\u0010^\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010-R\u0014\u0010_\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008_\u0010[\u00a8\u0006j"
    }
    d2 = {
        "Lcom/guochao/faceshow/gift/view/GiftComboView;",
        "Landroid/widget/RelativeLayout;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "",
        "play",
        "",
        "duration",
        "finish",
        "",
        "num",
        "setNum",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "mCurrentGiftItemData",
        "count",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
        "users",
        "setCurrentKey",
        "putMap",
        "getCont",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "addLifecycleObserver",
        "owner",
        "onDestroy",
        "reset",
        "Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;",
        "listener",
        "setComboListener",
        "c",
        "show",
        "",
        "getComboLocation",
        "Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;",
        "binding",
        "Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;",
        "Landroid/os/Vibrator;",
        "vibratorManager",
        "Landroid/os/Vibrator;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "numList",
        "Ljava/util/ArrayList;",
        "",
        "isAccept",
        "Z",
        "currentComboId",
        "I",
        "getCurrentComboId",
        "()I",
        "setCurrentComboId",
        "(I)V",
        "",
        "top",
        "F",
        "bottom",
        "half",
        "Landroid/animation/AnimatorSet;",
        "animatorSet",
        "Landroid/animation/AnimatorSet;",
        "perfectAnimatorSet",
        "Landroid/animation/ObjectAnimator;",
        "numYAnimator",
        "Landroid/animation/ObjectAnimator;",
        "anim",
        "isTouch",
        "()Z",
        "setTouch",
        "(Z)V",
        "getCount",
        "setCount",
        "Ljava/util/HashMap;",
        "",
        "Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;",
        "Lkotlin/collections/HashMap;",
        "countMap",
        "Ljava/util/HashMap;",
        "mCurrentKey",
        "Ljava/lang/String;",
        "Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;",
        "Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;",
        "handler",
        "Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;",
        "com/guochao/faceshow/gift/view/GiftComboView$runnable$1",
        "runnable",
        "Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;",
        "com/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1",
        "shakeRunnable",
        "Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;",
        "Ljava/lang/Runnable;",
        "reSetRunnable",
        "Ljava/lang/Runnable;",
        "realTimeOut",
        "finishRunnable",
        "isBallRunning",
        "ballRunnable",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Companion",
        "ComboViewListener",
        "TimeCount",
        "UIHandler",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/gift/view/GiftComboView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DURATION_CACHE:J = 0x13ecL

.field private static final DURATION_COMBO_CHANGE:J = 0xfaL

.field private static final DURATION_DISMISS:J = 0x1388L


# instance fields
.field private final anim:Landroid/animation/ObjectAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animatorSet:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ballRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bottom:F

.field private count:I

.field private countMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentComboId:I

.field private final finishRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final half:F

.field private final handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAccept:Z

.field private isBallRunning:Z

.field private isTouch:Z

.field private listener:Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCurrentKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final numList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private numYAnimator:Landroid/animation/ObjectAnimator;

.field private final perfectAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reSetRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final realTimeOut:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final runnable:Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shakeRunnable:Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final top:F

.field private final vibratorManager:Landroid/os/Vibrator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/gift/view/GiftComboView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/gift/view/GiftComboView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->Companion:Lcom/guochao/faceshow/gift/view/GiftComboView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object p2

    const-string v0, "inflate(LayoutInflater.from(context), this)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    const/4 p2, 0x0

    :try_start_0
    const-string/jumbo v0, "vibrator"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Vibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    .line 5
    :catch_0
    :cond_0
    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->vibratorManager:Landroid/os/Vibrator;

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Integer;

    const p2, 0x7f0f052b

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const p2, 0x7f0f052c

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, p1, v1

    const p2, 0x7f0f052d

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, p1, v2

    const/4 p2, 0x3

    const v3, 0x7f0f052e

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/4 p2, 0x4

    const v3, 0x7f0f052f

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/4 p2, 0x5

    const v3, 0x7f0f0530

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/4 p2, 0x6

    const v3, 0x7f0f0531

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/4 p2, 0x7

    const v3, 0x7f0f0532

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/16 p2, 0x8

    const v3, 0x7f0f0533

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    const/16 p2, 0x9

    const v3, 0x7f0f0534

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    .line 16
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numList:Ljava/util/ArrayList;

    .line 17
    iput-boolean v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isAccept:Z

    const/high16 p1, -0x3d900000    # -60.0f

    .line 18
    iput p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->top:F

    const/high16 p2, -0x3de00000    # -40.0f

    .line 19
    iput p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->half:F

    .line 20
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 21
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->perfectAnimatorSet:Landroid/animation/AnimatorSet;

    .line 22
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    const-string p2, "111"

    .line 23
    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    .line 24
    new-instance p2, Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    invoke-direct {p2}, Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    .line 25
    new-instance p2, Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->runnable:Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;

    .line 26
    new-instance p2, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->shakeRunnable:Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;

    .line 27
    new-instance p2, Lcom/guochao/faceshow/gift/view/b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/gift/view/b;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable:Ljava/lang/Runnable;

    .line 28
    new-instance p2, Lcom/guochao/faceshow/gift/view/c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/gift/view/c;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->realTimeOut:Ljava/lang/Runnable;

    .line 29
    new-instance p2, Lcom/guochao/faceshow/gift/view/g;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/gift/view/g;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->finishRunnable:Ljava/lang/Runnable;

    .line 30
    new-instance p2, Lcom/guochao/faceshow/gift/view/d;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/gift/view/d;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->ballRunnable:Ljava/lang/Runnable;

    .line 31
    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v1, v0

    const-string/jumbo p1, "translationY"

    invoke-static {p2, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "ofFloat(binding.numTV, \"\u2026til.dp2px(top).toFloat())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rotateIV:Landroid/widget/ImageView;

    new-array p2, v2, [F

    fill-array-data p2, :array_0

    const-string v0, "rotation"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "ofFloat(binding.rotateIV, \"rotation\", 0f, 360f)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->anim:Landroid/animation/ObjectAnimator;

    .line 34
    new-instance p1, Lcom/guochao/faceshow/gift/view/a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/gift/view/a;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/gift/view/GiftComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final _init_$lambda-6(Lcom/guochao/faceshow/gift/view/GiftComboView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isAccept:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isTouch:Z

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v1, v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->finish$default(Lcom/guochao/faceshow/gift/view/GiftComboView;JILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->realTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->realTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->ballRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->realTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->play()V

    .line 11
    iput-boolean v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isTouch:Z

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p2, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->roadIV:Landroid/widget/ImageView;

    new-array v2, v1, [F

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getY()F

    move-result p1

    aput p1, v2, v0

    const-string/jumbo p1, "y"

    invoke-static {p2, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x32

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "ofFloat(binding.roadIV, \u2026         .setDuration(50)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->roadIV:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/gift/view/f;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/gift/view/f;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    const-wide/16 v2, 0x65

    invoke-virtual {p1, p2, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method public static synthetic a(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable$lambda-1(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    return-object p0
.end method

.method public static final synthetic access$getCont(Lcom/guochao/faceshow/gift/view/GiftComboView;)I
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCont()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    return-object p0
.end method

.method public static final synthetic access$getNumYAnimator$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static final synthetic access$getShakeRunnable$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->shakeRunnable:Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;

    return-object p0
.end method

.method public static final synthetic access$getTop$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->top:F

    return p0
.end method

.method public static final synthetic access$putMap(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->putMap()V

    return-void
.end method

.method public static final synthetic access$setNum(Lcom/guochao/faceshow/gift/view/GiftComboView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->setNum(I)V

    return-void
.end method

.method public static final synthetic access$setNumYAnimator$p(Lcom/guochao/faceshow/gift/view/GiftComboView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/gift/view/GiftComboView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/gift/view/GiftComboView;->_init_$lambda-6(Lcom/guochao/faceshow/gift/view/GiftComboView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final ballRunnable$lambda-4(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isBallRunning:Z

    .line 2
    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->ballView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->clearPlay()V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->realTimeOut$lambda-2(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->ballRunnable$lambda-4(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable$lambda-1$lambda-0(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    return-void
.end method

.method public static synthetic f(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->lambda-6$lambda-5(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    return-void
.end method

.method private final finish(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->runnable:Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->shakeRunnable:Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->finishRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x108

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->ballRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic finish$default(Lcom/guochao/faceshow/gift/view/GiftComboView;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/gift/view/GiftComboView;->finish(J)V

    return-void
.end method

.method private static final finishRunnable$lambda-3(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView1:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->roadIV:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "ofFloat(binding.roadIV, \u2026ha\", 0f).setDuration(100)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    const-string v3, "numYAnimator"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    .line 8
    iget v5, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->bottom:F

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v1, v4

    const-string/jumbo v4, "translationY"

    .line 9
    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ofFloat(\n               \u2026ttom).toFloat()\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const-wide/16 v4, 0x9c4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 11
    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static synthetic g(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->finishRunnable$lambda-3(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    return-void
.end method

.method private final getCont()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x13ec

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;->getCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final lambda-6$lambda-5(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->roadIV:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final play()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->putMap()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCont()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->setNum(I)V

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView1:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView1:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "scaleX"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 5
    iget-object v4, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView1:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    new-array v6, v3, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleY"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0x108

    .line 6
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v6, -0x1

    .line 8
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 9
    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 10
    iget-object v10, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v10, v10, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView1:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    new-array v11, v3, [F

    fill-array-data v11, :array_2

    const-string v12, "alpha"

    invoke-static {v10, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-string v11, "ofFloat(binding.rippleVi\u2026f, 0.5f).setDuration(264)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 12
    invoke-virtual {v10, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 13
    iget-object v11, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v11, v11, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v11, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v11, v11, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    new-array v13, v3, [F

    fill-array-data v13, :array_3

    invoke-static {v11, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 15
    iget-object v13, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v13, v13, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    new-array v14, v3, [F

    fill-array-data v14, :array_4

    invoke-static {v13, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 16
    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 17
    invoke-virtual {v13, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 18
    invoke-virtual {v11, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 19
    invoke-virtual {v13, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 20
    iget-object v14, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v14, v14, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    new-array v15, v3, [F

    fill-array-data v15, :array_5

    invoke-static {v14, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-string v15, "ofFloat(binding.rippleVi\u2026.5f, 0f).setDuration(264)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v14, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 22
    invoke-virtual {v14, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 23
    iget-object v15, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v15, v15, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->scaleView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    invoke-static {v15, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v5, "ofFloat(binding.scaleVie\u2026        .setDuration(264)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v15, 0x1

    .line 26
    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 27
    iget-object v15, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v15, v15, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->scaleView:Landroid/widget/RelativeLayout;

    new-array v6, v3, [F

    fill-array-data v6, :array_7

    invoke-static {v15, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 28
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 29
    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v5, 0x1

    .line 30
    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 31
    iget-object v7, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->perfectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    const-string v15, "ofFloat(\n               \u2026).toFloat()\n            )"

    const-string/jumbo v3, "translationY"

    const/16 v16, 0x0

    const-string v17, "numYAnimator"

    if-eqz v7, :cond_1

    .line 32
    iget-object v7, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v7, v7, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    new-array v8, v5, [F

    .line 33
    iget v5, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->half:F

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v9, 0x0

    aput v5, v8, v9

    .line 34
    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_0

    .line 35
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v3, v16

    :cond_0
    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 36
    :cond_1
    iget-object v5, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v5, v5, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    new-array v8, v7, [F

    .line 37
    iget v7, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->top:F

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    const/4 v9, 0x0

    aput v7, v8, v9

    .line 38
    invoke-static {v5, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_2

    .line 39
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v3, v16

    :cond_2
    const-wide/16 v7, 0x1f4

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    :goto_0
    iget-object v3, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->animatorSet:Landroid/animation/AnimatorSet;

    const/16 v5, 0x8

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v6, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const/4 v2, 0x3

    aput-object v1, v5, v2

    const/4 v1, 0x4

    aput-object v10, v5, v1

    const/4 v1, 0x5

    aput-object v13, v5, v1

    const/4 v1, 0x6

    aput-object v11, v5, v1

    const/4 v1, 0x7

    aput-object v14, v5, v1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 41
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 43
    :cond_3
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_4

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v16, v1

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/animation/ObjectAnimator;->start()V

    .line 44
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object v2, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->runnable:Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object v2, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->shakeRunnable:Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->roadIV:Landroid/widget/ImageView;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-static {v1, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "ofFloat(binding.roadIV, \u2026ha\", 1f).setDuration(100)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 48
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object v2, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 50
    iget-boolean v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isBallRunning:Z

    if-nez v1, :cond_5

    .line 51
    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->ballView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v2, 0x7f11000e

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, v0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isBallRunning:Z

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_5
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8a3d71    # 1.08f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8a3d71    # 1.08f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final putMap()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x13ec

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v1}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;-><init>(JI)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;->setCount(I)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;->setTime(J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->countMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v1}, Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;-><init>(JI)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private static final reSetRunnable$lambda-1(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isAccept:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->bottomRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa5

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->bottomRL:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/guochao/faceshow/gift/view/e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/gift/view/e;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    const-wide/16 v2, 0xa4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->listener:Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;->onComboTimeout(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->currentComboId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->currentComboId:I

    .line 8
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->setEndCombo(Z)V

    return-void
.end method

.method private static final reSetRunnable$lambda-1$lambda-0(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isAccept:Z

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->bottomRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 5
    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private static final realTimeOut$lambda-2(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->listener:Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;->onComboTimeout2(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    :cond_0
    return-void
.end method

.method private final setCurrentKey(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, ""

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    .line 4
    const-class p1, Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCurrentKey:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setNum(I)V
    .locals 9

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 1
    iget-object v4, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v5, v5, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v5, 0x0

    .line 5
    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 6
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v8, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "numList[it.toString().toInt()]"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v6, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v6, v6, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->perfectIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const-string v4, "numYAnimator"

    if-nez p1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    new-array v5, v0, [F

    .line 12
    iget v6, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->half:F

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v3

    const-string/jumbo v6, "translationY"

    .line 13
    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v5, "ofFloat(\n               \u2026).toFloat()\n            )"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_4

    .line 14
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    const-wide/16 v5, 0xc8

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->numYAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, p1

    :goto_2
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->perfectIV:Landroid/widget/ImageView;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    const-string v4, "scaleX"

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0x1f4

    .line 17
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v1, "ofFloat(binding.perfectI\u2026        .setDuration(500)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v6, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v6, v6, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->perfectIV:Landroid/widget/ImageView;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    const-string v7, "scaleY"

    invoke-static {v6, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->perfectAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v3

    aput-object v2, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->perfectAnimatorSet:Landroid/animation/AnimatorSet;

    .line 22
    new-instance v1, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;

    invoke-direct {v1, p0, p0}, Lcom/guochao/faceshow/gift/view/GiftComboView$setNum$$inlined$addListener$default$1;-><init>(Lcom/guochao/faceshow/gift/view/GiftComboView;Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->perfectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 25
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCont()I

    move-result p1

    if-eq p1, v0, :cond_7

    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCont()I

    move-result p1

    iget v1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->count:I

    add-int/2addr v1, v0

    if-eq p1, v1, :cond_7

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->listener:Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0, v0}, Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;->onCombo(Lcom/guochao/faceshow/gift/view/GiftComboView;I)V

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->vibratorManager:Landroid/os/Vibrator;

    if-eqz p1, :cond_a

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v4, 0xa

    if-lt v0, v1, :cond_9

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    .line 29
    invoke-static {v3}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_3

    .line 30
    :cond_8
    invoke-virtual {p1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_3

    .line 31
    :cond_9
    invoke-virtual {p1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_a
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
    .end array-data
.end method


# virtual methods
.method public final addLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final getComboLocation()[I
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->scaleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 2
    iget-object v3, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v3, v3, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->scaleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-nez v4, :cond_1

    aget v4, v2, v5

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    aget v1, v2, v3

    .line 3
    iget-object v4, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->scaleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v1, v4

    aput v1, v2, v3

    aget v1, v2, v5

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->binding:Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    iget-object v3, v3, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->scaleView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    aput v1, v2, v5

    return-object v2
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->count:I

    return v0
.end method

.method public final getCurrentComboId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->currentComboId:I

    return v0
.end method

.method public final isTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isTouch:Z

    return v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->a(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->b(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->c(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->d(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->e(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->f(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isAccept:Z

    const-wide/16 v0, 0xc8

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->finish(J)V

    return-void
.end method

.method public final setComboListener(Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->listener:Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;

    return-void
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->count:I

    return-void
.end method

.method public final setCurrentComboId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->currentComboId:I

    return-void
.end method

.method public final setTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->isTouch:Z

    return-void
.end method

.method public final show(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILjava/util/List;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mCurrentGiftItemData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "users"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/gift/view/GiftComboView;->setCurrentKey(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILjava/util/List;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCont()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->count:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->reSetRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->play()V

    const-wide/16 p1, 0x0

    const/4 p3, 0x1

    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, p2, p3, v2}, Lcom/guochao/faceshow/gift/view/GiftComboView;->finish$default(Lcom/guochao/faceshow/gift/view/GiftComboView;JILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->realTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->handler:Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    iget-object p2, p0, Lcom/guochao/faceshow/gift/view/GiftComboView;->realTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
