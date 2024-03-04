.class public final Lcom/google/android/gms/internal/recaptcha/dk;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/dk;",
        "Lcom/google/android/gms/internal/recaptcha/ck;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/recaptcha/dk;

.field private static volatile zze:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/dk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/recaptcha/hk;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/dk;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/dk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/dk;->zzb:Lcom/google/android/gms/internal/recaptcha/dk;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/dk;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/dg;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/dk;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/dk;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic t()Lcom/google/android/gms/internal/recaptcha/dk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/dk;->zzb:Lcom/google/android/gms/internal/recaptcha/dk;

    return-object v0
.end method

.method public static u()Lcom/google/android/gms/internal/recaptcha/dk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/dk;->zzb:Lcom/google/android/gms/internal/recaptcha/dk;

    return-object v0
.end method


# virtual methods
.method protected final m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 p2, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/dk;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/dk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/dk;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/dk;->zzb:Lcom/google/android/gms/internal/recaptcha/dk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/dk;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/dk;->zzb:Lcom/google/android/gms/internal/recaptcha/dk;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ck;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/ck;-><init>(Lcom/google/android/gms/internal/recaptcha/bk;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/dk;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/dk;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzf"

    aput-object v2, p1, p3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/dk;->zzb:Lcom/google/android/gms/internal/recaptcha/dk;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003\t\u0005\u0208"

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

.method public final v()Lcom/google/android/gms/internal/recaptcha/hk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/dk;->zzh:Lcom/google/android/gms/internal/recaptcha/hk;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/hk;->x()Lcom/google/android/gms/internal/recaptcha/hk;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/dk;->zzg:Ljava/lang/String;

    return-object v0
.end method
