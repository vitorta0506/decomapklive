.class public final Lk2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/k1;

.field public final g:I

.field public final h:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:I

.field private final k:[Lk2/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJJJLcom/google/android/exoplayer2/k1;I[Lk2/p;I[J[J)V
    .locals 0
    .param p11    # [Lk2/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lk2/o;->a:I

    .line 3
    iput p2, p0, Lk2/o;->b:I

    .line 4
    iput-wide p3, p0, Lk2/o;->c:J

    .line 5
    iput-wide p5, p0, Lk2/o;->d:J

    .line 6
    iput-wide p7, p0, Lk2/o;->e:J

    .line 7
    iput-object p9, p0, Lk2/o;->f:Lcom/google/android/exoplayer2/k1;

    .line 8
    iput p10, p0, Lk2/o;->g:I

    .line 9
    iput-object p11, p0, Lk2/o;->k:[Lk2/p;

    .line 10
    iput p12, p0, Lk2/o;->j:I

    .line 11
    iput-object p13, p0, Lk2/o;->h:[J

    .line 12
    iput-object p14, p0, Lk2/o;->i:[J

    return-void
.end method


# virtual methods
.method public a(I)Lk2/p;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/o;->k:[Lk2/p;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
