.class public final Lcom/google/android/gms/internal/recaptcha/h3;
.super Lcom/google/android/gms/internal/recaptcha/k3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/d3;


# instance fields
.field private final a:Ljava/io/FileOutputStream;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/k3;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/h3;->a:Ljava/io/FileOutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/h3;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h3;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public final zza()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h3;->b:Ljava/io/File;

    return-object v0
.end method
