.class abstract Lvg/v;
.super Lvg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final m:J


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lvg/a;-><init>(I)V

    const/4 v0, 0x4

    const-string v1, "maxCapacity"

    .line 2
    invoke-static {p2, v0, v1}, Lwg/b;->a(IILjava/lang/String;)I

    .line 3
    invoke-static {p1}, Lwg/a;->c(I)I

    move-result p1

    invoke-static {p2}, Lwg/a;->c(I)I

    move-result v0

    const-string v1, "initialCapacity"

    invoke-static {p1, v0, v1}, Lwg/b;->b(IILjava/lang/String;)I

    .line 4
    invoke-static {p2}, Lwg/a;->c(I)I

    move-result p1

    int-to-long p1, p1

    const/4 v0, 0x1

    shl-long/2addr p1, v0

    iput-wide p1, p0, Lvg/v;->m:J

    return-void
.end method
