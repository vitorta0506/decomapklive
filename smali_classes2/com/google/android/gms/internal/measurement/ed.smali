.class public final Lcom/google/android/gms/internal/measurement/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/c7;


# static fields
.field private static final b:Lcom/google/android/gms/internal/measurement/ed;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/c7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ed;->b:Lcom/google/android/gms/internal/measurement/ed;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/gd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/gd;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g7;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g7;->a(Lcom/google/android/gms/internal/measurement/c7;)Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ed;->a:Lcom/google/android/gms/internal/measurement/c7;

    return-void
.end method

.method public static a()D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->b:Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->d()Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fd;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->b:Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->d()Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fd;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->b:Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->d()Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fd;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->b:Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->d()Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fd;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->b:Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->d()Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fd;->l()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final d()Lcom/google/android/gms/internal/measurement/fd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed;->a:Lcom/google/android/gms/internal/measurement/c7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/c7;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fd;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed;->d()Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v0

    return-object v0
.end method
