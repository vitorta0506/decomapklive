.class public final Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx2/b$b;
    }
.end annotation


# static fields
.field public static final r:Lx2/b;

.field public static final s:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lx2/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx2/b$b;

    invoke-direct {v0}, Lx2/b$b;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lx2/b$b;->o(Ljava/lang/CharSequence;)Lx2/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lx2/b$b;->a()Lx2/b;

    move-result-object v0

    sput-object v0, Lx2/b;->r:Lx2/b;

    .line 2
    sget-object v0, Lx2/a;->a:Lx2/a;

    sput-object v0, Lx2/b;->s:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 3
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 5
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 6
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Lx2/b;->a:Ljava/lang/CharSequence;

    :goto_2
    move-object v1, p2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lx2/b;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lx2/b;->a:Ljava/lang/CharSequence;

    goto :goto_2

    .line 9
    :goto_3
    iput-object v1, v0, Lx2/b;->b:Landroid/text/Layout$Alignment;

    move-object v1, p3

    .line 10
    iput-object v1, v0, Lx2/b;->c:Landroid/text/Layout$Alignment;

    .line 11
    iput-object v2, v0, Lx2/b;->d:Landroid/graphics/Bitmap;

    move v1, p5

    .line 12
    iput v1, v0, Lx2/b;->e:F

    move v1, p6

    .line 13
    iput v1, v0, Lx2/b;->f:I

    move v1, p7

    .line 14
    iput v1, v0, Lx2/b;->g:I

    move v1, p8

    .line 15
    iput v1, v0, Lx2/b;->h:F

    move v1, p9

    .line 16
    iput v1, v0, Lx2/b;->i:I

    move/from16 v1, p12

    .line 17
    iput v1, v0, Lx2/b;->j:F

    move/from16 v1, p13

    .line 18
    iput v1, v0, Lx2/b;->k:F

    move/from16 v1, p14

    .line 19
    iput-boolean v1, v0, Lx2/b;->l:Z

    move/from16 v1, p15

    .line 20
    iput v1, v0, Lx2/b;->m:I

    move v1, p10

    .line 21
    iput v1, v0, Lx2/b;->n:I

    move v1, p11

    .line 22
    iput v1, v0, Lx2/b;->o:F

    move/from16 v1, p16

    .line 23
    iput v1, v0, Lx2/b;->p:I

    move/from16 v1, p17

    .line 24
    iput v1, v0, Lx2/b;->q:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLx2/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p17}, Lx2/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lx2/b;
    .locals 0

    invoke-static {p0}, Lx2/b;->c(Landroid/os/Bundle;)Lx2/b;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroid/os/Bundle;)Lx2/b;
    .locals 5

    .line 1
    new-instance v0, Lx2/b$b;

    invoke-direct {v0}, Lx2/b$b;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Lx2/b$b;->o(Ljava/lang/CharSequence;)Lx2/b$b;

    :cond_0
    const/4 v2, 0x1

    .line 4
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Lx2/b$b;->p(Landroid/text/Layout$Alignment;)Lx2/b$b;

    :cond_1
    const/4 v2, 0x2

    .line 6
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Lx2/b$b;->j(Landroid/text/Layout$Alignment;)Lx2/b$b;

    :cond_2
    const/4 v2, 0x3

    .line 8
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v2}, Lx2/b$b;->f(Landroid/graphics/Bitmap;)Lx2/b$b;

    :cond_3
    const/4 v2, 0x4

    .line 10
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    .line 11
    invoke-static {v3}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v3}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 13
    invoke-virtual {v0, v2, v3}, Lx2/b$b;->h(FI)Lx2/b$b;

    :cond_4
    const/4 v2, 0x6

    .line 14
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lx2/b$b;->i(I)Lx2/b$b;

    :cond_5
    const/4 v2, 0x7

    .line 16
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 17
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lx2/b$b;->k(F)Lx2/b$b;

    :cond_6
    const/16 v2, 0x8

    .line 18
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lx2/b$b;->l(I)Lx2/b$b;

    :cond_7
    const/16 v2, 0xa

    .line 20
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x9

    .line 21
    invoke-static {v3}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 23
    invoke-static {v3}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 24
    invoke-virtual {v0, v2, v3}, Lx2/b$b;->q(FI)Lx2/b$b;

    :cond_8
    const/16 v2, 0xb

    .line 25
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 26
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lx2/b$b;->n(F)Lx2/b$b;

    :cond_9
    const/16 v2, 0xc

    .line 27
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 28
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lx2/b$b;->g(F)Lx2/b$b;

    :cond_a
    const/16 v2, 0xd

    .line 29
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 30
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lx2/b$b;->s(I)Lx2/b$b;

    :cond_b
    const/16 v2, 0xe

    .line 31
    invoke-static {v2}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 32
    invoke-virtual {v0}, Lx2/b$b;->b()Lx2/b$b;

    :cond_c
    const/16 v1, 0xf

    .line 33
    invoke-static {v1}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 34
    invoke-static {v1}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lx2/b$b;->r(I)Lx2/b$b;

    :cond_d
    const/16 v1, 0x10

    .line 35
    invoke-static {v1}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 36
    invoke-static {v1}, Lx2/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Lx2/b$b;->m(F)Lx2/b$b;

    .line 37
    :cond_e
    invoke-virtual {v0}, Lx2/b$b;->a()Lx2/b;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lx2/b$b;
    .locals 2

    new-instance v0, Lx2/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lx2/b$b;-><init>(Lx2/b;Lx2/b$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lx2/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lx2/b;

    .line 3
    iget-object v2, p0, Lx2/b;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lx2/b;->a:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lx2/b;->b:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lx2/b;->b:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lx2/b;->c:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lx2/b;->c:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lx2/b;->d:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-object v2, p1, Lx2/b;->d:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lx2/b;->d:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Lx2/b;->e:F

    iget v3, p1, Lx2/b;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lx2/b;->f:I

    iget v3, p1, Lx2/b;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lx2/b;->g:I

    iget v3, p1, Lx2/b;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lx2/b;->h:F

    iget v3, p1, Lx2/b;->h:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lx2/b;->i:I

    iget v3, p1, Lx2/b;->i:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lx2/b;->j:F

    iget v3, p1, Lx2/b;->j:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lx2/b;->k:F

    iget v3, p1, Lx2/b;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lx2/b;->l:Z

    iget-boolean v3, p1, Lx2/b;->l:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lx2/b;->m:I

    iget v3, p1, Lx2/b;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lx2/b;->n:I

    iget v3, p1, Lx2/b;->n:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lx2/b;->o:F

    iget v3, p1, Lx2/b;->o:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lx2/b;->p:I

    iget v3, p1, Lx2/b;->p:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lx2/b;->q:F

    iget p1, p1, Lx2/b;->q:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lx2/b;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lx2/b;->b:Landroid/text/Layout$Alignment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lx2/b;->c:Landroid/text/Layout$Alignment;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lx2/b;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->e:F

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->f:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->g:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->h:F

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->i:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->j:F

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->k:F

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lx2/b;->l:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->m:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->n:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->o:F

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->p:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lx2/b;->q:F

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 15
    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
