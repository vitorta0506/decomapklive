.class public final Lcom/tencent/liteav/videoproducer/preprocessor/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/base/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/preprocessor/h$a;,
        Lcom/tencent/liteav/videoproducer/preprocessor/h$c;,
        Lcom/tencent/liteav/videoproducer/preprocessor/h$b;
    }
.end annotation


# instance fields
.field final a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Lcom/tencent/liteav/videobase/utils/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/tencent/liteav/base/b/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field e:Lcom/tencent/liteav/videobase/b/e;

.field f:Lcom/tencent/liteav/videobase/a/a;

.field private final g:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Ljava/nio/FloatBuffer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Ljava/nio/FloatBuffer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:[Lcom/tencent/liteav/videobase/a/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Lcom/tencent/liteav/videobase/a/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:Lcom/tencent/liteav/videobase/frame/j;

.field private p:Lcom/tencent/liteav/videobase/frame/e;

.field private final q:Lcom/tencent/liteav/videobase/videobase/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private r:Lcom/tencent/liteav/videobase/videobase/c;

.field private final s:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoproducer/preprocessor/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoproducer/preprocessor/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/liteav/videoproducer/preprocessor/h$b;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/tencent/liteav/videobase/a/b;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:[Lcom/tencent/liteav/videobase/a/b;

    .line 3
    new-instance v0, Lcom/tencent/liteav/videobase/utils/d;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b:Lcom/tencent/liteav/videobase/utils/d;

    .line 4
    new-instance v0, Lcom/tencent/liteav/videobase/a/h;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/a/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    .line 5
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->d:Lcom/tencent/liteav/base/b/b;

    const/16 v0, 0x80

    .line 6
    iput v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    .line 7
    iput v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    .line 8
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/videobase/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->s:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->t:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->u:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->g:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    .line 14
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 15
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createNormalCubeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->h:Ljava/nio/FloatBuffer;

    .line 16
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 p3, 0x0

    .line 17
    invoke-static {p1, p3, p3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/videobase/utils/Rotation;ZZ)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->i:Ljava/nio/FloatBuffer;

    .line 18
    invoke-virtual {p2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setAIDetectListener(Lcom/tencent/liteav/videobase/base/a;)V

    return-void
.end method

.method private static a(ILcom/tencent/liteav/videoproducer/preprocessor/ah;Ljava/util/List;)Lcom/tencent/liteav/videoproducer/preprocessor/h$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/liteav/videoproducer/preprocessor/ah;",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoproducer/preprocessor/h$c;",
            ">;)",
            "Lcom/tencent/liteav/videoproducer/preprocessor/h$c;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    .line 102
    iget v2, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    if-ne v2, p0, :cond_0

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->e:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

    if-ne v2, p1, :cond_0

    .line 103
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/tencent/liteav/videoproducer/preprocessor/h$c;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videoproducer/preprocessor/h$c;",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoproducer/preprocessor/h$c;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    .line 98
    iget v2, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    iget v3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->e:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->e:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

    if-ne v1, v2, :cond_0

    return-void

    .line 99
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .locals 8

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:[Lcom/tencent/liteav/videobase/a/b;

    sget v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$b;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/videobase/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    iget v2, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    invoke-virtual {v1, v2, v7}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 13
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->b:Lcom/tencent/liteav/videobase/videobase/a;

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iget v6, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v1, :cond_4

    .line 16
    iget v2, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    invoke-virtual {v1, v2, v7}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->b:Lcom/tencent/liteav/videobase/videobase/a;

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iget v6, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/c;->a()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    .line 22
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->b:Lcom/tencent/liteav/videobase/videobase/a;

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iget v6, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method final a(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:[Lcom/tencent/liteav/videobase/a/b;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object v2, v0, p1

    if-eqz v2, :cond_0

    .line 86
    aget-object p1, v0, p1

    return-object p1

    .line 87
    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/preprocessor/h$1;->a:[I

    aget v0, v0, p1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 88
    new-instance v0, Lcom/tencent/liteav/beauty/b/h;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/beauty/b/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unknown filter type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_2
    new-instance v0, Lcom/tencent/liteav/beauty/b/i;

    invoke-direct {v0}, Lcom/tencent/liteav/beauty/b/i;-><init>()V

    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Lcom/tencent/liteav/beauty/b/f;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Lcom/tencent/liteav/beauty/b/f;-><init>(F)V

    goto :goto_0

    .line 92
    :cond_4
    new-instance v0, Lcom/tencent/liteav/beauty/b/n;

    invoke-direct {v0}, Lcom/tencent/liteav/beauty/b/n;-><init>()V

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 94
    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 95
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:[Lcom/tencent/liteav/videobase/a/b;

    aput-object v0, v1, p1

    .line 96
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b()V

    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/c;->a()V

    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/c;->a()V

    .line 72
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 74
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 77
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->o:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 80
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->o:Lcom/tencent/liteav/videobase/frame/j;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 82
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 83
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    .line 84
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->d:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GPUPreprocessor"

    const-string/jumbo v3, "uninitialize opengl components"

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/m;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)V
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b:Lcom/tencent/liteav/videobase/utils/d;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v4, p1

    move v5, p3

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/tencent/liteav/videoproducer/preprocessor/n;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFF)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    .line 3
    iput p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "GPUPreprocessor"

    const-string v2, "process size update to %dx%d"

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->o:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->o:Lcom/tencent/liteav/videobase/frame/j;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videobase/a/h;->onOutputSizeChanged(II)V

    return-void
.end method

.method public final a(ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 8

    .line 50
    new-instance v7, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;-><init>(Lcom/tencent/liteav/videoproducer/preprocessor/h;ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    if-nez p5, :cond_0

    .line 51
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->s:Ljava/util/List;

    invoke-static {v7, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h$c;Ljava/util/List;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->t:Ljava/util/List;

    invoke-static {v7, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h$c;Ljava/util/List;)V

    .line 53
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c()V

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const/4 p1, 0x2

    aput-object p4, p2, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, p1

    const/4 p1, 0x4

    aput-object p6, p2, p1

    const-string p1, "GPUPreprocessor"

    const-string p3, "register listener, identity:%d, bufferType:%s, formatType:%s, withWatermark:%b, listener:%s"

    .line 55
    invoke-static {p1, p3, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->s:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(ILcom/tencent/liteav/videoproducer/preprocessor/ah;Ljava/util/List;)Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->t:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(ILcom/tencent/liteav/videoproducer/preprocessor/ah;Ljava/util/List;)Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 59
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1, p1, v0}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GPUPreprocessor"

    const-string/jumbo p2, "unregister listener: identity: %d, listener: %s"

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;FFF)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "GPUPreprocessor"

    const-string v2, "setWatermark xOffsetRatio: %.2f, yOffsetRatio: %.2f, widthRatio: %.2f"

    .line 64
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoproducer/preprocessor/j;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Landroid/graphics/Bitmap;FFF)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/a/a;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/i;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Lcom/tencent/liteav/videobase/a/a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 6

    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->n:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "GPUPreprocessor"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 14
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->n:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a()V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "set unique eglcore: %s"

    .line 16
    invoke-static {v3, v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->d:Lcom/tencent/liteav/base/b/b;

    const-string v5, "initGL"

    invoke-virtual {v1, v5}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    const-string v5, "initialize internal, eglContextFromPixelFrame: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v3, v5, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v1, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    const/4 v2, 0x0

    const/16 v5, 0x80

    .line 21
    invoke-virtual {v1, v0, v2, v5, v5}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 23
    new-instance v0, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    .line 24
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 26
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b()V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/d;->a()V

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->o:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v0, :cond_2

    .line 30
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->o:Lcom/tencent/liteav/videobase/frame/j;

    .line 31
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    invoke-static {v4, v4, v0, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 32
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    if-ne v0, v1, :cond_4

    .line 33
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v0

    if-nez v0, :cond_4

    .line 34
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    move-object p2, p1

    goto :goto_1

    .line 37
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->o:Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 39
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p2

    .line 40
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 41
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/liteav/videobase/a/h;->setTimestamp(J)V

    .line 43
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    .line 45
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->h:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/tencent/liteav/videobase/a/h;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 46
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 47
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-void

    :catch_0
    move-exception p1

    .line 48
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->d:Lcom/tencent/liteav/base/b/b;

    const-string v0, "make"

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initializeEGL failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/g;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2, v3, p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/o;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:[Lcom/tencent/liteav/videobase/a/b;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method final b()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/h;->removeAllFilterAndInterceptor()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c()V

    .line 5
    invoke-static {}, Lcom/tencent/liteav/videoproducer/preprocessor/h$b;->a()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 6
    sget v4, Lcom/tencent/liteav/videoproducer/preprocessor/h$b;->e:I

    if-ne v3, v4, :cond_0

    .line 7
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->f:Lcom/tencent/liteav/videobase/a/a;

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/videobase/a/h;->addInterceptor(Lcom/tencent/liteav/videobase/a/a;)V

    .line 8
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    new-instance v5, Lcom/tencent/liteav/videoproducer/preprocessor/h$a;

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {v5, v6}, Lcom/tencent/liteav/videoproducer/preprocessor/h$a;-><init>(Lcom/tencent/liteav/videobase/videobase/c;)V

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/videobase/a/h;->addInterceptor(Lcom/tencent/liteav/videobase/a/a;)V

    .line 9
    :cond_0
    sget v4, Lcom/tencent/liteav/videoproducer/preprocessor/h$b;->a:I

    if-ne v3, v4, :cond_1

    .line 10
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/a/h;->addFilter(Lcom/tencent/liteav/videobase/a/b;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:[Lcom/tencent/liteav/videobase/a/b;

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Lcom/tencent/liteav/videobase/a/h;->addFilter(Lcom/tencent/liteav/videobase/a/b;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    new-instance v1, Lcom/tencent/liteav/videoproducer/preprocessor/h$a;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {v1, v2}, Lcom/tencent/liteav/videoproducer/preprocessor/h$a;-><init>(Lcom/tencent/liteav/videobase/videobase/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/h;->addInterceptor(Lcom/tencent/liteav/videobase/a/a;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/a/h;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/h;->onOutputSizeChanged(II)V

    return-void
.end method

.method final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:[Lcom/tencent/liteav/videobase/a/b;

    add-int/lit8 p1, p1, -0x1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    aget-object v1, v0, p1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 3
    aput-object v2, v0, p1

    .line 4
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b()V

    return-void
.end method
