.class public final Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public player_session_id:Ljava/lang/String;

.field public player_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitPlayerType;

.field public session_duration_ms:Ljava/lang/Long;

.field public snap_count:Ljava/lang/Long;

.field public story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;
    .locals 8

    .line 2
    new-instance v7, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->player_session_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->snap_count:Ljava/lang/Long;

    iget-object v4, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->session_duration_ms:Ljava/lang/Long;

    iget-object v5, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->player_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitPlayerType;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitPlayerType;Lokio/ByteString;)V

    return-object v7
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    move-result-object v0

    return-object v0
.end method

.method public final player_session_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->player_session_id:Ljava/lang/String;

    return-object p0
.end method

.method public final player_type(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitPlayerType;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->player_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitPlayerType;

    return-object p0
.end method

.method public final session_duration_ms(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->session_duration_ms:Ljava/lang/Long;

    return-object p0
.end method

.method public final snap_count(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->snap_count:Ljava/lang/Long;

    return-object p0
.end method

.method public final story_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession$Builder;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    return-object p0
.end method
