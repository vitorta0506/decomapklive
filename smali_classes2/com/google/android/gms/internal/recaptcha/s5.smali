.class public final Lcom/google/android/gms/internal/recaptcha/s5;
.super Lcom/google/android/gms/internal/recaptcha/z3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/z3<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/recaptcha/s5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/s5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/s5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/s5;->a:Lcom/google/android/gms/internal/recaptcha/s5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/z3;-><init>()V

    return-void
.end method

.method public static final a()Lcom/google/android/gms/internal/recaptcha/s5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/recaptcha/s5<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/s5;->a:Lcom/google/android/gms/internal/recaptcha/s5;

    return-object v0
.end method
