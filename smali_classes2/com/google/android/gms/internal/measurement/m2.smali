.class final Lcom/google/android/gms/internal/measurement/m2;
.super Lcom/google/android/gms/internal/measurement/j1;
.source "SourceFile"


# instance fields
.field private final a:Lp4/t;


# direct methods
.method constructor <init>(Lp4/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/j1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m2;->a:Lp4/t;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m2;->a:Lp4/t;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m2;->a:Lp4/t;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lp4/t;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
