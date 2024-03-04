.class public final Lcom/google/android/gms/internal/recaptcha/ye;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/recaptcha/wb;

.field private static volatile b:Lcom/google/android/gms/internal/recaptcha/wb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/yd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/yd;-><init>(Lcom/google/android/gms/internal/recaptcha/xc;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ye;->a:Lcom/google/android/gms/internal/recaptcha/wb;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ye;->b:Lcom/google/android/gms/internal/recaptcha/wb;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/recaptcha/wb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ye;->b:Lcom/google/android/gms/internal/recaptcha/wb;

    return-object v0
.end method
