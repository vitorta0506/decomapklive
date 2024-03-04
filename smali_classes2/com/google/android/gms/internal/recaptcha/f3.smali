.class public final Lcom/google/android/gms/internal/recaptcha/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f3;->a:Ljava/io/Closeable;

    return-void
.end method

.method public static a(Ljava/io/Closeable;)Lcom/google/android/gms/internal/recaptcha/f3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/recaptcha/f3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/f3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/f3;-><init>(Ljava/io/Closeable;)V

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/io/Closeable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f3;->a:Ljava/io/Closeable;

    return-object v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f3;->a:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method
