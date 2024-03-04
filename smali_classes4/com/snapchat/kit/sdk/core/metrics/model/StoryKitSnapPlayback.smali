.class public final Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;,
        Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ENTRY_EVENT:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

.field public static final DEFAULT_EXIT_EVENT:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

.field public static final DEFAULT_INITIAL_STALL_MS:Ljava/lang/Long;

.field public static final DEFAULT_MEDIA_DURATION_UNCHECKED_MS:Ljava/lang/Long;

.field public static final DEFAULT_MEDIA_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

.field public static final DEFAULT_MEDIA_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_PLAYER_SESSION_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SNAP_ID_UNCHECKED:Ljava/lang/String; = ""

.field public static final DEFAULT_SNAP_VIEW_INDEX:Ljava/lang/Long;

.field public static final DEFAULT_VIEW_TIME_MS:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitEntryEvent#ADAPTER"
        tag = 0xa
    .end annotation
.end field

.field public final exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitExitEvent#ADAPTER"
        tag = 0xb
    .end annotation
.end field

.field public final initial_stall_ms:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x7
    .end annotation
.end field

.field public final media_duration_unchecked_ms:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x6
    .end annotation
.end field

.field public final media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitMediaType#ADAPTER"
        tag = 0x5
    .end annotation
.end field

.field public final media_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final player_session_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final snap_id_unchecked:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final snap_view_index:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x8
    .end annotation
.end field

.field public final story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitEventBase#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final view_time_ms:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->STORY_KIT_MEDIA_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->DEFAULT_MEDIA_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->DEFAULT_MEDIA_DURATION_UNCHECKED_MS:Ljava/lang/Long;

    .line 4
    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->DEFAULT_INITIAL_STALL_MS:Ljava/lang/Long;

    .line 5
    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->DEFAULT_SNAP_VIEW_INDEX:Ljava/lang/Long;

    .line 6
    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->DEFAULT_VIEW_TIME_MS:Ljava/lang/Long;

    .line 7
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;->STORY_KIT_ENTRY_EVENT_PLAYER_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->DEFAULT_ENTRY_EVENT:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    .line 8
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;->STORY_KIT_EXIT_EVENT_PLAYER_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->DEFAULT_EXIT_EVENT:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;)V
    .locals 13

    .line 1
    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;Lokio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    .line 4
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    .line 8
    iput-object p6, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    .line 9
    iput-object p7, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    .line 10
    iput-object p8, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    .line 11
    iput-object p9, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    .line 12
    iput-object p10, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    .line 13
    iput-object p11, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    .line 8
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    .line 9
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    .line 10
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    .line 11
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    .line 12
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    .line 13
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    .line 14
    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 11
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :cond_a
    add-int/2addr v0, v2

    .line 14
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_b
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->player_session_id:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_url:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_id_unchecked:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_duration_unchecked_ms:Ljava/lang/Long;

    .line 9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->initial_stall_ms:Ljava/lang/Long;

    .line 10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_view_index:Ljava/lang/Long;

    .line 11
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->view_time_ms:Ljava/lang/Long;

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    .line 14
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    if-eqz v1, :cond_0

    const-string v1, ", story_kit_event_base="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", player_session_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", media_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", snap_id_unchecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    if-eqz v1, :cond_4

    const-string v1, ", media_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v1, ", media_duration_unchecked_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, ", initial_stall_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, ", snap_view_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const-string v1, ", view_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    if-eqz v1, :cond_9

    const-string v1, ", entry_event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    :cond_9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    if-eqz v1, :cond_a

    const-string v1, ", exit_event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "StoryKitSnapPlayback{"

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
