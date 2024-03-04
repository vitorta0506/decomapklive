.class public final Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R7\u0010\u0003\u001a\u001f\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;",
        "",
        "()V",
        "before",
        "Lkotlin/Function1;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
        "Lkotlin/ParameterName;",
        "name",
        "gcRequest",
        "",
        "getBefore",
        "()Lkotlin/jvm/functions/Function1;",
        "setBefore",
        "(Lkotlin/jvm/functions/Function1;)V",
        "lib_httpclient_release"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static before:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBefore()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->before:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setBefore(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->before:Lkotlin/jvm/functions/Function1;

    return-void
.end method
