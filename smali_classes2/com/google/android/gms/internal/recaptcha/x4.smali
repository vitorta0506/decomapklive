.class public final synthetic Lcom/google/android/gms/internal/recaptcha/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/z4;

.field public final synthetic b:Lcom/google/android/gms/internal/recaptcha/nd;

.field public final synthetic c:Lcom/google/android/gms/internal/recaptcha/nd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/z4;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/nd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x4;->a:Lcom/google/android/gms/internal/recaptcha/z4;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/x4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/x4;->c:Lcom/google/android/gms/internal/recaptcha/nd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x4;->a:Lcom/google/android/gms/internal/recaptcha/z4;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/x4;->c:Lcom/google/android/gms/internal/recaptcha/nd;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/z4;->h(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
