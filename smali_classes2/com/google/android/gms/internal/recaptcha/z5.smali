.class public final synthetic Lcom/google/android/gms/internal/recaptcha/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/e6;

.field public final synthetic b:Lcom/google/android/gms/internal/recaptcha/zd;

.field public final synthetic c:Lcom/google/android/gms/internal/recaptcha/c6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/e6;Lcom/google/android/gms/internal/recaptcha/zd;Lcom/google/android/gms/internal/recaptcha/c6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z5;->a:Lcom/google/android/gms/internal/recaptcha/e6;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/z5;->b:Lcom/google/android/gms/internal/recaptcha/zd;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/z5;->c:Lcom/google/android/gms/internal/recaptcha/c6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z5;->a:Lcom/google/android/gms/internal/recaptcha/e6;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z5;->b:Lcom/google/android/gms/internal/recaptcha/zd;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/z5;->c:Lcom/google/android/gms/internal/recaptcha/c6;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/e6;->f(Lcom/google/android/gms/internal/recaptcha/zd;Lcom/google/android/gms/internal/recaptcha/c6;)V

    return-void
.end method
