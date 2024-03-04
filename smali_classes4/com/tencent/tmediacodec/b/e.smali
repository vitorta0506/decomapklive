.class public abstract Lcom/tencent/tmediacodec/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmediacodec/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmediacodec/b/e$b;,
        Lcom/tencent/tmediacodec/b/e$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Lcom/tencent/tmediacodec/b/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field public a:Lcom/tencent/tmediacodec/b/e$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Lcom/tencent/tmediacodec/b/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected f:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final g:Lcom/tencent/tmediacodec/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final h:Ljava/lang/String;

.field public i:I

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final p:[I

.field private final q:Landroid/media/MediaCodec;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Lcom/tencent/tmediacodec/b/e$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private u:Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:J

.field private w:Lcom/tencent/tmediacodec/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Z

.field private y:Lcom/tencent/tmediacodec/d/a$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/tmediacodec/b/e;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Lcom/tencent/tmediacodec/b/d;)V
    .locals 6
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/tmediacodec/b/e$b;->a:Lcom/tencent/tmediacodec/b/e$b;

    iput-object v0, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReuseCodecWrapper["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->m:Ljava/util/HashSet;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->n:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->o:Ljava/util/Set;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 7
    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->p:[I

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    .line 9
    sget-object v1, Lcom/tencent/tmediacodec/b/e$a;->a:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    .line 10
    sget-object v1, Lcom/tencent/tmediacodec/d/a$b;->a:Lcom/tencent/tmediacodec/d/a$b;

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->y:Lcom/tencent/tmediacodec/d/a$b;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->A:Z

    .line 12
    iput-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->B:Z

    .line 13
    iput v1, p0, Lcom/tencent/tmediacodec/b/e;->i:I

    .line 14
    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    .line 15
    iput-object p2, p0, Lcom/tencent/tmediacodec/b/e;->e:Lcom/tencent/tmediacodec/b/d;

    .line 16
    new-instance v2, Lcom/tencent/tmediacodec/b/a;

    iget v3, p2, Lcom/tencent/tmediacodec/b/d;->g:I

    iget v4, p2, Lcom/tencent/tmediacodec/b/d;->h:I

    iget v5, p2, Lcom/tencent/tmediacodec/b/d;->i:I

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/tmediacodec/b/a;-><init>(III)V

    iput-object v2, p0, Lcom/tencent/tmediacodec/b/e;->g:Lcom/tencent/tmediacodec/b/a;

    .line 17
    invoke-static {p1}, Lcom/tencent/tmediacodec/f/c;->a(Landroid/media/MediaCodec;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tmediacodec/b/e;->h:Ljava/lang/String;

    .line 18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_1

    const-string v4, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SM-T585"

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SM-A510"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SM-A520"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SM-J700"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    :cond_0
    sget v2, Lcom/tencent/tmediacodec/d/a$a;->c:I

    goto :goto_0

    :cond_1
    const/16 v4, 0x18

    if-ge v3, v4, :cond_4

    const-string v4, "OMX.Nvidia.h264.decode"

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "flounder"

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "flounder_lte"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "grouper"

    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "tilapia"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    :cond_3
    sget v2, Lcom/tencent/tmediacodec/d/a$a;->b:I

    goto :goto_0

    .line 26
    :cond_4
    sget v2, Lcom/tencent/tmediacodec/d/a$a;->a:I

    .line 27
    :goto_0
    iput v2, p0, Lcom/tencent/tmediacodec/b/e;->l:I

    const/16 v2, 0x1d

    const/4 v4, 0x1

    if-ne v3, v2, :cond_6

    .line 28
    iget v2, p2, Lcom/tencent/tmediacodec/b/d;->d:I

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 29
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "canCallGetCodecInfo:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p1

    iget-object p2, p2, Lcom/tencent/tmediacodec/b/d;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->u:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->u:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/tencent/tmediacodec/f/c;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/tencent/tmediacodec/b/e;->c:Z

    .line 32
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->u:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/tencent/tmediacodec/f/c;->b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    iput-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->d:Z

    return-void
.end method

.method public static a(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/b/b;
    .locals 0
    .param p0    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/tencent/tmediacodec/f/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/tencent/tmediacodec/b/f;

    invoke-direct {p1, p0, p2}, Lcom/tencent/tmediacodec/b/f;-><init>(Landroid/media/MediaCodec;Lcom/tencent/tmediacodec/b/d;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/tencent/tmediacodec/b/c;

    invoke-direct {p1, p0}, Lcom/tencent/tmediacodec/b/c;-><init>(Landroid/media/MediaCodec;)V

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/tmediacodec/b/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    return-object p0
.end method

.method private a(II)V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->B:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/tencent/tmediacodec/b/e;->b(II)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 145
    iput-boolean p2, p0, Lcom/tencent/tmediacodec/b/e;->B:Z

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackDecodeApi state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  surfaceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->f:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    const p1, 0x9c42

    .line 148
    invoke-direct {p0, p1, v0, v2}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-ne p1, p2, :cond_2

    const p1, 0xea62

    .line 149
    invoke-direct {p0, p1, v0, v2}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 39
    iget-object v5, p0, Lcom/tencent/tmediacodec/b/e;->f:Landroid/view/Surface;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->A:Z

    if-nez p3, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " handleCoreAPIException exception:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_1

    .line 43
    invoke-static {p5}, Lcom/tencent/tmediacodec/b/e;->b(Landroid/view/Surface;)I

    move-result p4

    if-eqz p4, :cond_1

    move p1, p4

    .line 44
    :cond_1
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p5, "errorCode"

    .line 45
    invoke-virtual {p4, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "exceptionMsg"

    .line 46
    invoke-virtual {p4, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object p5, p0, Lcom/tencent/tmediacodec/b/e;->w:Lcom/tencent/tmediacodec/a/a;

    if-eqz p5, :cond_2

    .line 48
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p5, p4}, Lcom/tencent/tmediacodec/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 49
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    .line 50
    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "hasReused:"

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->x:Z

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "    errorCode:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2, p3}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/tencent/tmediacodec/b/e;->b(I)V

    return-void
.end method

.method private a(Landroid/view/Surface;)V
    .locals 6

    .line 4
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", oldSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->f:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CodecWrapperSetSurface surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmediacodec/hook/a;->a(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/tencent/tmediacodec/b/e;->a(Ljava/util/Set;)V

    .line 8
    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->f:Landroid/view/Surface;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 10
    invoke-static {p1}, Lcom/tencent/tmediacodec/f/c;->a(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/tmediacodec/b/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 12
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " checkSurfaceBinding size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/tmediacodec/b/e;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSurfaceMap:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    sget-object v0, Lcom/tencent/tmediacodec/b/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmediacodec/b/e;

    if-eqz v1, :cond_3

    .line 16
    iget-boolean v2, v1, Lcom/tencent/tmediacodec/b/e;->s:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    iget-object v3, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", surface:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has been used by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isReleaseCalled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ignore but we can release it..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/tmediacodec/f/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {v1}, Lcom/tencent/tmediacodec/b/e;->i()V

    .line 20
    :cond_5
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->r:Ljava/lang/String;

    new-instance v0, Lcom/tencent/tmediacodec/b/e$1;

    invoke-direct {v0, p0}, Lcom/tencent/tmediacodec/b/e$1;-><init>(Lcom/tencent/tmediacodec/b/e;)V

    invoke-static {p1, v0}, Lcom/tencent/tmediacodec/hook/a;->a(Ljava/lang/String;Lcom/tencent/tmediacodec/hook/b;)V

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/tencent/tmediacodec/b/e;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/tmediacodec/b/e;->a(Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3

    .line 23
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", removeStoreSurfaceTexture nameSurfaceTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", releaseSurfaceTexture toReleaseSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 63
    invoke-static {v1}, Lcom/tencent/tmediacodec/hook/a;->a(Landroid/graphics/SurfaceTexture;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/tmediacodec/b/e;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 1

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tmediacodec/b/e;->a(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4

    .line 30
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", removeSurfaceBinding toReleaseNameSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " toReleaseCodecSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/tencent/tmediacodec/b/e;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-static {v2}, Lcom/tencent/tmediacodec/f/c;->a(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 38
    invoke-static {v2}, Lcom/tencent/tmediacodec/hook/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 52
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", releaseStoreSurfaceTexture mStoreToRelease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->o:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->o:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_1

    .line 57
    new-instance p1, Lcom/tencent/tmediacodec/b/e$2;

    invoke-direct {p1, p0, v0}, Lcom/tencent/tmediacodec/b/e$2;-><init>(Lcom/tencent/tmediacodec/b/e;Ljava/util/List;)V

    invoke-static {p1}, Lcom/tencent/tmediacodec/f/d;->b(Ljava/lang/Runnable;)V

    return-void

    .line 58
    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/tmediacodec/b/e;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private static b(Landroid/view/Surface;)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x2713

    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x2714

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/tencent/tmediacodec/b/e;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/tmediacodec/b/e;->o:Ljava/util/Set;

    return-object p0
.end method

.method private b(I)V
    .locals 3

    const v0, 0x9c40

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "    releaseCodecWhenError, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tmediacodec/f/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->g()V

    :cond_1
    return-void
.end method

.method private b(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 10
    iget-object p2, p0, Lcom/tencent/tmediacodec/b/e;->p:[I

    aget v1, p2, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, p2, p1

    .line 11
    aget p1, p2, p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    return v2

    :cond_0
    return v0

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/tencent/tmediacodec/b/e;->p:[I

    aput v0, p2, p1

    return v0
.end method

.method static synthetic c(Lcom/tencent/tmediacodec/b/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/tmediacodec/b/e;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/tmediacodec/b/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/tmediacodec/b/e;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/tmediacodec/b/e;)Lcom/tencent/tmediacodec/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/tmediacodec/b/e;->w:Lcom/tencent/tmediacodec/a/a;

    return-object p0
.end method

.method private l()Z
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tmediacodec/b/e;->v:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 2
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    invoke-direct {p0}, Lcom/tencent/tmediacodec/b/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string p2, "ignore call method dequeueOutputBuffer for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    .line 120
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", dequeueOutputBuffer outIndex:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    instance-of p2, p0, Lcom/tencent/tmediacodec/b/f;

    if-eqz p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/tmediacodec/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    iget-object p2, p0, Lcom/tencent/tmediacodec/b/e;->m:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object p2, Lcom/tencent/tmediacodec/b/e$b;->d:Lcom/tencent/tmediacodec/b/e$b;

    iput-object p2, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;

    const/4 p2, 0x1

    .line 126
    invoke-direct {p0, p2, p1}, Lcom/tencent/tmediacodec/b/e;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 127
    instance-of p3, p1, Landroid/media/MediaCodec$CodecException;

    if-nez p3, :cond_2

    .line 128
    instance-of p3, p1, Ljava/lang/IllegalStateException;

    if-eqz p3, :cond_3

    const p2, 0xea60

    goto :goto_0

    :cond_2
    const p2, 0xea61

    .line 129
    :cond_3
    :goto_0
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    throw p1
.end method

.method public final a()Landroid/media/MediaCodec;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final a(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/d/a$b;
    .locals 0
    .param p1    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/tencent/tmediacodec/b/e;->b(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/d/a$b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->y:Lcom/tencent/tmediacodec/d/a$b;

    return-object p1
.end method

.method public final a(I)V
    .locals 4

    .line 131
    invoke-direct {p0}, Lcom/tencent/tmediacodec/b/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string v0, "ignore call method releaseOutputBuffer for isNotMyThread"

    invoke-static {p1, v0}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseOutputBuffer render:true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/tmediacodec/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->m:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 138
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    sget-object v2, Lcom/tencent/tmediacodec/b/e$a;->d:Lcom/tencent/tmediacodec/b/e$a;

    if-eq v1, v2, :cond_2

    .line 139
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", releaseOutputBuffer failed, ignore e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/tencent/tmediacodec/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v1, 0x0

    .line 140
    instance-of v2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_3

    const v1, 0x11172

    goto :goto_0

    .line 141
    :cond_3
    instance-of v2, p1, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_4

    const v1, 0x11171

    .line 142
    :cond_4
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :goto_1
    sget-object p1, Lcom/tencent/tmediacodec/b/e$b;->e:Lcom/tencent/tmediacodec/b/e$b;

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;

    return-void
.end method

.method public final a(IIJI)V
    .locals 10

    .line 100
    invoke-direct {p0}, Lcom/tencent/tmediacodec/b/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string p2, "ignore call method queueInputBuffer for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queueInputBuffer index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offset:0 size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " presentationTimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " decodeState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/tmediacodec/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->x:Z

    if-eqz v1, :cond_5

    .line 106
    sget-object v1, Lcom/tencent/tmediacodec/b/e$4;->a:[I

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->y:Lcom/tencent/tmediacodec/d/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move v4, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 109
    :cond_4
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string p2, "queueInputBufferForAdaptation error for KEEP_CODEC_RESULT_NO"

    invoke-static {p1, p2}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 111
    :goto_0
    sget-object p1, Lcom/tencent/tmediacodec/b/e$b;->c:Lcom/tencent/tmediacodec/b/e$b;

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 112
    instance-of p3, p1, Landroid/media/MediaCodec$CodecException;

    if-nez p3, :cond_7

    .line 113
    instance-of p3, p1, Ljava/lang/IllegalStateException;

    if-nez p3, :cond_6

    .line 114
    instance-of p3, p1, Landroid/media/MediaCodec$CryptoException;

    if-eqz p3, :cond_8

    const p2, 0xc352

    goto :goto_1

    :cond_6
    const p2, 0xc350

    goto :goto_1

    :cond_7
    const p2, 0xc351

    .line 115
    :cond_8
    :goto_1
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    throw p1
.end method

.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    .locals 11
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Lcom/tencent/tmediacodec/b/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string p2, "ignore call method configure for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->z:Z

    const/4 v1, 0x0

    .line 71
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->s:Z

    .line 72
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    sget-object v3, Lcom/tencent/tmediacodec/b/e$a;->a:Lcom/tencent/tmediacodec/b/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 73
    :try_start_1
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", realConfigure mediaFormat:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surface:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " crypto:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flags:0 state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasConfigureCalled\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/tmediacodec/b/e;->z:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 77
    invoke-direct {p0, p2}, Lcom/tencent/tmediacodec/b/e;->a(Landroid/view/Surface;)V

    .line 78
    sget-object p1, Lcom/tencent/tmediacodec/b/e$a;->b:Lcom/tencent/tmediacodec/b/e$a;

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object v7, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, v4

    .line 79
    :goto_1
    :try_start_3
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_3

    .line 80
    instance-of v0, p1, Landroid/media/MediaCodec$CryptoException;

    if-eqz v0, :cond_2

    const/16 v1, 0x2711

    const/16 v6, 0x2711

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x2710

    const/16 v6, 0x2710

    :goto_2
    const/4 v9, 0x1

    move-object v5, p0

    move-object v8, p1

    move-object v10, p2

    .line 81
    invoke-direct/range {v5 .. v10}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V

    .line 82
    throw p1

    :cond_4
    if-eqz p2, :cond_9

    .line 83
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->p:[I

    aput v1, p1, v1

    .line 84
    aput v1, p1, v0

    .line 85
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->f:Landroid/view/Surface;

    if-ne p1, p2, :cond_5

    .line 86
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", innerSetOutputSurface error surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is same, stack:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 87
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_5
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " configure, call innerSetOutputSurface surface:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  decodeState:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callByInner:true"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_6
    move-object v2, v4

    .line 92
    :try_start_4
    invoke-direct {p0, p2}, Lcom/tencent/tmediacodec/b/e;->a(Landroid/view/Surface;)V

    .line 93
    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 94
    invoke-direct {p0, v0}, Lcom/tencent/tmediacodec/b/e;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 95
    :try_start_5
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_7

    .line 96
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_8

    const/16 v1, 0x7531

    goto :goto_3

    :cond_7
    const/16 v1, 0x7530

    :cond_8
    :goto_3
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V

    .line 98
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_9
    return-void

    :catchall_3
    move-exception p1

    .line 99
    throw p1
.end method

.method public final a(Lcom/tencent/tmediacodec/a/a;)V
    .locals 0
    .param p1    # Lcom/tencent/tmediacodec/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e;->w:Lcom/tencent/tmediacodec/a/a;

    return-void
.end method

.method public abstract b(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/d/a$b;
    .param p1    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public final b()V
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->n:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    iput-wide v0, p0, Lcom/tencent/tmediacodec/b/e;->v:J

    .line 5
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->n:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->B:Z

    .line 3
    iput v0, p0, Lcom/tencent/tmediacodec/b/e;->i:I

    .line 4
    invoke-static {}, Lcom/tencent/tmediacodec/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    sget-object v1, Lcom/tencent/tmediacodec/b/e$a;->e:Lcom/tencent/tmediacodec/b/e$a;

    if-ne v0, v1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string v2, "flush failed in prepareToReUse"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    sget-object v1, Lcom/tencent/tmediacodec/b/e$a;->d:Lcom/tencent/tmediacodec/b/e$a;

    if-eq v0, v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->e()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->x:Z

    return-void
.end method

.method public final d()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    sget-object v1, Lcom/tencent/tmediacodec/b/e$a;->b:Lcom/tencent/tmediacodec/b/e$a;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start ignore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", start state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    if-ne v2, v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 9
    sget-object v1, Lcom/tencent/tmediacodec/b/e$a;->e:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 10
    instance-of v3, v1, Landroid/media/MediaCodec$CodecException;

    if-nez v3, :cond_3

    .line 11
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_4

    const/16 v2, 0x4e20

    goto :goto_0

    :cond_3
    const/16 v2, 0x4e21

    .line 12
    :cond_4
    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    throw v1
.end method

.method public final e()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/tencent/tmediacodec/b/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string v1, "call method flush for isNotMyThread..."

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flush state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    .line 8
    sget-object v1, Lcom/tencent/tmediacodec/b/e$a;->d:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 9
    instance-of v3, v1, Landroid/media/MediaCodec$CodecException;

    if-nez v3, :cond_2

    .line 10
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_3

    const v2, 0x15f90

    goto :goto_0

    :cond_2
    const v2, 0x15f91

    .line 11
    :cond_3
    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    throw v1
.end method

.method public final f()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", codec real stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget-object v0, Lcom/tencent/tmediacodec/b/e$a;->a:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v0, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/tencent/tmediacodec/b/e$a;->a:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v1, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    .line 10
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string/jumbo v2, "stop failed"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " call release mHoldBufferOutIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->m:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mReleaseCalled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/tmediacodec/b/e;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 3
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->s:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->z:Z

    .line 7
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string v2, "flush failed for not in the Executing state."

    invoke-static {v1, v2, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmediacodec/a;->b(Lcom/tencent/tmediacodec/b/b;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t not keep the codec, release it ..., mErrorHappened:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/tmediacodec/b/e;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmediacodec/a;->a(Lcom/tencent/tmediacodec/b/b;)V

    .line 14
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->i()V

    .line 15
    sget-object v0, Lcom/tencent/tmediacodec/b/e$a;->g:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v0, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    return-void
.end method

.method public final h()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/tencent/tmediacodec/b/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string v1, "ignore call method dequeueInputBuffer for isNotMyThread"

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e;->q:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 4
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", dequeueInputBuffer state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " decodeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tencent/tmediacodec/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    sget-object v3, Lcom/tencent/tmediacodec/b/e$b;->b:Lcom/tencent/tmediacodec/b/e$b;

    iput-object v3, p0, Lcom/tencent/tmediacodec/b/e;->a:Lcom/tencent/tmediacodec/b/e$b;

    .line 8
    sget-object v3, Lcom/tencent/tmediacodec/b/e$a;->e:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v3, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    .line 9
    invoke-direct {p0, v1, v2}, Lcom/tencent/tmediacodec/b/e;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    .line 10
    instance-of v3, v2, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_2

    .line 11
    instance-of v3, v2, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_3

    const v1, 0x9c41

    goto :goto_0

    :cond_2
    const v1, 0x9c40

    .line 12
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/tmediacodec/b/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    throw v2
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", recycle isRecycled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/tmediacodec/b/e;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mSurfaceMap.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/tmediacodec/b/e;->j:Ljava/util/Map;

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "...... stack:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 3
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->b:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->k:Ljava/lang/String;

    const-string v1, "ignore recycle for has isRecycled is true."

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->z:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->b:Z

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmediacodec/b/e;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 10
    new-instance v0, Lcom/tencent/tmediacodec/b/e$3;

    invoke-direct {v0, p0}, Lcom/tencent/tmediacodec/b/e$3;-><init>(Lcom/tencent/tmediacodec/b/e;)V

    invoke-static {v0}, Lcom/tencent/tmediacodec/f/d;->a(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->f:Landroid/view/Surface;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/tencent/tmediacodec/b/e$a;->a:Lcom/tencent/tmediacodec/b/e$a;

    iput-object v0, p0, Lcom/tencent/tmediacodec/b/e;->t:Lcom/tencent/tmediacodec/b/e$a;

    return-void
.end method

.method public j()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/tmediacodec/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->A:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Lcom/tencent/tmediacodec/a;->b:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/tencent/tmediacodec/a;->e:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/b/e;->A:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lcom/tencent/tmediacodec/a;->b:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mReleaseCalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isRecycled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
