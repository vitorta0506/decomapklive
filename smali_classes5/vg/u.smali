.class public Lvg/u;
.super Lvg/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/v<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lvg/v;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected G(JJ)J
    .locals 2

    iget-wide v0, p0, Lvg/v;->m:J

    sub-long/2addr p1, p3

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method protected H(J)J
    .locals 0

    return-wide p1
.end method

.method protected I([Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation

    invoke-static {p1}, Lvg/k;->a([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 4

    iget-wide v0, p0, Lvg/v;->m:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lvg/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lvg/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lvg/a;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lvg/a;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lvg/a;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lvg/a;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lvg/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
