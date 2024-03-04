.class public final synthetic Lcom/google/android/gms/internal/recaptcha/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/w0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/u0;->a:Lcom/google/android/gms/internal/recaptcha/w0;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/u0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/u0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/u0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u0;->a:Lcom/google/android/gms/internal/recaptcha/w0;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/u0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/u0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/u0;->d:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/v1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/recaptcha/w0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/v1;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
