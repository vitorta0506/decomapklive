.class public interface abstract Lcom/google/android/gms/recaptcha/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract b(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;)Lt4/g;
    .param p1    # Lcom/google/android/gms/recaptcha/RecaptchaHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/recaptcha/RecaptchaAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
            "Lcom/google/android/gms/recaptcha/RecaptchaAction;",
            ")",
            "Lt4/g<",
            "Lcom/google/android/gms/recaptcha/RecaptchaResultData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Lcom/google/android/gms/recaptcha/RecaptchaHandle;)Lt4/g;
    .param p1    # Lcom/google/android/gms/recaptcha/RecaptchaHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
            ")",
            "Lt4/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/lang/String;)Lt4/g;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lt4/g<",
            "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
            ">;"
        }
    .end annotation
.end method
