.class public final Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$ProtoAdapter_LoginKitAuthStart;,
        Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FEATURES_REQUESTED_STRING_LIST:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final features_requested_string_list:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginKitEventBase#ADAPTER"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$ProtoAdapter_LoginKitAuthStart;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$ProtoAdapter_LoginKitAuthStart;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    .line 4
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->features_requested_string_list:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->features_requested_string_list:Ljava/lang/String;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->features_requested_string_list:Ljava/lang/String;

    .line 5
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

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->features_requested_string_list:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 5
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_2
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->features_requested_string_list:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;->features_requested_string_list:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    if-eqz v1, :cond_0

    const-string v1, ", log_kit_event_base="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->features_requested_string_list:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", features_requested_string_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->features_requested_string_list:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "LoginKitAuthStart{"

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
