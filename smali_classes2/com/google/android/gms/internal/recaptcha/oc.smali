.class final enum Lcom/google/android/gms/internal/recaptcha/oc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/recaptcha/oc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/recaptcha/oc;

.field public static final enum b:Lcom/google/android/gms/internal/recaptcha/oc;

.field public static final enum c:Lcom/google/android/gms/internal/recaptcha/oc;

.field private static final synthetic d:[Lcom/google/android/gms/internal/recaptcha/oc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/oc;

    const-string v1, "NOT_RUN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/oc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/oc;->a:Lcom/google/android/gms/internal/recaptcha/oc;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/oc;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/recaptcha/oc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/oc;->b:Lcom/google/android/gms/internal/recaptcha/oc;

    new-instance v3, Lcom/google/android/gms/internal/recaptcha/oc;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/recaptcha/oc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/recaptcha/oc;->c:Lcom/google/android/gms/internal/recaptcha/oc;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/recaptcha/oc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/recaptcha/oc;->d:[Lcom/google/android/gms/internal/recaptcha/oc;

    return-void
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

.method public static values()[Lcom/google/android/gms/internal/recaptcha/oc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/oc;->d:[Lcom/google/android/gms/internal/recaptcha/oc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/recaptcha/oc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/recaptcha/oc;

    return-object v0
.end method
