.class public final Lcom/google/android/gms/internal/recaptcha/ij;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/ij;",
        "Lcom/google/android/gms/internal/recaptcha/hj;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/recaptcha/ij;

.field private static volatile zze:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/ij;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/Object;

.field private zzh:Lcom/google/android/gms/internal/recaptcha/zzpy;

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/recaptcha/ok;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ij;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/ij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ij;->zzb:Lcom/google/android/gms/internal/recaptcha/ij;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/ij;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/dg;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ij;->zzf:I

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ij;->zzh:Lcom/google/android/gms/internal/recaptcha/zzpy;

    return-void
.end method

.method public static t()Lcom/google/android/gms/internal/recaptcha/hj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ij;->zzb:Lcom/google/android/gms/internal/recaptcha/ij;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/dg;->n()Lcom/google/android/gms/internal/recaptcha/zf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/hj;

    return-object v0
.end method

.method static synthetic u()Lcom/google/android/gms/internal/recaptcha/ij;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ij;->zzb:Lcom/google/android/gms/internal/recaptcha/ij;

    return-object v0
.end method

.method static synthetic v(Lcom/google/android/gms/internal/recaptcha/ij;Lcom/google/android/gms/internal/recaptcha/pj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ij;->zzg:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/ij;->zzf:I

    return-void
.end method

.method static synthetic w(Lcom/google/android/gms/internal/recaptcha/ij;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/ij;->zzi:Z

    return-void
.end method


# virtual methods
.method protected final m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ij;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/ij;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ij;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/ij;->zzb:Lcom/google/android/gms/internal/recaptcha/ij;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/ij;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ij;->zzb:Lcom/google/android/gms/internal/recaptcha/ij;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/hj;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/hj;-><init>(Lcom/google/android/gms/internal/recaptcha/gj;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ij;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/ij;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v4, "zzg"

    aput-object v4, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    .line 8
    const-class p2, Lcom/google/android/gms/internal/recaptcha/pj;

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const-string p2, "zzj"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/recaptcha/ij;->zzb:Lcom/google/android/gms/internal/recaptcha/ij;

    const-string p3, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u023b\u0000\u0002<\u0000\u0003\n\u0004\u0007\u0005\t"

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
