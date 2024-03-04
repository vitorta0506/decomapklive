.class final enum Lcom/google/android/gms/internal/recaptcha/aa;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/recaptcha/aa;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/ba;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/recaptcha/aa;

.field private static final synthetic b:[Lcom/google/android/gms/internal/recaptcha/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/aa;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/aa;->a:Lcom/google/android/gms/internal/recaptcha/aa;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/recaptcha/aa;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/aa;->b:[Lcom/google/android/gms/internal/recaptcha/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/recaptcha/aa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/aa;->b:[Lcom/google/android/gms/internal/recaptcha/aa;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/recaptcha/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/recaptcha/aa;

    return-object v0
.end method


# virtual methods
.method public final synthetic a([BI)J
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x7

    .line 1
    aget-byte v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
