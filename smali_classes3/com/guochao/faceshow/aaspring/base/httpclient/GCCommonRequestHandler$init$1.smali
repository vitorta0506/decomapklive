.class final Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api_version"

    const-string v1, "0"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->makeCommon()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->makeBase64Common(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "api_common"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->access$makeAgent(Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method
