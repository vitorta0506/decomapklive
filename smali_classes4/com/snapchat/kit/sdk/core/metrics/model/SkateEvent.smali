.class public final Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$ProtoAdapter_SkateEvent;,
        Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CORE_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_DAILY_SESSION_BUCKET:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

.field public static final DEFAULT_DAY:Ljava/lang/Long;

.field public static final DEFAULT_IS_FIRST_WITHIN_MONTH:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_FROM_REACT_NATIVE_PLUGIN:Ljava/lang/Boolean;

.field public static final DEFAULT_KIT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_KIT_PLUGIN_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

.field public static final DEFAULT_KIT_VARIANTS_STRING_LIST:Ljava/lang/String; = ""

.field public static final DEFAULT_KIT_VERSION_STRING_LIST:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGIN_ROUTE:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

.field public static final DEFAULT_MONTH:Ljava/lang/Long;

.field public static final DEFAULT_OAUTH_CLIENT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SAMPLE_RATE:Ljava/lang/Double;

.field public static final DEFAULT_SNAP_KIT_INIT_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

.field public static final DEFAULT_YEAR:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final core_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xd
    .end annotation
.end field

.field public final daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.DailySessionBucket#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final day:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x6
    .end annotation
.end field

.field public final is_first_within_month:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x2
    .end annotation
.end field

.field public final is_from_react_native_plugin:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xf
    .end annotation
.end field

.field public final kit_app_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xa
    .end annotation
.end field

.field public final kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.KitPluginType#ADAPTER"
        tag = 0xc
    .end annotation
.end field

.field public final kit_variants_string_list:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final kit_version_string_list:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xe
    .end annotation
.end field

.field public final login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginRoute#ADAPTER"
        tag = 0x3
    .end annotation
.end field

.field public final month:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x7
    .end annotation
.end field

.field public final oauth_client_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final sample_rate:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x4
    .end annotation
.end field

.field public final snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType#ADAPTER"
        tag = 0xb
    .end annotation
.end field

.field public final year:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$ProtoAdapter_SkateEvent;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$ProtoAdapter_SkateEvent;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;->NO_SESSION_BUCKET:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_DAILY_SESSION_BUCKET:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_IS_FIRST_WITHIN_MONTH:Ljava/lang/Boolean;

    .line 4
    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;->UNKNOWN_LOGIN_ROUTE:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_LOGIN_ROUTE:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    const-wide/16 v1, 0x0

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_SAMPLE_RATE:Ljava/lang/Double;

    const-wide/16 v1, 0x0

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_DAY:Ljava/lang/Long;

    .line 7
    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_MONTH:Ljava/lang/Long;

    .line 8
    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_YEAR:Ljava/lang/Long;

    .line 9
    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_SNAP_KIT_INIT_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 10
    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;->NO_PLUGIN:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_KIT_PLUGIN_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 11
    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->DEFAULT_IS_FROM_REACT_NATIVE_PLUGIN:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;Ljava/lang/Boolean;Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    sget-object v16, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct/range {v0 .. v16}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;Ljava/lang/Boolean;Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;Ljava/lang/Boolean;Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V
    .locals 3

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    move-object/from16 v2, p16

    invoke-direct {p0, v1, v2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_first_within_month:Ljava/lang/Boolean;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->sample_rate:Ljava/lang/Double;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_variants_string_list:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->day:Ljava/lang/Long;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->month:Ljava/lang/Long;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->year:Ljava/lang/Long;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->oauth_client_id:Ljava/lang/String;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_app_id:Ljava/lang/String;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->core_version:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_version_string_list:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_from_react_native_plugin:Ljava/lang/Boolean;

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
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_first_within_month:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_first_within_month:Ljava/lang/Boolean;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->sample_rate:Ljava/lang/Double;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->sample_rate:Ljava/lang/Double;

    .line 7
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_variants_string_list:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_variants_string_list:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->day:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->day:Ljava/lang/Long;

    .line 9
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->month:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->month:Ljava/lang/Long;

    .line 10
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->year:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->year:Ljava/lang/Long;

    .line 11
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->oauth_client_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->oauth_client_id:Ljava/lang/String;

    .line 12
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_app_id:Ljava/lang/String;

    .line 13
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 14
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 15
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->core_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->core_version:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_version_string_list:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_version_string_list:Ljava/lang/String;

    .line 17
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_from_react_native_plugin:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_from_react_native_plugin:Ljava/lang/Boolean;

    .line 18
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

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_first_within_month:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->sample_rate:Ljava/lang/Double;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_variants_string_list:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->day:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->month:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->year:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->oauth_client_id:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_app_id:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 14
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 15
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->core_version:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 16
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_version_string_list:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 17
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_from_react_native_plugin:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    .line 18
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_f
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_first_within_month:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->is_first_within_month:Ljava/lang/Boolean;

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->sample_rate:Ljava/lang/Double;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->sample_rate:Ljava/lang/Double;

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_variants_string_list:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->kit_variants_string_list:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->day:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->day:Ljava/lang/Long;

    .line 9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->month:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->month:Ljava/lang/Long;

    .line 10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->year:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->year:Ljava/lang/Long;

    .line 11
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->oauth_client_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->oauth_client_id:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_app_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->kit_app_id:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 14
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 15
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->core_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->core_version:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_version_string_list:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->kit_version_string_list:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_from_react_native_plugin:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->is_from_react_native_plugin:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    if-eqz v1, :cond_0

    const-string v1, ", daily_session_bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->daily_session_bucket:Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_first_within_month:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const-string v1, ", is_first_within_month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_first_within_month:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    if-eqz v1, :cond_2

    const-string v1, ", login_route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->login_route:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->sample_rate:Ljava/lang/Double;

    if-eqz v1, :cond_3

    const-string v1, ", sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->sample_rate:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_variants_string_list:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", kit_variants_string_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_variants_string_list:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->day:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->day:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->month:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->month:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->year:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->year:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->oauth_client_id:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, ", oauth_client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->oauth_client_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_app_id:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", kit_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    if-eqz v1, :cond_a

    const-string v1, ", snap_kit_init_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->snap_kit_init_type:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    if-eqz v1, :cond_b

    const-string v1, ", kit_plugin_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->core_version:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, ", core_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->core_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_c
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_version_string_list:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, ", kit_version_string_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->kit_version_string_list:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_d
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_from_react_native_plugin:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    const-string v1, ", is_from_react_native_plugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->is_from_react_native_plugin:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "SkateEvent{"

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
