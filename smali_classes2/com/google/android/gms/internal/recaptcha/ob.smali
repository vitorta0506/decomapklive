.class final Lcom/google/android/gms/internal/recaptcha/ob;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Lcom/google/android/gms/internal/recaptcha/ob;


# instance fields
.field volatile a:Ljava/lang/Thread;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field volatile b:Lcom/google/android/gms/internal/recaptcha/ob;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ob;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ob;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ob;->c:Lcom/google/android/gms/internal/recaptcha/ob;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/cb;->q()Lcom/google/android/gms/internal/recaptcha/db;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/recaptcha/db;->b(Lcom/google/android/gms/internal/recaptcha/ob;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
