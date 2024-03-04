.class public Lcom/google/android/gms/internal/recaptcha/t6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/collection/SimpleArrayMap;

.field private b:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/t6;Landroidx/collection/SimpleArrayMap;Lcom/google/android/gms/internal/recaptcha/r6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/t6;->b:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/t6;->a:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/recaptcha/t6;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/t6;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/t6;->b:Z

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already frozen"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/t6;->b:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpanExtras<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/t6;->a:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v3}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/t6;->a:Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, ">"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
