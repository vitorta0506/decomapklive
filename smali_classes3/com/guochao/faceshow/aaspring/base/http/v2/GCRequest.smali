.class public Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/utils/a;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;,
        Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;,
        Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;,
        Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;,
        Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 ]2\u00020\u00012\u00020\u0002:\u0004^]_`B\u000f\u0012\u0006\u0010?\u001a\u00020\u0003\u00a2\u0006\u0004\u0008[\u0010\\J\u0018\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u001a\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u0012\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u001a\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J+\u0010\u001e\u001a\u00020\u00002!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J+\u0010\"\u001a\u00020\u00002!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J+\u0010#\u001a\u00020\u00002!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u001c0\u0018H\u0016JA\u0010\'\u001a\u00020\u0000\"\u0006\u0008\u0000\u0010$\u0018\u00012+\u0008\u0004\u0010\'\u001a%\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00018\u00000%\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u001c0\u0018H\u0086\u0008\u00f8\u0001\u0000JC\u0010(\u001a\u00020\u0000\"\u0006\u0008\u0000\u0010$\u0018\u00012-\u0008\u0004\u0010(\u001a\'\u0012\u001d\u0012\u001b\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010%\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u001c0\u0018H\u0086\u0008\u00f8\u0001\u0000J+\u0010)\u001a\u00020\u00002!\u0010)\u001a\u001d\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J+\u0010+\u001a\u00020\u00002!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J\u0012\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010-\u001a\u00020,H\u0016J\u0012\u00101\u001a\u00020\u00002\u0008\u00100\u001a\u0004\u0018\u00010/H\u0016J\u0008\u0010\u001b\u001a\u00020\u0000H\u0016J\u0012\u00102\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0017\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u00000%\"\u0006\u0008\u0000\u0010$\u0018\u0001H\u0086\u0008J\u001a\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u00000%\"\u0004\u0008\u0000\u0010$2\u0006\u00105\u001a\u000204J\u0006\u00107\u001a\u000206J\u0008\u0010*\u001a\u00020\u001cH\u0016J\u0018\u0010;\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00132\u0006\u0010:\u001a\u000209H\u0016J)\u0010=\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000%0<\"\u0006\u0008\u0000\u0010$\u0018\u0001H\u0086H\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008=\u0010>R\u0017\u0010?\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\u0017\u0010D\u001a\u00020C8\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR4\u0010J\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050Hj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0005`I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KRF\u0010M\u001a2\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010L\u0018\u00010Hj\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010L\u0018\u0001`I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010KR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010NR\"\u0010P\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR&\u0010R\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010QR\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010SR\u0018\u0010T\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR \u0010\u0011\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010WR\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010XR\u0016\u0010Y\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u0082\u0002\u000b\n\u0005\u0008\u009920\u0001\n\u0002\u0008\u0019\u00a8\u0006a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
        "Lcom/guochao/faceshow/aaspring/base/utils/a;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "",
        "key",
        "",
        "value",
        "putBody",
        "body",
        "",
        "override",
        "putBodyModel",
        "Ljava/io/File;",
        "file",
        "addFile",
        "addQuery",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "bindToLifecycle",
        "Landroidx/lifecycle/LifecycleOwner;",
        "removeQuery",
        "header",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;",
        "method",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "request",
        "",
        "start",
        "onStart",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;",
        "progressInfo",
        "progress",
        "uploadProgress",
        "downloadProgress",
        "T",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "response",
        "success",
        "fail",
        "complete",
        "cancel",
        "onCancel",
        "",
        "intervalMs",
        "repeat",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "dispatchOn",
        "getHeaderValue",
        "execute",
        "Ljava/lang/reflect/Type;",
        "typeOfT",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;",
        "buildRequestParams",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "onStateChanged",
        "Lkotlinx/coroutines/flow/Flow;",
        "asFlow",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "url",
        "Ljava/lang/String;",
        "getUrl",
        "()Ljava/lang/String;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;",
        "callbackHolder",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;",
        "getCallbackHolder",
        "()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "contentBody",
        "Ljava/util/LinkedHashMap;",
        "",
        "fileBody",
        "Ljava/lang/Object;",
        "",
        "headers",
        "Ljava/util/Map;",
        "queries",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;",
        "cancellable",
        "Lcom/guochao/faceshow/aaspring/base/utils/a;",
        "Ljava/lang/ref/WeakReference;",
        "Ljava/lang/ref/WeakReference;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "repeatInterval",
        "J",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
        "CallbackHolder",
        "Method",
        "ProgressInfo",
        "lib_httpclient_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static baseUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private body:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancellable:Lcom/guochao/faceshow/aaspring/base/utils/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contentBody:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fileBody:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lifecycle:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private method:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private repeatInterval:J

.field private scope:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;

    const-string v0, ""

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->url:Ljava/lang/String;

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->contentBody:Ljava/util/LinkedHashMap;

    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->headers:Ljava/util/Map;

    .line 5
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->POST:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->repeatInterval:J

    return-void
.end method

.method public static final synthetic access$setBaseUrl$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic putBodyModel$default(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBodyModel(Ljava/lang/Object;Z)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: putBodyModel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic repeat$default(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;JILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x12c

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->repeat(J)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: repeat"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final setBaseUrl(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;->setBaseUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->fileBody:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->fileBody:Ljava/util/LinkedHashMap;

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->queries:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->queries:Ljava/util/Map;

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic asFlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2;-><init>(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object p1
.end method

.method public bindToLifecycle(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->lifecycle:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->lifecycle:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->lifecycle:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-object p0
.end method

.method public bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->bindToLifecycle(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    return-object p1
.end method

.method public final buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v12, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->body:Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->contentBody:Ljava/util/LinkedHashMap;

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->headers:Ljava/util/Map;

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->queries:Ljava/util/Map;

    .line 7
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->fileBody:Ljava/util/LinkedHashMap;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    sget-object v7, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1

    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    const-string v0, "POST"

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "GET"

    :goto_0
    move-object v7, v0

    .line 10
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    iget-wide v9, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->repeatInterval:J

    iget-object v11, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-object v0, v12

    .line 12
    invoke-direct/range {v0 .. v11}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;JLcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;)V

    return-object v12
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->cancellable:Lcom/guochao/faceshow/aaspring/base/utils/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->cancellable:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method public complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "complete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$complete$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$complete$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setComplete(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public dispatchOn(Lkotlinx/coroutines/CoroutineScope;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public downloadProgress(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$downloadProgress$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$downloadProgress$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setDownloadProgress(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public final synthetic execute()Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->execute(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final execute(Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 4
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "typeOfT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->execute(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final synthetic fail(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;"
        }
    .end annotation

    const-string v0, "fail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$fail$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$fail$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public final getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    return-object v0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->headers:Ljava/util/Map;

    const-string v1, "api_common"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "decode(\n                \u2026e64.NO_WRAP\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$getHeaderValue$requestMap$1;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$getHeaderValue$requestMap$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    return-object p0
.end method

.method public onCancel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cancel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onStart(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$onStart$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$onStart$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setOnStart(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->cancellable:Lcom/guochao/faceshow/aaspring/base/utils/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    :cond_0
    return-void
.end method

.method public putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->contentBody:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putBodyModel(Ljava/lang/Object;Z)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->body:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->contentBody:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-object p0
.end method

.method public removeQuery(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->queries:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public repeat(J)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->repeatInterval:J

    return-object p0
.end method

.method public request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->request(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->cancellable:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p0
.end method

.method public final synthetic success(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$success$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$success$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public uploadProgress(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->callbackHolder:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$uploadProgress$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$uploadProgress$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setUploadProgress(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method
