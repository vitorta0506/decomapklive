.class public final Lke/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lge/a;


# direct methods
.method constructor <init>(Lge/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lke/a;->a:Lge/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
    .locals 6

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;-><init>()V

    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;-><init>()V

    .line 2
    new-instance v2, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;

    invoke-direct {v2}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;-><init>()V

    iget-object v3, p0, Lke/a;->a:Lge/a;

    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->CREATIVE_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const-string v5, "1.13.2"

    .line 3
    invoke-virtual {v3, v4, v5}, Lge/a;->a(Lcom/snapchat/kit/sdk/core/metrics/model/KitType;Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;->creative_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;-><init>()V

    .line 11
    invoke-virtual {v1, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v0

    return-object v0
.end method
