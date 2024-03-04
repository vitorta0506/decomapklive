.class public final Lcom/snapchat/kit/sdk/core/models/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/snapchat/kit/sdk/core/models/c;->a:J

    .line 3
    iput-wide p3, p0, Lcom/snapchat/kit/sdk/core/models/c;->b:J

    .line 4
    iput-wide p5, p0, Lcom/snapchat/kit/sdk/core/models/c;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/kit/sdk/core/models/c;)Z
    .locals 5

    iget-wide v0, p0, Lcom/snapchat/kit/sdk/core/models/c;->a:J

    iget-wide v2, p1, Lcom/snapchat/kit/sdk/core/models/c;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/models/c;->b(Lcom/snapchat/kit/sdk/core/models/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/snapchat/kit/sdk/core/models/c;)Z
    .locals 5

    iget-wide v0, p0, Lcom/snapchat/kit/sdk/core/models/c;->b:J

    iget-wide v2, p1, Lcom/snapchat/kit/sdk/core/models/c;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/snapchat/kit/sdk/core/models/c;->c:J

    iget-wide v2, p1, Lcom/snapchat/kit/sdk/core/models/c;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
