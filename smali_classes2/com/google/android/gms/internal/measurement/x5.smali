.class public final synthetic Lcom/google/android/gms/internal/measurement/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/d6;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/z5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/z5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x5;->a:Lcom/google/android/gms/internal/measurement/z5;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x5;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z5;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
