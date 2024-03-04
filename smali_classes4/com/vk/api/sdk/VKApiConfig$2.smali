.class final Lcom/vk/api/sdk/VKApiConfig$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/VKApiConfig;-><init>(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0006\n\u0002\u0018\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vk/api/sdk/VKApiConfig$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/api/sdk/VKApiConfig$2;

    invoke-direct {v0}, Lcom/vk/api/sdk/VKApiConfig$2;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/VKApiConfig$2;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vk/api/sdk/utils/log/Logger$LogLevel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->NONE:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/vk/api/sdk/VKApiConfig$2;->invoke()Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    move-result-object v0

    return-object v0
.end method
