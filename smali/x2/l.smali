.class public abstract Lx2/l;
.super Lb2/f;
.source "SourceFile"

# interfaces
.implements Lx2/h;


# instance fields
.field private d:Lx2/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    iget-object v0, p0, Lx2/l;->d:Lx2/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx2/h;

    iget-wide v1, p0, Lx2/l;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lx2/h;->a(J)I

    move-result p1

    return p1
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lx2/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx2/l;->d:Lx2/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx2/h;

    iget-wide v1, p0, Lx2/l;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lx2/h;->b(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(I)J
    .locals 4

    iget-object v0, p0, Lx2/l;->d:Lx2/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx2/h;

    invoke-interface {v0, p1}, Lx2/h;->c(I)J

    move-result-wide v0

    iget-wide v2, p0, Lx2/l;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lx2/l;->d:Lx2/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx2/h;

    invoke-interface {v0}, Lx2/h;->d()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb2/a;->f()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx2/l;->d:Lx2/h;

    return-void
.end method

.method public q(JLx2/h;J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lb2/f;->b:J

    .line 2
    iput-object p3, p0, Lx2/l;->d:Lx2/h;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p4

    .line 3
    :goto_0
    iput-wide p1, p0, Lx2/l;->e:J

    return-void
.end method
