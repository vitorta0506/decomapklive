.class public final synthetic Lcom/google/android/gms/internal/recaptcha/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/g4;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/g4;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/e4;->a:Lcom/google/android/gms/internal/recaptcha/g4;

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/e4;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/e4;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e4;->a:Lcom/google/android/gms/internal/recaptcha/g4;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/e4;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/e4;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/g4;->e(ILjava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
