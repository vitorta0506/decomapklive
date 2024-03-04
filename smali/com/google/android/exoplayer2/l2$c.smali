.class public final Lcom/google/android/exoplayer2/l2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/l2$c;->a:Lcom/google/android/exoplayer2/util/l;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l2$c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/l;->a(I)Z

    move-result p1

    return p1
.end method

.method public varargs b([I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l2$c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/l;->b([I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/l2$c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/l2$c;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/l2$c;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object p1, p1, Lcom/google/android/exoplayer2/l2$c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l2$c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->hashCode()I

    move-result v0

    return v0
.end method
