.class public final Lcom/google/android/gms/internal/recaptcha/g3;
.super Lcom/google/android/gms/internal/recaptcha/i3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/d3;


# instance fields
.field private final a:Ljava/io/FileInputStream;

.field private final b:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/FileInputStream;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/i3;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/g3;->a:Ljava/io/FileInputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/g3;->b:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/google/android/gms/internal/recaptcha/g3;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/g3;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/recaptcha/g3;-><init>(Ljava/io/FileInputStream;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/g3;->b:Ljava/io/File;

    return-object v0
.end method
