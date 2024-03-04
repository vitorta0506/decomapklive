.class public final Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

.field public exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

.field public initial_stall_ms:Ljava/lang/Long;

.field public media_duration_unchecked_ms:Ljava/lang/Long;

.field public media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

.field public media_url:Ljava/lang/String;

.field public player_session_id:Ljava/lang/String;

.field public snap_id_unchecked:Ljava/lang/String;

.field public snap_view_index:Ljava/lang/Long;

.field public story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

.field public view_time_ms:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;
    .locals 14

    .line 2
    new-instance v13, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->player_session_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_id_unchecked:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    iget-object v6, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_duration_unchecked_ms:Ljava/lang/Long;

    iget-object v7, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->initial_stall_ms:Ljava/lang/Long;

    iget-object v8, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_view_index:Ljava/lang/Long;

    iget-object v9, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->view_time_ms:Ljava/lang/Long;

    iget-object v10, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    iget-object v11, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;Lokio/ByteString;)V

    return-object v13
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    move-result-object v0

    return-object v0
.end method

.method public final entry_event(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    return-object p0
.end method

.method public final exit_event(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    return-object p0
.end method

.method public final initial_stall_ms(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->initial_stall_ms:Ljava/lang/Long;

    return-object p0
.end method

.method public final media_duration_unchecked_ms(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_duration_unchecked_ms:Ljava/lang/Long;

    return-object p0
.end method

.method public final media_type(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    return-object p0
.end method

.method public final media_url(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_url:Ljava/lang/String;

    return-object p0
.end method

.method public final player_session_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->player_session_id:Ljava/lang/String;

    return-object p0
.end method

.method public final snap_id_unchecked(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_id_unchecked:Ljava/lang/String;

    return-object p0
.end method

.method public final snap_view_index(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_view_index:Ljava/lang/Long;

    return-object p0
.end method

.method public final story_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    return-object p0
.end method

.method public final view_time_ms(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->view_time_ms:Ljava/lang/Long;

    return-object p0
.end method
