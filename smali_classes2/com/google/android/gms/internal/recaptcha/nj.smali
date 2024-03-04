.class public final Lcom/google/android/gms/internal/recaptcha/nj;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/nj;",
        "Lcom/google/android/gms/internal/recaptcha/kj;",
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

.field private static final zze:Lcom/google/android/gms/internal/recaptcha/nj;

.field private static volatile zzf:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/nj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/recaptcha/mj;

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

.field private zzk:I

.field private zzl:Ljava/lang/String;

.field private zzm:Lcom/google/android/gms/internal/recaptcha/xj;

.field private zzn:Lcom/google/android/gms/internal/recaptcha/sk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/jj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/jj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/nj;->zzb:Lcom/google/android/gms/internal/recaptcha/jg;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/nj;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/nj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/nj;->zze:Lcom/google/android/gms/internal/recaptcha/nj;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/nj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/dg;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dg;->s()Lcom/google/android/gms/internal/recaptcha/lg;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzi:Lcom/google/android/gms/internal/recaptcha/lg;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dg;->r()Lcom/google/android/gms/internal/recaptcha/ig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzj:Lcom/google/android/gms/internal/recaptcha/ig;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzl:Ljava/lang/String;

    return-void
.end method

.method static synthetic t()Lcom/google/android/gms/internal/recaptcha/nj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/nj;->zze:Lcom/google/android/gms/internal/recaptcha/nj;

    return-object v0
.end method

.method public static u()Lcom/google/android/gms/internal/recaptcha/nj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/nj;->zze:Lcom/google/android/gms/internal/recaptcha/nj;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/nj;->zzf:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/nj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/nj;->zzf:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/nj;->zze:Lcom/google/android/gms/internal/recaptcha/nj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/nj;->zzf:Lcom/google/android/gms/internal/recaptcha/nh;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/nj;->zze:Lcom/google/android/gms/internal/recaptcha/nj;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/kj;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/kj;-><init>(Lcom/google/android/gms/internal/recaptcha/gj;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/nj;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/nj;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zzg"

    aput-object v5, p1, v4

    const-string v4, "zzh"

    aput-object v4, p1, p2

    const-string p2, "zzi"

    aput-object p2, p1, v3

    const-string p2, "zzj"

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const-string p2, "zzl"

    aput-object p2, p1, v0

    const-string p2, "zzm"

    aput-object p2, p1, p3

    const/4 p2, 0x7

    const-string p3, "zzn"

    aput-object p3, p1, p2

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/nj;->zze:Lcom/google/android/gms/internal/recaptcha/nj;

    const-string p3, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u0208\u0002\t\u0003\u021a\u0004,\u0005\u000c\u0006\u0208\u0007\t\u0008\t"

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

.method public final v()Lcom/google/android/gms/internal/recaptcha/xj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzm:Lcom/google/android/gms/internal/recaptcha/xj;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/xj;->z()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzi:Lcom/google/android/gms/internal/recaptcha/lg;

    return-object v0
.end method

.method public final z()Ljava/util/List;
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

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/nj;->zzj:Lcom/google/android/gms/internal/recaptcha/ig;

    sget-object v2, Lcom/google/android/gms/internal/recaptcha/nj;->zzb:Lcom/google/android/gms/internal/recaptcha/jg;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/kg;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/recaptcha/jg;)V

    return-object v0
.end method
