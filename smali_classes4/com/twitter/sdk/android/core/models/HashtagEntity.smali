.class public Lcom/twitter/sdk/android/core/models/HashtagEntity;
.super Lcom/twitter/sdk/android/core/models/f;
.source "SourceFile"


# instance fields
.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/twitter/sdk/android/core/models/f;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/HashtagEntity;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getEnd()I
    .locals 1

    invoke-super {p0}, Lcom/twitter/sdk/android/core/models/f;->getEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStart()I
    .locals 1

    invoke-super {p0}, Lcom/twitter/sdk/android/core/models/f;->getStart()I

    move-result v0

    return v0
.end method
