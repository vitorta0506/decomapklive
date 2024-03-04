.class public final synthetic Lcom/google/android/gms/internal/recaptcha/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/p7;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/o0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/o0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/k0;->a:Lcom/google/android/gms/internal/recaptcha/o0;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/k0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/k0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/k0;->a:Lcom/google/android/gms/internal/recaptcha/o0;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/k0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/k0;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/nj;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/o0;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/nj;)Lcom/google/android/gms/internal/recaptcha/y1;

    move-result-object p1

    return-object p1
.end method
