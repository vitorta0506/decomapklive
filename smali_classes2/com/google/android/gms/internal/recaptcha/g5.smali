.class public final synthetic Lcom/google/android/gms/internal/recaptcha/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/h5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/h5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/g5;->a:Lcom/google/android/gms/internal/recaptcha/h5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/g5;->a:Lcom/google/android/gms/internal/recaptcha/h5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/h5;->a()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
