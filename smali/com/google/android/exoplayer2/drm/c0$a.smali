.class public final Lcom/google/android/exoplayer2/drm/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>([BLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/c0$a;->a:[B

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/c0$a;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/drm/c0$a;->c:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c0$a;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c0$a;->b:Ljava/lang/String;

    return-object v0
.end method