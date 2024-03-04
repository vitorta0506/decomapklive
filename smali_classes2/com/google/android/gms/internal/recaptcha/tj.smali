.class public final Lcom/google/android/gms/internal/recaptcha/tj;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/tj;",
        "Lcom/google/android/gms/internal/recaptcha/rj;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/recaptcha/tj;

.field private static volatile zze:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/tj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/recaptcha/zzsh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzsh<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Ljava/lang/String;

.field private zzl:Z

.field private zzm:Lcom/google/android/gms/internal/recaptcha/zzsh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzsh<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;"
        }
    .end annotation
.end field

.field private zzn:Ljava/lang/String;

.field private zzo:Lcom/google/android/gms/internal/recaptcha/zj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/tj;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/tj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/tj;->zzb:Lcom/google/android/gms/internal/recaptcha/tj;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/tj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/dg;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zza()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzj:Lcom/google/android/gms/internal/recaptcha/zzsh;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zza()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzm:Lcom/google/android/gms/internal/recaptcha/zzsh;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzn:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/google/android/gms/internal/recaptcha/tj;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzl:Z

    return-void
.end method

.method static synthetic B(Lcom/google/android/gms/internal/recaptcha/tj;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzn:Ljava/lang/String;

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/recaptcha/tj;Lcom/google/android/gms/internal/recaptcha/zj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzo:Lcom/google/android/gms/internal/recaptcha/zj;

    return-void
.end method

.method static synthetic D(Lcom/google/android/gms/internal/recaptcha/tj;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic t(Lcom/google/android/gms/internal/recaptcha/tj;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic u(Lcom/google/android/gms/internal/recaptcha/tj;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzh:J

    return-void
.end method

.method public static v()Lcom/google/android/gms/internal/recaptcha/rj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/tj;->zzb:Lcom/google/android/gms/internal/recaptcha/tj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/dg;->n()Lcom/google/android/gms/internal/recaptcha/zf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/rj;

    return-object v0
.end method

.method static synthetic w()Lcom/google/android/gms/internal/recaptcha/tj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/tj;->zzb:Lcom/google/android/gms/internal/recaptcha/tj;

    return-object v0
.end method

.method static synthetic x(Lcom/google/android/gms/internal/recaptcha/tj;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzj:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzj:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzj:Lcom/google/android/gms/internal/recaptcha/zzsh;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzj:Lcom/google/android/gms/internal/recaptcha/zzsh;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/gms/internal/recaptcha/tj;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzm:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzm:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzm:Lcom/google/android/gms/internal/recaptcha/zzsh;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzm:Lcom/google/android/gms/internal/recaptcha/zzsh;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/gms/internal/recaptcha/tj;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/tj;->zzk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/tj;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/tj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/tj;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/tj;->zzb:Lcom/google/android/gms/internal/recaptcha/tj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/tj;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/tj;->zzb:Lcom/google/android/gms/internal/recaptcha/tj;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/rj;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/rj;-><init>(Lcom/google/android/gms/internal/recaptcha/gj;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/tj;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/tj;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zzf"

    aput-object v5, p1, v4

    const-string v4, "zzg"

    aput-object v4, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/qj;->a:Lcom/google/android/gms/internal/recaptcha/ah;

    aput-object p2, p1, v0

    const-string p2, "zzk"

    aput-object p2, p1, p3

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/sj;->a:Lcom/google/android/gms/internal/recaptcha/ah;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/recaptcha/tj;->zzb:Lcom/google/android/gms/internal/recaptcha/tj;

    const-string p3, "\u0000\n\u0000\u0000\u0001\n\n\u0002\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u00052\u0006\u0208\u0007\u0007\u00082\t\u0208\n\t"

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
