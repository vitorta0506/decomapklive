.class public final synthetic Lcom/google/android/gms/internal/recaptcha/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/z4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/z4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/u4;->a:Lcom/google/android/gms/internal/recaptcha/z4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u4;->a:Lcom/google/android/gms/internal/recaptcha/z4;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/z4;->i(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
