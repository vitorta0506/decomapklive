.class final enum Lcom/google/android/gms/internal/recaptcha/xa;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/za;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/recaptcha/xa;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/za;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/recaptcha/xa;

.field private static final synthetic b:[Lcom/google/android/gms/internal/recaptcha/xa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/xa;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/xa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/xa;->a:Lcom/google/android/gms/internal/recaptcha/xa;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/recaptcha/xa;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/xa;->b:[Lcom/google/android/gms/internal/recaptcha/xa;

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

.method public static values()[Lcom/google/android/gms/internal/recaptcha/xa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/xa;->b:[Lcom/google/android/gms/internal/recaptcha/xa;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/recaptcha/xa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/recaptcha/xa;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeSource.system()"

    return-object v0
.end method
