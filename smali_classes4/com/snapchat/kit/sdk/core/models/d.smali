.class public Lcom/snapchat/kit/sdk/core/models/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_description"
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    instance-of v2, p1, Lcom/snapchat/kit/sdk/core/models/d;

    if-nez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/models/d;

    .line 3
    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/models/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/d;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/models/d;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/d;->b:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/models/d;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/models/d;->c:Ljava/lang/String;

    .line 5
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    :goto_0
    add-int/lit8 v0, v0, 0x11

    .line 2
    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/models/d;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    :goto_1
    add-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/models/d;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method
