.class final Lh3/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh3/m$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k1;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Lcom/google/android/exoplayer2/k1;->d:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lh3/m$c;->a:Z

    .line 3
    invoke-static {p2, v1}, Lh3/m;->K(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lh3/m$c;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lh3/m$c;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/e3;->k()Lcom/google/common/collect/e3;

    move-result-object v0

    iget-boolean v1, p0, Lh3/m$c;->b:Z

    iget-boolean v2, p1, Lh3/m$c;->b:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object v0

    iget-boolean v1, p0, Lh3/m$c;->a:Z

    iget-boolean p1, p1, Lh3/m$c;->a:Z

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/e3;->h(ZZ)Lcom/google/common/collect/e3;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/e3;->j()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh3/m$c;

    invoke-virtual {p0, p1}, Lh3/m$c;->a(Lh3/m$c;)I

    move-result p1

    return p1
.end method
