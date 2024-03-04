.class public final Lcom/facebook/appevents/codeless/internal/UnityReflection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0007J\u000c\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0002J\u0012\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/appevents/codeless/internal/UnityReflection;",
        "",
        "()V",
        "CAPTURE_VIEW_HIERARCHY_METHOD",
        "",
        "EVENT_MAPPING_METHOD",
        "FB_UNITY_GAME_OBJECT",
        "TAG",
        "UNITY_PLAYER_CLASS",
        "UNITY_SEND_MESSAGE_METHOD",
        "unityPlayer",
        "Ljava/lang/Class;",
        "captureViewHierarchy",
        "",
        "getUnityPlayerClass",
        "sendEventMapping",
        "eventMapping",
        "sendMessage",
        "unityObject",
        "unityMethod",
        "message",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CAPTURE_VIEW_HIERARCHY_METHOD:Ljava/lang/String; = "CaptureViewHierarchy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EVENT_MAPPING_METHOD:Ljava/lang/String; = "OnReceiveMapping"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FB_UNITY_GAME_OBJECT:Ljava/lang/String; = "UnityFacebookSDKPlugin"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/facebook/appevents/codeless/internal/UnityReflection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final UNITY_PLAYER_CLASS:Ljava/lang/String; = "com.unity3d.player.UnityPlayer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNITY_SEND_MESSAGE_METHOD:Ljava/lang/String; = "UnitySendMessage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static unityPlayer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/internal/UnityReflection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;->INSTANCE:Lcom/facebook/appevents/codeless/internal/UnityReflection;

    const-class v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final captureViewHierarchy()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "UnityFacebookSDKPlugin"

    const-string v1, "CaptureViewHierarchy"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getUnityPlayerClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "forName(UNITY_PLAYER_CLASS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final sendEventMapping(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "UnityFacebookSDKPlugin"

    const-string v1, "OnReceiveMapping"

    invoke-static {v0, v1, p0}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->INSTANCE:Lcom/facebook/appevents/codeless/internal/UnityReflection;

    invoke-direct {v1}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->getUnityPlayerClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "unityPlayer"

    if-eqz v1, :cond_2

    :try_start_1
    const-string v4, "UnitySendMessage"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v9, 0x2

    aput-object v0, v6, v9

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "unityPlayer.getMethod(\n              UNITY_SEND_MESSAGE_METHOD, String::class.java, String::class.java, String::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;

    if-eqz v1, :cond_1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v7

    aput-object p1, v2, v8

    aput-object p2, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->TAG:Ljava/lang/String;

    const-string p2, "Failed to send message to Unity"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
