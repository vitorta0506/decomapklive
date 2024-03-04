.class public interface abstract Lcom/google/android/gms/common/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*java.*/com/google/android/gms.*"
    explanation = "Use canonical fakes instead."
    link = "go/gmscore-restrictedinheritance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/e<",
        "Lcom/google/android/gms/common/internal/u;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/internal/TelemetryData;)Lt4/g;
    .param p1    # Lcom/google/android/gms/common/internal/TelemetryData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/TelemetryData;",
            ")",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
