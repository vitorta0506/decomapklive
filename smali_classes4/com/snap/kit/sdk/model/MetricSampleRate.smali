.class public final Lcom/snap/kit/sdk/model/MetricSampleRate;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;,
        Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snap/kit/sdk/model/MetricSampleRate;",
        "Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snap/kit/sdk/model/MetricSampleRate;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_RATE:Ljava/lang/Double;

.field private static final serialVersionUID:J


# instance fields
.field public final rate:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;

    invoke-direct {v0}, Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;-><init>()V

    sput-object v0, Lcom/snap/kit/sdk/model/MetricSampleRate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/snap/kit/sdk/model/MetricSampleRate;->DEFAULT_RATE:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, v0}, Lcom/snap/kit/sdk/model/MetricSampleRate;-><init>(Ljava/lang/Double;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lokio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/snap/kit/sdk/model/MetricSampleRate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

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
    instance-of v1, p1, Lcom/snap/kit/sdk/model/MetricSampleRate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snap/kit/sdk/model/MetricSampleRate;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    iget-object p1, p1, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    .line 4
    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_1
    return v0
.end method

.method public final newBuilder()Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;

    invoke-direct {v0}, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    iput-object v1, v0, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;->rate:Ljava/lang/Double;

    .line 4
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snap/kit/sdk/model/MetricSampleRate;->newBuilder()Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    if-eqz v1, :cond_0

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MetricSampleRate{"

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
