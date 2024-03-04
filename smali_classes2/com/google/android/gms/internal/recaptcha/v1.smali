.class public final Lcom/google/android/gms/internal/recaptcha/v1;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/v1;",
        "Lcom/google/android/gms/internal/recaptcha/s1;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/recaptcha/v1;

.field private static volatile zze:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/v1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzsh<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/y1;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/recaptcha/zzsh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzsh<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/a2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/v1;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/v1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/v1;->zzb:Lcom/google/android/gms/internal/recaptcha/v1;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/v1;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zza()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzg:Lcom/google/android/gms/internal/recaptcha/zzsh;

    return-void
.end method

.method static synthetic t()Lcom/google/android/gms/internal/recaptcha/v1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/v1;->zzb:Lcom/google/android/gms/internal/recaptcha/v1;

    return-object v0
.end method

.method public static u()Lcom/google/android/gms/internal/recaptcha/v1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/v1;->zzb:Lcom/google/android/gms/internal/recaptcha/v1;

    return-object v0
.end method

.method static synthetic v(Lcom/google/android/gms/internal/recaptcha/v1;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/gms/internal/recaptcha/v1;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzg:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzg:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzg:Lcom/google/android/gms/internal/recaptcha/zzsh;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzg:Lcom/google/android/gms/internal/recaptcha/zzsh;

    return-object p0
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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/v1;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/v1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/v1;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/v1;->zzb:Lcom/google/android/gms/internal/recaptcha/v1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/v1;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/v1;->zzb:Lcom/google/android/gms/internal/recaptcha/v1;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/s1;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/s1;-><init>(Lcom/google/android/gms/internal/recaptcha/r1;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/v1;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/v1;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzf"

    aput-object v2, p1, p3

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/recaptcha/u1;->a:Lcom/google/android/gms/internal/recaptcha/ah;

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/recaptcha/t1;->a:Lcom/google/android/gms/internal/recaptcha/ah;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/recaptcha/v1;->zzb:Lcom/google/android/gms/internal/recaptcha/v1;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0002\u0000\u0000\u00012\u00022"

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

.method public final x()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/a2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzg:Lcom/google/android/gms/internal/recaptcha/zzsh;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/y1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/v1;->zzf:Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
