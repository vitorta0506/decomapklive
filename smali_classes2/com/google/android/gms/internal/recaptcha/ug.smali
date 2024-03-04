.class abstract Lcom/google/android/gms/internal/recaptcha/ug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/recaptcha/ug;

.field private static final b:Lcom/google/android/gms/internal/recaptcha/ug;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/sg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/sg;-><init>(Lcom/google/android/gms/internal/recaptcha/rg;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ug;->a:Lcom/google/android/gms/internal/recaptcha/ug;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/tg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/tg;-><init>(Lcom/google/android/gms/internal/recaptcha/rg;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ug;->b:Lcom/google/android/gms/internal/recaptcha/ug;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/rg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d()Lcom/google/android/gms/internal/recaptcha/ug;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ug;->a:Lcom/google/android/gms/internal/recaptcha/ug;

    return-object v0
.end method

.method static e()Lcom/google/android/gms/internal/recaptcha/ug;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ug;->b:Lcom/google/android/gms/internal/recaptcha/ug;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;J)V
.end method

.method abstract c(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
