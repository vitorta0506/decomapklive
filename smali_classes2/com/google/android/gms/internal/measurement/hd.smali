.class public final Lcom/google/android/gms/internal/measurement/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/c7;


# static fields
.field private static final b:Lcom/google/android/gms/internal/measurement/hd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/c7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/hd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/hd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hd;->b:Lcom/google/android/gms/internal/measurement/hd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/jd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jd;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g7;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g7;->a(Lcom/google/android/gms/internal/measurement/c7;)Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/c7;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->b:Lcom/google/android/gms/internal/measurement/hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hd;->a()Lcom/google/android/gms/internal/measurement/id;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/id;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/id;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/c7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/c7;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/id;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/hd;->a()Lcom/google/android/gms/internal/measurement/id;

    move-result-object v0

    return-object v0
.end method
