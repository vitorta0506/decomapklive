.class public final Lcom/google/android/gms/internal/recaptcha/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/j1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/b2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/b2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/b2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/i1;->a:Lcom/google/android/gms/internal/recaptcha/b2;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/recaptcha/ji;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/fj;->c(J)Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v0

    return-object v0
.end method
