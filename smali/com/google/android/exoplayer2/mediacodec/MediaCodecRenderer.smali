.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$a;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final j5:[B


# instance fields
.field private final A:[J

.field private B:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B3:Z

.field private C:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C4:Z

.field private D:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D4:Z

.field private E:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E4:Z

.field private F:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private F4:Z

.field private G:Z

.field private G4:Z

.field private H:J

.field private H4:Lcom/google/android/exoplayer2/mediacodec/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private I:F

.field private I4:J

.field private J:F

.field private J4:I

.field private K:Lcom/google/android/exoplayer2/mediacodec/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private K4:I

.field private L:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private L4:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private M:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private M4:Z

.field private N:Z

.field private N4:Z

.field private O:F

.field private O4:Z

.field private P:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/mediacodec/m;",
            ">;"
        }
    .end annotation
.end field

.field private P4:Z

.field private Q:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Q4:Z

.field private R:Lcom/google/android/exoplayer2/mediacodec/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private R4:Z

.field private S4:I

.field private T4:I

.field private U4:I

.field private V1:Z

.field private V2:Z

.field private V3:Z

.field private V4:Z

.field private W4:Z

.field private X4:Z

.field private Y4:J

.field private Z4:J

.field private a1:I

.field private a2:Z

.field private a5:Z

.field private b5:Z

.field private c5:Z

.field private d5:Z

.field private e5:Lcom/google/android/exoplayer2/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected f5:Lb2/e;

.field private g5:J

.field private h5:J

.field private i5:I

.field private final n:Lcom/google/android/exoplayer2/mediacodec/l$b;

.field private final o:Lcom/google/android/exoplayer2/mediacodec/o;

.field private final p:Z

.field private final q:F

.field private final r:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final u:Lcom/google/android/exoplayer2/mediacodec/h;

.field private final v:Lcom/google/android/exoplayer2/util/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/h0<",
            "Lcom/google/android/exoplayer2/k1;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroid/media/MediaCodec$BufferInfo;

.field private final y:[J

.field private final z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j5:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;ZF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/mediacodec/l$b;

    .line 3
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/o;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/o;

    .line 4
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Z

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:F

    .line 6
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->t()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 10
    new-instance p3, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/util/h0;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Ljava/util/ArrayList;

    .line 12
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 13
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:F

    .line 14
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:J

    const/16 p5, 0xa

    new-array v0, p5, [J

    .line 16
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[J

    new-array v0, p5, [J

    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[J

    new-array p5, p5, [J

    .line 18
    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:[J

    .line 19
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g5:J

    .line 20
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h5:J

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q(I)V

    .line 22
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:F

    .line 24
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1:I

    .line 25
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    .line 27
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K4:I

    .line 28
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I4:J

    .line 29
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    .line 30
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z4:J

    .line 31
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    .line 32
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    return-void
.end method

.method private A0(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaCrypto;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0

    .line 3
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:F

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->D()[Lcom/google/android/exoplayer2/k1;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0(FLcom/google/android/exoplayer2/k1;[Lcom/google/android/exoplayer2/k1;)F

    move-result v3

    .line 4
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 6
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    .line 7
    invoke-virtual {p0, p1, v5, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u0(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/l$a;

    move-result-object p2

    const/16 v5, 0x1f

    if-lt v0, v5, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->C()La2/s1;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$a;->a(Lcom/google/android/exoplayer2/mediacodec/l$a;La2/s1;)V

    .line 9
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCodec:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/j0;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/mediacodec/l$b;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/l$b;->a(Lcom/google/android/exoplayer2/mediacodec/l$a;)Lcom/google/android/exoplayer2/mediacodec/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/util/j0;->c()V

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Lcom/google/android/exoplayer2/mediacodec/m;

    .line 14
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:F

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1:I

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T(Ljava/lang/String;Lcom/google/android/exoplayer2/k1;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V1:Z

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a2:Z

    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V2:Z

    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B3:Z

    .line 22
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V3:Z

    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C4:Z

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    .line 25
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z(Ljava/lang/String;Lcom/google/android/exoplayer2/k1;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D4:Z

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X(Lcom/google/android/exoplayer2/mediacodec/m;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G4:Z

    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/l;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R4:Z

    .line 29
    iput v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    .line 30
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1:I

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E4:Z

    .line 31
    :cond_6
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    const-string v0, "c2.android.mp3.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/i;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H4:Lcom/google/android/exoplayer2/mediacodec/i;

    .line 33
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I4:J

    .line 35
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    iget v0, p1, Lb2/e;->a:I

    add-int/2addr v0, v7

    iput v0, p1, Lb2/e;->a:I

    sub-long v7, v5, v3

    move-object v0, p0

    move-object v2, p2

    move-wide v3, v5

    move-wide v5, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I0(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/l$a;JJ)V

    return-void

    :catchall_0
    move-exception p1

    .line 37
    invoke-static {}, Lcom/google/android/exoplayer2/util/j0;->c()V

    .line 38
    throw p1
.end method

.method private B0(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static C0(Ljava/lang/IllegalStateException;)Z
    .locals 3

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D0(Ljava/lang/IllegalStateException;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.MediaCodec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static D0(Ljava/lang/IllegalStateException;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    instance-of p0, p0, Landroid/media/MediaCodec$CodecException;

    return p0
.end method

.method private static E0(Ljava/lang/IllegalStateException;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private G0(Landroid/media/MediaCrypto;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m0(Z)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    .line 4
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/m;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/k1;Ljava/lang/Throwable;ZI)V

    throw v0

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/m;

    .line 12
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    if-nez v2, :cond_7

    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/m;

    .line 14
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f1(Lcom/google/android/exoplayer2/mediacodec/m;)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 15
    :cond_3
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A0(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "MediaCodecRenderer"

    if-ne v2, v0, :cond_4

    :try_start_2
    const-string v3, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    .line 16
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x32

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 18
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A0(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaCrypto;)V

    goto :goto_2

    .line 19
    :cond_4
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v3

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize decoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/r;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 22
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    invoke-direct {v4, v5, v3, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/k1;Ljava/lang/Throwable;ZLcom/google/android/exoplayer2/mediacodec/m;)V

    .line 23
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H0(Ljava/lang/Exception;)V

    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v2, :cond_5

    .line 25
    iput-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_3

    .line 26
    :cond_5
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 27
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw p1

    .line 29
    :cond_7
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    return-void

    .line 30
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/k1;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method private P()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/l1;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_5

    const/4 v4, -0x4

    if-eq v2, v4, :cond_2

    const/4 v0, -0x3

    if-ne v2, v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lb2/a;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    return-void

    .line 9
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c5:Z

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/k1;

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/k1;

    const/4 v4, 0x0

    .line 11
    invoke-virtual {p0, v2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L0(Lcom/google/android/exoplayer2/k1;Landroid/media/MediaFormat;)V

    .line 12
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c5:Z

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->r()V

    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/h;->v(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P4:Z

    return-void

    .line 16
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K0(Lcom/google/android/exoplayer2/l1;)Lb2/g;

    return-void
.end method

.method private P0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T0()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j0()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l1()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j0()V

    :goto_0
    return-void
.end method

.method private Q(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->A()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    .line 3
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v6, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K4:I

    const/4 v8, 0x0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->z()I

    move-result v9

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->x()J

    move-result-wide v10

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 6
    invoke-virtual {v0}, Lb2/a;->j()Z

    move-result v12

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 7
    invoke-virtual {v0}, Lb2/a;->k()Z

    move-result v16

    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/k1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    move/from16 v13, v16

    move-object/from16 v14, v17

    .line 8
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/k1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->y()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M0(J)V

    .line 10
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->f()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 11
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    return v0

    :cond_2
    const/4 v1, 0x1

    .line 13
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P4:Z

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/h;->v(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 15
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P4:Z

    .line 16
    :cond_3
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q4:Z

    if-eqz v2, :cond_5

    .line 17
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/h;->A()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 18
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c0()V

    .line 19
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q4:Z

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F0()V

    .line 21
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O4:Z

    if-nez v2, :cond_5

    return v0

    .line 22
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P()V

    .line 23
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/h;->A()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->r()V

    .line 25
    :cond_6
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/h;->A()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    if-nez v2, :cond_8

    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q4:Z

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v14, 0x1

    :goto_2
    return v14
.end method

.method private R0()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X4:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/l;->a()Landroid/media/MediaFormat;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1:I

    if-eqz v2, :cond_0

    const-string/jumbo v2, "width"

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-string v2, "height"

    .line 5
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F4:Z

    return-void

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D4:Z

    if-eqz v2, :cond_1

    const-string v2, "channel-count"

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Landroid/media/MediaFormat;

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    return-void
.end method

.method private S(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v1, "OMX.Exynos.avc.dec.secure"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/exoplayer2/util/l0;->d:Ljava/lang/String;

    const-string v2, "SM-T585"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A510"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A520"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-J700"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Lcom/google/android/exoplayer2/util/l0;->b:Ljava/lang/String;

    const-string v0, "flounder"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flounder_lte"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "grouper"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tilapia"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private S0(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/l1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K0(Lcom/google/android/exoplayer2/l1;)Lb2/g;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lb2/a;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static T(Ljava/lang/String;Lcom/google/android/exoplayer2/k1;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private T0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U0()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F0()V

    return-void
.end method

.method private static U(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.mp3.dec"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/l0;->c:Ljava/lang/String;

    const-string v0, "samsung"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/l0;->b:Ljava/lang/String;

    const-string v0, "baffin"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "grand"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fortuna"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gprimelte"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "j2y18lte"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ms01"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static V(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v1, 0x13

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/google/android/exoplayer2/util/l0;->b:Ljava/lang/String;

    const-string v1, "hb2000"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "stvm8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static W(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static X(Lcom/google/android/exoplayer2/mediacodec/m;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    .line 2
    sget v1, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/16 v2, 0x11

    if-gt v1, v2, :cond_1

    const-string v2, "OMX.allwinner.video.decoder.avc"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/google/android/exoplayer2/util/l0;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/exoplayer2/util/l0;->d:Ljava/lang/String;

    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/m;->g:Z

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static Y(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_0

    const-string v1, "OMX.SEC.avc.dec"

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/l0;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Y0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static Z(Ljava/lang/String;Lcom/google/android/exoplayer2/k1;)Z
    .locals 3

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/k1;->y:I

    if-ne p1, v1, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private Z0()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K4:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L4:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static a0(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a1(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/k;->a(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private c0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q4:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/h;->f()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P4:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O4:Z

    return-void
.end method

.method private d0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a2:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B3:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private d1(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/k;->a(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private e0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T0()V

    :goto_0
    return-void
.end method

.method private e1(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private f0()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a2:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B3:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l1()V

    :goto_1
    return v1
.end method

.method private g0(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y0()Z

    move-result v0

    const/16 v16, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_b

    .line 2
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V3:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W4:Z

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/l;->j(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    .line 5
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U0()V

    :cond_0
    return v14

    .line 7
    :cond_1
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/l;->j(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_5

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R0()V

    return v16

    .line 9
    :cond_2
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G4:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    if-nez v0, :cond_3

    iget v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 10
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    :cond_4
    return v14

    .line 11
    :cond_5
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F4:Z

    if-eqz v1, :cond_6

    .line 12
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F4:Z

    .line 13
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v1, v0, v14}, Lcom/google/android/exoplayer2/mediacodec/l;->releaseOutputBuffer(IZ)V

    return v16

    .line 14
    :cond_6
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_7

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    return v14

    .line 16
    :cond_7
    iput v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K4:I

    .line 17
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/l;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L4:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 18
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L4:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    :cond_8
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C4:Z

    if-eqz v0, :cond_9

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_9

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    iget-wide v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    .line 21
    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 22
    :cond_9
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0(J)Z

    move-result v0

    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M4:Z

    .line 23
    iget-wide v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z4:J

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N4:Z

    .line 24
    invoke-virtual {v15, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m1(J)V

    .line 25
    :cond_b
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V3:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W4:Z

    if-eqz v0, :cond_d

    .line 26
    :try_start_1
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L4:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K4:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M4:Z

    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N4:Z

    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/k1;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    const/16 v18, 0x0

    move-object/from16 v14, v17

    .line 27
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/k1;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    nop

    goto :goto_2

    :catch_2
    const/16 v18, 0x0

    .line 28
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    .line 29
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    if-eqz v0, :cond_c

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U0()V

    :cond_c
    return v18

    :cond_d
    const/16 v18, 0x0

    .line 31
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L4:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K4:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M4:Z

    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N4:Z

    iget-object v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/k1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 32
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/k1;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_10

    .line 33
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M0(J)V

    .line 34
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    const/4 v14, 0x1

    goto :goto_4

    :cond_e
    const/4 v14, 0x0

    .line 35
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z0()V

    if-nez v14, :cond_f

    return v16

    .line 36
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    :cond_10
    return v18
.end method

.method private h0(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .locals 4
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_7

    if-nez p3, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    sget v2, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/i;->e:Ljava/util/UUID;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/drm/DrmSession;->c()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 3
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/DrmSession;->c()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t0(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/d0;

    move-result-object p3

    if-nez p3, :cond_4

    return v1

    .line 5
    :cond_4
    iget-boolean p3, p3, Lcom/google/android/exoplayer2/drm/d0;->c:Z

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_5
    iget-object p2, p2, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    invoke-interface {p4, p2}, Lcom/google/android/exoplayer2/drm/DrmSession;->h(Ljava/lang/String;)Z

    move-result p2

    .line 7
    :goto_0
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/m;->g:Z

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method private i0()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e0()V

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    if-gez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/l;->i()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    if-gez v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/mediacodec/l;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 8
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G4:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W4:Z

    .line 11
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/l;->e(IIIJI)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y0()V

    .line 13
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    return v1

    .line 14
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E4:Z

    if-eqz v0, :cond_6

    .line 15
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E4:Z

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j5:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 17
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    const/4 v6, 0x0

    array-length v7, v1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/l;->e(IIIJI)V

    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y0()V

    .line 19
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    return v3

    .line 20
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    if-ne v0, v3, :cond_8

    const/4 v0, 0x0

    .line 21
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    iget-object v4, v4, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 22
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    iget-object v4, v4, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 23
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_7
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/l1;

    move-result-object v4

    .line 27
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v5
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->g()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 29
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z4:J

    :cond_9
    const/4 v6, -0x3

    if-ne v5, v6, :cond_a

    return v1

    :cond_a
    const/4 v6, -0x5

    if-ne v5, v6, :cond_c

    .line 30
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    if-ne v0, v2, :cond_b

    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 32
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    .line 33
    :cond_b
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K0(Lcom/google/android/exoplayer2/l1;)Lb2/g;

    return v3

    .line 34
    :cond_c
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lb2/a;->k()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 35
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    if-ne v0, v2, :cond_d

    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 37
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    .line 38
    :cond_d
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    .line 39
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    if-nez v0, :cond_e

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    return v1

    .line 41
    :cond_e
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G4:Z

    if-eqz v0, :cond_f

    goto :goto_2

    .line 42
    :cond_f
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W4:Z

    .line 43
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/l;->e(IIIJI)V

    .line 44
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y0()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v1

    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    .line 46
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/l0;->P(I)I

    move-result v2

    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 48
    :cond_10
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lb2/a;->m()Z

    move-result v4

    if-nez v4, :cond_12

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    if-ne v0, v2, :cond_11

    .line 51
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    :cond_11
    return v3

    .line 52
    :cond_12
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->s()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 53
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Lb2/c;

    invoke-virtual {v4, v0}, Lb2/c;->b(I)V

    .line 54
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V1:Z

    if-eqz v0, :cond_15

    if-nez v2, :cond_15

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->b(Ljava/nio/ByteBuffer;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_14

    return v3

    .line 57
    :cond_14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V1:Z

    .line 58
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 59
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H4:Lcom/google/android/exoplayer2/mediacodec/i;

    if-eqz v6, :cond_16

    .line 60
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    .line 61
    invoke-virtual {v6, v4, v0}, Lcom/google/android/exoplayer2/mediacodec/i;->d(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)J

    move-result-wide v4

    .line 62
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H4:Lcom/google/android/exoplayer2/mediacodec/i;

    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    .line 63
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/mediacodec/i;->b(Lcom/google/android/exoplayer2/k1;)J

    move-result-wide v8

    .line 64
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    :cond_16
    move-wide v12, v4

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lb2/a;->j()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c5:Z

    if-eqz v0, :cond_18

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/util/h0;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/exoplayer2/util/h0;->a(JLjava/lang/Object;)V

    .line 69
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c5:Z

    .line 70
    :cond_18
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->r()V

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lb2/a;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 74
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    if-eqz v2, :cond_1a

    .line 75
    :try_start_2
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v11, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Lb2/c;

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/l;->k(IILb2/c;JI)V

    goto :goto_3

    .line 76
    :cond_1a
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J4:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    .line 78
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/l;->e(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y0()V

    .line 80
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    .line 81
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    iget v1, v0, Lb2/e;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lb2/e;->c:I

    return v3

    :catch_1
    move-exception v0

    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    .line 84
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/l0;->P(I)I

    move-result v2

    .line 85
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H0(Ljava/lang/Exception;)V

    .line 87
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S0(I)Z

    .line 88
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j0()V

    return v3

    :cond_1b
    :goto_4
    return v1
.end method

.method private j0()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/l;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W0()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W0()V

    .line 3
    throw v0
.end method

.method protected static j1(Lcom/google/android/exoplayer2/k1;)Z
    .locals 1

    iget p0, p0, Lcom/google/android/exoplayer2/k1;->E:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private k1(Lcom/google/android/exoplayer2/k1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:F

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->D()[Lcom/google/android/exoplayer2/k1;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0(FLcom/google/android/exoplayer2/k1;[Lcom/google/android/exoplayer2/k1;)F

    move-result p1

    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e0()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    .line 9
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 10
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/mediacodec/l;->g(Landroid/os/Bundle;)V

    .line 12
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:F

    :cond_6
    :goto_1
    return v1
.end method

.method private l1()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t0(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/d0;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/d0;->b:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private m0(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s0(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;Z)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/o;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s0(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;Z)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drm session requires secure decoder for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private t0(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/d0;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->f()Lb2/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/d0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting FrameworkCryptoConfig but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const/16 v1, 0x1771

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 4
    :cond_1
    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/drm/d0;

    return-object p1
.end method

.method private y0()Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K4:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z0(Lcom/google/android/exoplayer2/k1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c0()V

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "audio/mpeg"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/opus"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/mediacodec/h;->B(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/mediacodec/h;->B(I)V

    .line 8
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O4:Z

    return-void
.end method


# virtual methods
.method protected F()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g5:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h5:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l0()Z

    return-void
.end method

.method protected final F0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O4:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h1(Lcom/google/android/exoplayer2/k1;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z0(Lcom/google/android/exoplayer2/k1;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_7

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t0(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/d0;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 10
    :cond_3
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/d0;->a:Ljava/util/UUID;

    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/d0;->b:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/drm/d0;->c:Z

    if-nez v1, :cond_4

    .line 12
    invoke-virtual {v2, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 14
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/google/android/exoplayer2/drm/d0;->d:Z

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    if-eq v0, v3, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    return-void

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    iget v2, v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 19
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G0(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const/16 v2, 0xfa1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    return-void
.end method

.method protected G(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    new-instance p1, Lb2/e;

    invoke-direct {p1}, Lb2/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    return-void
.end method

.method protected H(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a5:Z

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d5:Z

    .line 4
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O4:Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/mediacodec/h;->f()V

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P4:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k0()Z

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->l()I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_1

    .line 10
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c5:Z

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->c()V

    .line 12
    iget p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    if-eqz p2, :cond_2

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h5:J

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[J

    sub-int/2addr p2, p3

    aget-wide p2, v0, p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g5:J

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    :cond_2
    return-void
.end method

.method protected abstract H0(Ljava/lang/Exception;)V
.end method

.method protected I()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c0()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 4
    throw v1
.end method

.method protected abstract I0(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/l$a;JJ)V
.end method

.method protected J()V
    .locals 0

    return-void
.end method

.method protected abstract J0(Ljava/lang/String;)V
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected K0(Lcom/google/android/exoplayer2/l1;)Lb2/g;
    .locals 11
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c5:Z

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/l1;->b:Lcom/google/android/exoplayer2/k1;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/k1;

    .line 3
    iget-object v1, v5, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 4
    iget-object p1, p1, Lcom/google/android/exoplayer2/l1;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 5
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    .line 6
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O4:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q4:Z

    return-object v1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    if-nez p1, :cond_1

    .line 9
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F0()V

    return-object v1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Lcom/google/android/exoplayer2/mediacodec/m;

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h0(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e0()V

    .line 15
    new-instance p1, Lb2/g;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lb2/g;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;II)V

    return-object p1

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 17
    sget v3, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 18
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)Lb2/g;

    move-result-object v3

    .line 19
    iget v7, v3, Lb2/g;->d:I

    const/4 v8, 0x3

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eqz v7, :cond_f

    if-eq v7, v0, :cond_c

    if-eq v7, v10, :cond_8

    if-ne v7, v8, :cond_7

    .line 20
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k1(Lcom/google/android/exoplayer2/k1;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 21
    :cond_6
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    if-eqz v2, :cond_10

    .line 22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f0()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 24
    :cond_8
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k1(Lcom/google/android/exoplayer2/k1;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    .line 25
    :cond_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R4:Z

    .line 26
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    .line 27
    iget v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1:I

    if-eq v7, v10, :cond_b

    if-ne v7, v0, :cond_a

    iget v7, v5, Lcom/google/android/exoplayer2/k1;->q:I

    iget v9, v4, Lcom/google/android/exoplayer2/k1;->q:I

    if-ne v7, v9, :cond_a

    iget v7, v5, Lcom/google/android/exoplayer2/k1;->r:I

    iget v9, v4, Lcom/google/android/exoplayer2/k1;->r:I

    if-ne v7, v9, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E4:Z

    .line 28
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    if-eqz v2, :cond_10

    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f0()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 30
    :cond_c
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k1(Lcom/google/android/exoplayer2/k1;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_4
    const/16 v7, 0x10

    goto :goto_6

    .line 31
    :cond_d
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    if-eqz v2, :cond_e

    .line 32
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f0()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 33
    :cond_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d0()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_5
    const/4 v7, 0x2

    goto :goto_6

    .line 34
    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e0()V

    :cond_10
    const/4 v7, 0x0

    .line 35
    :goto_6
    iget v0, v3, Lb2/g;->d:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    if-ne v0, p1, :cond_11

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    if-ne p1, v8, :cond_12

    .line 36
    :cond_11
    new-instance p1, Lb2/g;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lb2/g;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;II)V

    return-object p1

    :cond_12
    return-object v3

    .line 37
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected L([Lcom/google/android/exoplayer2/k1;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h5:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g5:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g5:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h5:J

    goto :goto_2

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[J

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[J

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    sub-int/2addr v2, p1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/2addr v0, p1

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 9
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[J

    add-int/lit8 p3, v1, -0x1

    aput-wide p4, p2, p3

    .line 10
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:[J

    sub-int/2addr v1, p1

    iget-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    aput-wide p3, p2, v1

    :goto_2
    return-void
.end method

.method protected abstract L0(Lcom/google/android/exoplayer2/k1;Landroid/media/MediaFormat;)V
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected M0(J)V
    .locals 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g5:J

    .line 3
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h5:J

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i5:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected N0()V
    .locals 0

    return-void
.end method

.method protected abstract O0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract Q0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/k1;)Z
    .param p5    # Lcom/google/android/exoplayer2/mediacodec/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract R(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)Lb2/g;
.end method

.method protected U0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/l;->release()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    iget v2, v1, Lb2/e;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lb2/e;->b:I

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Lcom/google/android/exoplayer2/mediacodec/m;

    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X0()V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X0()V

    .line 14
    throw v1

    :catchall_1
    move-exception v1

    .line 15
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 16
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X0()V

    .line 21
    throw v1

    :catchall_2
    move-exception v1

    .line 22
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Landroid/media/MediaCrypto;

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X0()V

    .line 25
    throw v1
.end method

.method protected V0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected W0()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z0()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I4:J

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W4:Z

    .line 5
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V4:Z

    .line 6
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E4:Z

    .line 7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F4:Z

    .line 8
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M4:Z

    .line 9
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N4:Z

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y4:J

    .line 12
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z4:J

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H4:Lcom/google/android/exoplayer2/mediacodec/i;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/i;->c()V

    .line 15
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T4:I

    .line 16
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    .line 17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R4:Z

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    return-void
.end method

.method protected X0()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W0()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e5:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H4:Lcom/google/android/exoplayer2/mediacodec/i;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Ljava/util/ArrayDeque;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Lcom/google/android/exoplayer2/mediacodec/m;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X4:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:F

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1:I

    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V1:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a2:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V2:Z

    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B3:Z

    .line 16
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V3:Z

    .line 17
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C4:Z

    .line 18
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D4:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G4:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R4:Z

    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S4:I

    .line 22
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/k1;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/o;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected b0(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/m;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/mediacodec/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/m;)V

    return-object v0
.end method

.method protected final b1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d5:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    return v0
.end method

.method protected final c1(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e5:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-void
.end method

.method protected f1(Lcom/google/android/exoplayer2/mediacodec/m;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected g1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h1(Lcom/google/android/exoplayer2/k1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract i1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public isReady()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I4:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I4:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final k0()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F0()V

    :cond_0
    return v0
.end method

.method protected l0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U4:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a2:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V2:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X4:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B3:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W4:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 3
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    if-lt v0, v2, :cond_4

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l1()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/r;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U0()V

    return v3

    .line 7
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j0()V

    return v1

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U0()V

    return v3
.end method

.method protected final m1(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/h0;->j(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/k1;

    if-nez p1, :cond_0

    .line 2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/k1;

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/k1;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 5
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/k1;

    if-eqz p1, :cond_3

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/k1;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L0(Lcom/google/android/exoplayer2/k1;Landroid/media/MediaFormat;)V

    .line 7
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    :cond_3
    return-void
.end method

.method protected final n0()Lcom/google/android/exoplayer2/mediacodec/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    return-object v0
.end method

.method protected final o0()Lcom/google/android/exoplayer2/mediacodec/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Lcom/google/android/exoplayer2/mediacodec/m;

    return-object v0
.end method

.method protected p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:F

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:F

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Lcom/google/android/exoplayer2/k1;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k1(Lcom/google/android/exoplayer2/k1;)Z

    return-void
.end method

.method protected abstract q0(FLcom/google/android/exoplayer2/k1;[Lcom/google/android/exoplayer2/k1;)F
.end method

.method public final r()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected final r0()Landroid/media/MediaFormat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public s(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d5:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d5:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P0()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e5:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b5:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V0()V

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S0(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F0()V

    .line 9
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O4:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    .line 10
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/j0;->a(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/google/android/exoplayer2/util/j0;->c()V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Lcom/google/android/exoplayer2/mediacodec/l;

    if-eqz v2, :cond_7

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 15
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/j0;->a(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g0(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e1(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e1(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/exoplayer2/util/j0;->c()V

    goto :goto_3

    .line 20
    :cond_7
    iget-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    iget p4, p3, Lb2/e;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->O(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lb2/e;->d:I

    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S0(I)Z

    .line 22
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    invoke-virtual {p1}, Lb2/e;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H0(Ljava/lang/Exception;)V

    .line 25
    sget p2, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E0(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_9

    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U0()V

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o0()Lcom/google/android/exoplayer2/mediacodec/m;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b0(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/m;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:Lcom/google/android/exoplayer2/k1;

    const/16 p3, 0xfa3

    .line 28
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 29
    :cond_a
    throw p1

    :cond_b
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e5:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 31
    throw v0
.end method

.method protected abstract s0(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/o;",
            "Lcom/google/android/exoplayer2/k1;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected abstract u0(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final v0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h5:J

    return-wide v0
.end method

.method protected w0()F
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:F

    return v0
.end method

.method protected x0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method
