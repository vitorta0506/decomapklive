.class final enum Lcom/google/android/gms/internal/recaptcha/da;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/recaptcha/da;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/ba;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/recaptcha/da;

.field public static final enum b:Lcom/google/android/gms/internal/recaptcha/da;

.field private static final c:Lsun/misc/Unsafe;

.field private static final d:I

.field private static final synthetic e:[Lcom/google/android/gms/internal/recaptcha/da;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, [B

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/da;

    const-string v2, "UNSAFE_LITTLE_ENDIAN"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/da;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/da;->a:Lcom/google/android/gms/internal/recaptcha/da;

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/da;

    const-string v4, "UNSAFE_BIG_ENDIAN"

    const/4 v5, 0x1

    .line 2
    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/recaptcha/da;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/recaptcha/da;->b:Lcom/google/android/gms/internal/recaptcha/da;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/recaptcha/da;

    aput-object v1, v4, v3

    aput-object v2, v4, v5

    sput-object v4, Lcom/google/android/gms/internal/recaptcha/da;->e:[Lcom/google/android/gms/internal/recaptcha/da;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/da;->d()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/da;->c:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/google/android/gms/internal/recaptcha/da;->d:I

    .line 5
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v5, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 6
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final b([BI)J
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/da;->c:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lcom/google/android/gms/internal/recaptcha/da;->d:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c([BI)J
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/da;->c:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lcom/google/android/gms/internal/recaptcha/da;->d:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static d()Lsun/misc/Unsafe;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/ca;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static values()[Lcom/google/android/gms/internal/recaptcha/da;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/da;->e:[Lcom/google/android/gms/internal/recaptcha/da;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/recaptcha/da;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/recaptcha/da;

    return-object v0
.end method


# virtual methods
.method public final synthetic a([BI)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/recaptcha/da;->c([BI)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/recaptcha/da;->b([BI)J

    move-result-wide p1

    return-wide p1
.end method
