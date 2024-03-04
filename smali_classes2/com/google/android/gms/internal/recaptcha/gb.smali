.class final Lcom/google/android/gms/internal/recaptcha/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final d:Lcom/google/android/gms/internal/recaptcha/gb;


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/util/concurrent/Executor;

.field c:Lcom/google/android/gms/internal/recaptcha/gb;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/gb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/gb;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/gb;->d:Lcom/google/android/gms/internal/recaptcha/gb;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/gb;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/gb;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
