.class public final Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/sdk/model/MetricSampleRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snap/kit/sdk/model/MetricSampleRate;",
        "Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public rate:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snap/kit/sdk/model/MetricSampleRate;
    .locals 3

    .line 2
    new-instance v0, Lcom/snap/kit/sdk/model/MetricSampleRate;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;->rate:Ljava/lang/Double;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snap/kit/sdk/model/MetricSampleRate;-><init>(Ljava/lang/Double;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;->build()Lcom/snap/kit/sdk/model/MetricSampleRate;

    move-result-object v0

    return-object v0
.end method

.method public final rate(Ljava/lang/Double;)Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;->rate:Ljava/lang/Double;

    return-object p0
.end method
