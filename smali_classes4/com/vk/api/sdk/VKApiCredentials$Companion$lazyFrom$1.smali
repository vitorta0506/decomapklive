.class final Lcom/vk/api/sdk/VKApiCredentials$Companion$lazyFrom$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/VKApiCredentials$Companion;->lazyFrom(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vk/api/sdk/VKApiCredentials;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0006\n\u0002\u0018\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKApiCredentials;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $accessToken:Ljava/lang/String;

.field final synthetic $secret:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/VKApiCredentials$Companion$lazyFrom$1;->$accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/vk/api/sdk/VKApiCredentials$Companion$lazyFrom$1;->$secret:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vk/api/sdk/VKApiCredentials;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/vk/api/sdk/VKApiCredentials;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiCredentials$Companion$lazyFrom$1;->$accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/vk/api/sdk/VKApiCredentials$Companion$lazyFrom$1;->$secret:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/vk/api/sdk/VKApiCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/vk/api/sdk/VKApiCredentials$Companion$lazyFrom$1;->invoke()Lcom/vk/api/sdk/VKApiCredentials;

    move-result-object v0

    return-object v0
.end method
