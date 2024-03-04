.class public final enum Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

.field public static final enum native_load_callback_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

.field public static final enum native_load_callback_timeout:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

.field public static final enum native_load_timeout_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

.field public static final enum native_show_callback_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

.field public static final enum native_show_callback_timeout:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

.field public static final enum native_show_timeout_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    const-string v1, "native_load_callback_error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_load_callback_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    .line 2
    new-instance v1, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    const-string v3, "native_load_callback_timeout"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_load_callback_timeout:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    .line 3
    new-instance v3, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    const-string v5, "native_show_callback_error"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_show_callback_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    .line 4
    new-instance v5, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    const-string v7, "native_show_callback_timeout"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_show_callback_timeout:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    .line 5
    new-instance v7, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    const-string v9, "native_load_timeout_error"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_load_timeout_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    .line 6
    new-instance v9, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    const-string v11, "native_show_timeout_error"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_show_timeout_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->$VALUES:[Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->$VALUES:[Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    return-object v0
.end method
