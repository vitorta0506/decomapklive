.class public final Lcom/snap/kit/common/model/DeviceEnvironmentInfo;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;,
        Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snap/kit/common/model/DeviceEnvironmentInfo;",
        "Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snap/kit/common/model/DeviceEnvironmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_IS_APP_PRERELEASE:Lcom/snap/kit/common/model/Types$Trilean;

.field public static final DEFAULT_LOCALE:Ljava/lang/String; = ""

.field public static final DEFAULT_MODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_TYPE:Lcom/snap/kit/common/model/OsType$Enum;

.field public static final DEFAULT_OS_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_RUNNING_IN_SIMULATOR:Lcom/snap/kit/common/model/Types$Trilean;

.field public static final DEFAULT_RUNNING_IN_TESTS:Lcom/snap/kit/common/model/Types$Trilean;

.field public static final DEFAULT_RUNNING_WITH_DEBUGGER_ATTACHED:Lcom/snap/kit/common/model/Types$Trilean;

.field public static final DEFAULT_TARGET_ARCHITECTURE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER"
        tag = 0x9
    .end annotation
.end field

.field public final locale:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final os_type:Lcom/snap/kit/common/model/OsType$Enum;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snap.kit.common.model.OsType$Enum#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final os_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER"
        tag = 0x7
    .end annotation
.end field

.field public final running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final target_architecture:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;

    invoke-direct {v0}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;-><init>()V

    sput-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 2
    sget-object v0, Lcom/snap/kit/common/model/OsType$Enum;->NONE:Lcom/snap/kit/common/model/OsType$Enum;

    sput-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->DEFAULT_OS_TYPE:Lcom/snap/kit/common/model/OsType$Enum;

    .line 3
    sget-object v0, Lcom/snap/kit/common/model/Types$Trilean;->NONE:Lcom/snap/kit/common/model/Types$Trilean;

    sput-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->DEFAULT_RUNNING_WITH_DEBUGGER_ATTACHED:Lcom/snap/kit/common/model/Types$Trilean;

    .line 4
    sput-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->DEFAULT_RUNNING_IN_TESTS:Lcom/snap/kit/common/model/Types$Trilean;

    .line 5
    sput-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->DEFAULT_RUNNING_IN_SIMULATOR:Lcom/snap/kit/common/model/Types$Trilean;

    .line 6
    sput-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->DEFAULT_IS_APP_PRERELEASE:Lcom/snap/kit/common/model/Types$Trilean;

    return-void
.end method

.method public constructor <init>(Lcom/snap/kit/common/model/OsType$Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;)V
    .locals 11

    .line 1
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;-><init>(Lcom/snap/kit/common/model/OsType$Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snap/kit/common/model/OsType$Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lokio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    .line 4
    iput-object p2, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    .line 9
    iput-object p7, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    .line 10
    iput-object p8, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    .line 11
    iput-object p9, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

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
    instance-of v1, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    .line 9
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    .line 10
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    iget-object v3, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    .line 11
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    iget-object p1, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    .line 12
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

    if-nez v0, :cond_9

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

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
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 9
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 10
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 11
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 12
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_9
    return v0
.end method

.method public final newBuilder()Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 2

    .line 2
    new-instance v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    invoke-direct {v0}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->a:Lcom/snap/kit/common/model/OsType$Enum;

    .line 4
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->c:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->d:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->e:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->f:Lcom/snap/kit/common/model/Types$Trilean;

    .line 9
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->g:Lcom/snap/kit/common/model/Types$Trilean;

    .line 10
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->h:Lcom/snap/kit/common/model/Types$Trilean;

    .line 11
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    iput-object v1, v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->i:Lcom/snap/kit/common/model/Types$Trilean;

    .line 12
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->newBuilder()Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    if-eqz v1, :cond_0

    const-string v1, ", os_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", target_architecture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_5

    const-string v1, ", running_with_debugger_attached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_6

    const-string v1, ", running_in_tests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_7

    const-string v1, ", running_in_simulator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    if-eqz v1, :cond_8

    const-string v1, ", is_app_prerelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "DeviceEnvironmentInfo{"

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
