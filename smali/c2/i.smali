.class public final Lc2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/i$a;
    }
.end annotation


# static fields
.field private static final n:[I

.field private static final o:Lc2/i$a;

.field private static final p:Lc2/i$a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lc2/i;->n:[I

    .line 2
    new-instance v0, Lc2/i$a;

    sget-object v1, Lc2/h;->a:Lc2/h;

    invoke-direct {v0, v1}, Lc2/i$a;-><init>(Lc2/i$a$a;)V

    sput-object v0, Lc2/i;->o:Lc2/i$a;

    .line 3
    new-instance v0, Lc2/i$a;

    sget-object v1, Lc2/g;->a:Lc2/g;

    invoke-direct {v0, v1}, Lc2/i$a;-><init>(Lc2/i$a$a;)V

    sput-object v0, Lc2/i;->p:Lc2/i$a;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lc2/i;->k:I

    const v0, 0x1b8a0

    .line 3
    iput v0, p0, Lc2/i;->m:I

    return-void
.end method

.method public static synthetic c()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Lc2/i;->g()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Lc2/i;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private e(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc2/l;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1
    :pswitch_1
    new-instance p1, Le2/b;

    invoke-direct {p1}, Le2/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2
    :pswitch_2
    sget-object p1, Lc2/i;->p:Lc2/i$a;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lc2/i$a;->a([Ljava/lang/Object;)Lc2/l;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4
    :pswitch_3
    new-instance p1, Lh2/a;

    invoke-direct {p1}, Lh2/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 5
    :pswitch_4
    new-instance p1, Ln2/b;

    invoke-direct {p1}, Ln2/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 6
    :pswitch_5
    new-instance p1, Lm2/h0;

    iget v0, p0, Lc2/i;->k:I

    iget v1, p0, Lc2/i;->l:I

    iget v2, p0, Lc2/i;->m:I

    invoke-direct {p1, v0, v1, v2}, Lm2/h0;-><init>(III)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 7
    :pswitch_6
    new-instance p1, Lm2/a0;

    invoke-direct {p1}, Lm2/a0;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 8
    :pswitch_7
    new-instance p1, Ll2/d;

    invoke-direct {p1}, Ll2/d;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 9
    :pswitch_8
    new-instance p1, Lk2/g;

    iget v0, p0, Lc2/i;->i:I

    invoke-direct {p1, v0}, Lk2/g;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lk2/k;

    iget v0, p0, Lc2/i;->h:I

    invoke-direct {p1, v0}, Lk2/k;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 11
    :pswitch_9
    new-instance p1, Lj2/f;

    iget v2, p0, Lc2/i;->j:I

    .line 12
    iget-boolean v3, p0, Lc2/i;->b:Z

    or-int/2addr v2, v3

    .line 13
    iget-boolean v3, p0, Lc2/i;->c:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v2

    .line 14
    invoke-direct {p1, v0}, Lj2/f;-><init>(I)V

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 16
    :pswitch_a
    new-instance p1, Li2/e;

    iget v0, p0, Lc2/i;->g:I

    invoke-direct {p1, v0}, Li2/e;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :pswitch_b
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :pswitch_c
    sget-object p1, Lc2/i;->o:Lc2/i$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lc2/i;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lc2/i$a;->a([Ljava/lang/Object;)Lc2/l;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_1
    new-instance p1, Lf2/d;

    iget v0, p0, Lc2/i;->f:I

    invoke-direct {p1, v0}, Lf2/d;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :pswitch_d
    new-instance p1, Ld2/b;

    iget v2, p0, Lc2/i;->e:I

    .line 22
    iget-boolean v3, p0, Lc2/i;->b:Z

    or-int/2addr v2, v3

    .line 23
    iget-boolean v3, p0, Lc2/i;->c:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v2

    .line 24
    invoke-direct {p1, v0}, Ld2/b;-><init>(I)V

    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :pswitch_e
    new-instance p1, Lm2/h;

    iget v2, p0, Lc2/i;->d:I

    .line 27
    iget-boolean v3, p0, Lc2/i;->b:Z

    or-int/2addr v2, v3

    .line 28
    iget-boolean v3, p0, Lc2/i;->c:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    or-int/2addr v0, v2

    .line 29
    invoke-direct {p1, v0}, Lm2/h;-><init>(I)V

    .line 30
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :pswitch_f
    new-instance p1, Lm2/e;

    invoke-direct {p1}, Lm2/e;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 32
    :pswitch_10
    new-instance p1, Lm2/b;

    invoke-direct {p1}, Lm2/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static f()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lc2/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "isAvailable"

    .line 3
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc2/l;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4
.end method

.method private static g()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lc2/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc2/l;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Lc2/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lc2/l;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lc2/i;->n:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/k;->b(Ljava/util/Map;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 3
    invoke-direct {p0, p2, v0}, Lc2/i;->e(ILjava/util/List;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/k;->c(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_1

    .line 5
    invoke-direct {p0, p1, v0}, Lc2/i;->e(ILjava/util/List;)V

    .line 6
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    if-eq v4, p2, :cond_2

    if-eq v4, p1, :cond_2

    .line 7
    invoke-direct {p0, v4, v0}, Lc2/i;->e(ILjava/util/List;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lc2/l;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lc2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()[Lc2/l;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lc2/i;->a(Landroid/net/Uri;Ljava/util/Map;)[Lc2/l;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
