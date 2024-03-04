.class public abstract Lcom/google/android/gms/internal/recaptcha/bg;
.super Lcom/google/android/gms/internal/recaptcha/dg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/recaptcha/bg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/recaptcha/uf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/dg;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/uf;->b()Lcom/google/android/gms/internal/recaptcha/uf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/bg;->zzb:Lcom/google/android/gms/internal/recaptcha/uf;

    return-void
.end method
