.class public final synthetic Lcom/google/android/gms/internal/recaptcha/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/g4;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/g4;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f4;->a:Lcom/google/android/gms/internal/recaptcha/g4;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/f4;->b:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/f4;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f4;->a:Lcom/google/android/gms/internal/recaptcha/g4;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/f4;->b:Ljava/util/List;

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/f4;->c:I

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/g4;->d(Ljava/util/List;ILcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
