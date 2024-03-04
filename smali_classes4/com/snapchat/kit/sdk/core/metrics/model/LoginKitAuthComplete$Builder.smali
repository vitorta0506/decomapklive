.class public final Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public is_success:Ljava/lang/Boolean;

.field public log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;
    .locals 4

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->is_success:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    move-result-object v0

    return-object v0
.end method

.method public final is_success(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->is_success:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final log_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->log_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    return-object p0
.end method
