.class public final Lcom/google/android/gms/internal/recaptcha/y1;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/y1;",
        "Lcom/google/android/gms/internal/recaptcha/x1;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/recaptcha/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/jg<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/recaptcha/y1;

.field private static volatile zzf:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/y1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/recaptcha/ji;

.field private zzi:Lcom/google/android/gms/internal/recaptcha/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/lg<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/recaptcha/ig;

.field private zzk:Lcom/google/android/gms/internal/recaptcha/xj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/w1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/w1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/y1;->zzb:Lcom/google/android/gms/internal/recaptcha/jg;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/y1;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/y1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/y1;->zze:Lcom/google/android/gms/internal/recaptcha/y1;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/y1;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/dg;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dg;->s()Lcom/google/android/gms/internal/recaptcha/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzi:Lcom/google/android/gms/internal/recaptcha/lg;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dg;->r()Lcom/google/android/gms/internal/recaptcha/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzj:Lcom/google/android/gms/internal/recaptcha/ig;

    return-void
.end method

.method static synthetic B(Lcom/google/android/gms/internal/recaptcha/y1;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzi:Lcom/google/android/gms/internal/recaptcha/lg;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/lg;->E()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/recaptcha/lg;->j(I)Lcom/google/android/gms/internal/recaptcha/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzi:Lcom/google/android/gms/internal/recaptcha/lg;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzi:Lcom/google/android/gms/internal/recaptcha/lg;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/recaptcha/ge;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/recaptcha/y1;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzj:Lcom/google/android/gms/internal/recaptcha/ig;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/lg;->E()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ig;->r(I)Lcom/google/android/gms/internal/recaptcha/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzj:Lcom/google/android/gms/internal/recaptcha/ig;

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zzvj;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzj:Lcom/google/android/gms/internal/recaptcha/ig;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzvj;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/recaptcha/ig;->e(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic D(Lcom/google/android/gms/internal/recaptcha/y1;Lcom/google/android/gms/internal/recaptcha/xj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzk:Lcom/google/android/gms/internal/recaptcha/xj;

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/recaptcha/y1;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/recaptcha/y1;Lcom/google/android/gms/internal/recaptcha/ji;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzh:Lcom/google/android/gms/internal/recaptcha/ji;

    return-void
.end method

.method public static t()Lcom/google/android/gms/internal/recaptcha/x1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/y1;->zze:Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/dg;->n()Lcom/google/android/gms/internal/recaptcha/zf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/x1;

    return-object v0
.end method

.method static synthetic u()Lcom/google/android/gms/internal/recaptcha/y1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/y1;->zze:Lcom/google/android/gms/internal/recaptcha/y1;

    return-object v0
.end method

.method public static v()Lcom/google/android/gms/internal/recaptcha/y1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/y1;->zze:Lcom/google/android/gms/internal/recaptcha/y1;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/kg;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzj:Lcom/google/android/gms/internal/recaptcha/ig;

    sget-object v2, Lcom/google/android/gms/internal/recaptcha/y1;->zzb:Lcom/google/android/gms/internal/recaptcha/jg;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/kg;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/recaptcha/jg;)V

    return-object v0
.end method

.method protected final m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 p2, 0x0

    if-eq p1, v0, :cond_4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/y1;->zzf:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/y1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/y1;->zzf:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/y1;->zze:Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/y1;->zzf:Lcom/google/android/gms/internal/recaptcha/nh;

    .line 2
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 3
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/y1;->zze:Lcom/google/android/gms/internal/recaptcha/y1;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/x1;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/x1;-><init>(Lcom/google/android/gms/internal/recaptcha/r1;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/y1;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/y1;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzg"

    aput-object v3, p1, p3

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const-string p2, "zzk"

    aput-object p2, p1, v0

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/y1;->zze:Lcom/google/android/gms/internal/recaptcha/y1;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u0208\u0002\t\u0003\u021a\u0004,\u0005\t"

    .line 9
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/recaptcha/dg;->k(Lcom/google/android/gms/internal/recaptcha/gh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final w()Lcom/google/android/gms/internal/recaptcha/ji;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzh:Lcom/google/android/gms/internal/recaptcha/ji;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ji;->x()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/recaptcha/xj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzk:Lcom/google/android/gms/internal/recaptcha/xj;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/xj;->z()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y1;->zzi:Lcom/google/android/gms/internal/recaptcha/lg;

    return-object v0
.end method
