.class public final Lcom/google/android/gms/internal/recaptcha/ji;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "Lcom/google/android/gms/internal/recaptcha/ji;",
        "Lcom/google/android/gms/internal/recaptcha/ii;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/recaptcha/ji;

.field private static volatile zze:Lcom/google/android/gms/internal/recaptcha/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "Lcom/google/android/gms/internal/recaptcha/ji;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:J

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ji;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/ji;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ji;->zzb:Lcom/google/android/gms/internal/recaptcha/ji;

    const-class v1, Lcom/google/android/gms/internal/recaptcha/ji;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/dg;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    return-void
.end method

.method public static v()Lcom/google/android/gms/internal/recaptcha/ii;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ji;->zzb:Lcom/google/android/gms/internal/recaptcha/ji;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/dg;->n()Lcom/google/android/gms/internal/recaptcha/zf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/ii;

    return-object v0
.end method

.method static synthetic w()Lcom/google/android/gms/internal/recaptcha/ji;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ji;->zzb:Lcom/google/android/gms/internal/recaptcha/ji;

    return-object v0
.end method

.method public static x()Lcom/google/android/gms/internal/recaptcha/ji;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ji;->zzb:Lcom/google/android/gms/internal/recaptcha/ji;

    return-object v0
.end method

.method static synthetic y(Lcom/google/android/gms/internal/recaptcha/ji;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/recaptcha/ji;->zzf:J

    return-void
.end method

.method static synthetic z(Lcom/google/android/gms/internal/recaptcha/ji;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/ji;->zzg:I

    return-void
.end method


# virtual methods
.method protected final m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x2

    if-eq p1, p3, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ji;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/recaptcha/ji;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ji;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ag;

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/ji;->zzb:Lcom/google/android/gms/internal/recaptcha/ji;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ag;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    sput-object p1, Lcom/google/android/gms/internal/recaptcha/ji;->zze:Lcom/google/android/gms/internal/recaptcha/nh;

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
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/ji;->zzb:Lcom/google/android/gms/internal/recaptcha/ji;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ii;

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/recaptcha/ii;-><init>(Lcom/google/android/gms/internal/recaptcha/hi;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ji;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/recaptcha/ji;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzf"

    aput-object v0, p1, p3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/ji;->zzb:Lcom/google/android/gms/internal/recaptcha/ji;

    new-instance p3, Lcom/google/android/gms/internal/recaptcha/rh;

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    .line 9
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/recaptcha/rh;-><init>(Lcom/google/android/gms/internal/recaptcha/gh;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 10
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ji;->zzg:I

    return v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/recaptcha/ji;->zzf:J

    return-wide v0
.end method
