.class public final synthetic Lcom/google/android/gms/internal/recaptcha/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/cc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/g4;

.field public final synthetic b:Lcom/google/android/gms/internal/recaptcha/gh;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/g4;Lcom/google/android/gms/internal/recaptcha/gh;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/c4;->a:Lcom/google/android/gms/internal/recaptcha/g4;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/c4;->b:Lcom/google/android/gms/internal/recaptcha/gh;

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/c4;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/c4;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c4;->a:Lcom/google/android/gms/internal/recaptcha/g4;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/c4;->b:Lcom/google/android/gms/internal/recaptcha/gh;

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/c4;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/c4;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/g4;->c(Lcom/google/android/gms/internal/recaptcha/gh;ILjava/util/List;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    return-object v0
.end method
