.class public final Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0007J\u0008\u0010\t\u001a\u00020\u0006H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;",
        "",
        "()V",
        "init",
        "",
        "makeAgent",
        "",
        "makeBase64Common",
        "string",
        "makeCommon",
        "CommonData",
        "lib_core_release"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$makeAgent(Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->makeAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final makeAgent()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BuzzCast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getAPPVersionNameAndVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final makeBase64Common(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "forName(\"UTF-8\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encode( //\u7136\u540eURL encode\n \u2026     ), \"UTF-8\"\n        )"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final makeCommon()Ljava/lang/String;
    .locals 21
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v15, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;

    move-object v0, v15

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const v18, 0xffff

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;-><init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    if-nez v0, :cond_0

    const-string v0, "0.0"

    move-object/from16 v1, v20

    .line 3
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;->setLatitude(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;->setLongitude(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, v20

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;->setLatitude(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;->setLongitude(Ljava/lang/String;)V

    .line 7
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;->setSystoken(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGson().toJson(data)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final init()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$init$1;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->setBefore(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
