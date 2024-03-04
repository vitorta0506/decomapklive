.class final Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/n3$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/n3$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->a:Lcom/google/android/exoplayer2/n3$a;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/k1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->a:Lcom/google/android/exoplayer2/n3$a;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n3$a;->c(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v0

    return-object v0
.end method
