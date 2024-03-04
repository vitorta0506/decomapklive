.class public final Lv3/q;
.super Lv3/n;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/gms/common/api/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lv3/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv3/q;->c:Lcom/google/android/gms/common/api/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/google/android/gms/common/api/i;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lv3/q;->c:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/c;->i(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lv3/q;->c:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->m()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
