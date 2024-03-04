.class public final Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public client_sequence_id:Ljava/lang/Long;

.field public ip_address:Ljava/lang/String;

.field public is_app_prerelease:Ljava/lang/Boolean;

.field public is_from_react_native_plugin:Ljava/lang/Boolean;

.field public kit_app_id:Ljava/lang/String;

.field public kit_client_timestamp_millis:Ljava/lang/Long;

.field public kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

.field public kit_session_id:Ljava/lang/String;

.field public kit_user_agent:Ljava/lang/String;

.field public kit_variant:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

.field public kit_variant_version:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public max_client_sequence_id_on_instance:Ljava/lang/Long;

.field public oauth_client_id:Ljava/lang/String;

.field public os_minor_version:Ljava/lang/String;

.field public running_in_simulator:Ljava/lang/Boolean;

.field public running_in_tests:Ljava/lang/Boolean;

.field public running_with_debugger_attached:Ljava/lang/Boolean;

.field public target_architecture:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;
    .locals 24

    move-object/from16 v0, p0

    .line 2
    new-instance v22, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-object/from16 v1, v22

    iget-object v2, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->oauth_client_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->locale:Ljava/lang/String;

    iget-object v4, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_user_agent:Ljava/lang/String;

    iget-object v5, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->ip_address:Ljava/lang/String;

    iget-object v6, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->os_minor_version:Ljava/lang/String;

    iget-object v7, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    iget-object v8, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant_version:Ljava/lang/String;

    iget-object v9, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_client_timestamp_millis:Ljava/lang/Long;

    iget-object v10, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->client_sequence_id:Ljava/lang/Long;

    iget-object v11, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->max_client_sequence_id_on_instance:Ljava/lang/Long;

    iget-object v12, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->target_architecture:Ljava/lang/String;

    iget-object v13, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_with_debugger_attached:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_in_tests:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_in_simulator:Ljava/lang/Boolean;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->is_app_prerelease:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_app_id:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_session_id:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->is_from_react_native_plugin:Ljava/lang/Boolean;

    move-object/from16 v20, v1

    invoke-super/range {p0 .. p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v21

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/KitType;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v22
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object v0

    return-object v0
.end method

.method public final client_sequence_id(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->client_sequence_id:Ljava/lang/Long;

    return-object p0
.end method

.method public final ip_address(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final is_app_prerelease(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->is_app_prerelease:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final is_from_react_native_plugin(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->is_from_react_native_plugin:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final kit_app_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_app_id:Ljava/lang/String;

    return-object p0
.end method

.method public final kit_client_timestamp_millis(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_client_timestamp_millis:Ljava/lang/Long;

    return-object p0
.end method

.method public final kit_plugin_type(Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    return-object p0
.end method

.method public final kit_session_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_session_id:Ljava/lang/String;

    return-object p0
.end method

.method public final kit_user_agent(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_user_agent:Ljava/lang/String;

    return-object p0
.end method

.method public final kit_variant(Lcom/snapchat/kit/sdk/core/metrics/model/KitType;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object p0
.end method

.method public final kit_variant_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant_version:Ljava/lang/String;

    return-object p0
.end method

.method public final locale(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public final max_client_sequence_id_on_instance(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->max_client_sequence_id_on_instance:Ljava/lang/Long;

    return-object p0
.end method

.method public final oauth_client_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->oauth_client_id:Ljava/lang/String;

    return-object p0
.end method

.method public final os_minor_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->os_minor_version:Ljava/lang/String;

    return-object p0
.end method

.method public final running_in_simulator(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_in_simulator:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final running_in_tests(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_in_tests:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final running_with_debugger_attached(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_with_debugger_attached:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final target_architecture(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->target_architecture:Ljava/lang/String;

    return-object p0
.end method
