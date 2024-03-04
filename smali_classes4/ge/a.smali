.class public Lge/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

.field private final c:Z

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lge/a;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lge/a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lge/a;->b:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 5
    iput-boolean p3, p0, Lge/a;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/kit/sdk/core/metrics/model/KitType;Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;
    .locals 2

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant(Lcom/snapchat/kit/sdk/core/metrics/model/KitType;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    iget-object p2, p0, Lge/a;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->oauth_client_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    sget-object p2, Lie/e;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_user_agent(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    :goto_0
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->locale(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_client_timestamp_millis(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    iget-object p2, p0, Lge/a;->b:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 10
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_plugin_type(Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lge/a;->c:Z

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->is_from_react_native_plugin(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;
    .locals 2

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->LOGIN_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    iget-object v1, p0, Lge/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lge/a;->a(Lcom/snapchat/kit/sdk/core/metrics/model/KitType;Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object v0

    return-object v0
.end method
