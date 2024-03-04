.class public final Lcom/google/android/gms/internal/recaptcha/ok;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/ok;",
        "Lcom/google/android/gms/internal/recaptcha/nk;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/recaptcha/ok;

.field private static volatile zze:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/ok;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/recaptcha/uk;

.field private zzh:Lcom/google/android/gms/internal/recaptcha/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/lg<",
            "Lcom/google/android/gms/internal/recaptcha/qk;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I

.field private zzj:Z

.field private zzk:Lcom/google/android/gms/internal/recaptcha/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/lg<",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ok;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/ok;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ok;->zzb:Lcom/google/android/gms/internal/recaptcha/ok;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/ok;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/dg;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dg;->s()Lcom/google/android/gms/internal/recaptcha/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ok;->zzh:Lcom/google/android/gms/internal/recaptcha/lg;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ok;->zzi:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dg;->s()Lcom/google/android/gms/internal/recaptcha/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ok;->zzk:Lcom/google/android/gms/internal/recaptcha/lg;

    return-void
.end method

.method static synthetic t()Lcom/google/android/gms/internal/recaptcha/ok;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ok;->zzb:Lcom/google/android/gms/internal/recaptcha/ok;

    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ok;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/ok;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ok;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/ok;->zzb:Lcom/google/android/gms/internal/recaptcha/ok;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/ok;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ok;->zzb:Lcom/google/android/gms/internal/recaptcha/ok;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/nk;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/nk;-><init>(Lcom/google/android/gms/internal/recaptcha/jk;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ok;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/ok;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zzf"

    aput-object v5, p1, v4

    const-string v4, "zzg"

    aput-object v4, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v3

    .line 8
    const-class p2, Lcom/google/android/gms/internal/recaptcha/qk;

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const-string p2, "zzk"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x7

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzb()Lcom/google/android/gms/internal/recaptcha/hg;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/recaptcha/ok;->zzb:Lcom/google/android/gms/internal/recaptcha/ok;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0017\u0005\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u001b\u0008\u1007\u0002\t\u001c\u0017\u100c\u0001"

    .line 10
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/recaptcha/dg;->k(Lcom/google/android/gms/internal/recaptcha/gh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
