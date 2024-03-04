.class public final synthetic Lcom/google/android/gms/internal/recaptcha/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/o0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/internal/recaptcha/g1;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/o0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/n0;->a:Lcom/google/android/gms/internal/recaptcha/o0;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/n0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/n0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/n0;->d:Lcom/google/android/gms/internal/recaptcha/g1;

    iput-object p5, p0, Lcom/google/android/gms/internal/recaptcha/n0;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n0;->a:Lcom/google/android/gms/internal/recaptcha/o0;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/n0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/n0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/n0;->d:Lcom/google/android/gms/internal/recaptcha/g1;

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/n0;->e:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/recaptcha/v1;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/o0;->d(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/recaptcha/v1;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
