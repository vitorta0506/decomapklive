.class abstract Leh/u2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leh/u2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh/u2$c;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()J
.end method

.method b()C
    .locals 2

    invoke-virtual {p0}, Leh/u2$c;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Leh/u2$c;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public c()I
    .locals 3

    invoke-virtual {p0}, Leh/u2$c;->b()C

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p0}, Leh/u2$c;->b()C

    move-result v2

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public d()J
    .locals 6

    invoke-virtual {p0}, Leh/u2$c;->c()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p0}, Leh/u2$c;->c()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method abstract e()B
.end method

.method abstract f()J
.end method
