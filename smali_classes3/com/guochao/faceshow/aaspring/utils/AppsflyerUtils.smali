.class public final Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;
.implements Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R&\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00078\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0008\u0010\u0003\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;",
        "Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;",
        "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;",
        "()V",
        "list",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getList$annotations",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "onTrackEvent",
        "event",
        "bundle",
        "Landroid/os/Bundle;",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "sign_up"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic getList$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    const-string v1, "q53Q33ib9p4uUTWqNcs8kc"

    .line 2
    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils$init$1;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils$init$1;-><init>()V

    invoke-virtual {v0, v1, v2, p0}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->addListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;)V

    .line 5
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->addListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    .line 4
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toMap2(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
