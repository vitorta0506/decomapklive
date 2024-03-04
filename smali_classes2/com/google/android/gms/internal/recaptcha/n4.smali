.class public final Lcom/google/android/gms/internal/recaptcha/n4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lcom/google/android/gms/internal/recaptcha/p2;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/p5;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/recaptcha/t5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/t5;->a:Lcom/google/android/gms/internal/recaptcha/t5;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n4;->d:Lcom/google/android/gms/internal/recaptcha/t5;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n4;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/recaptcha/m4;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/recaptcha/m4;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/n4;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/n4;->b:Lcom/google/android/gms/internal/recaptcha/p2;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/n4;->d:Lcom/google/android/gms/internal/recaptcha/t5;

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/n4;->c:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/recaptcha/m4;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/p2;Lcom/google/android/gms/internal/recaptcha/t5;Ljava/util/Map;Lcom/google/android/gms/internal/recaptcha/w5;[B)V

    return-object v7
.end method

.method public final b(Lcom/google/android/gms/internal/recaptcha/p5;)Lcom/google/android/gms/internal/recaptcha/n4;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n4;->c:Ljava/util/HashMap;

    const-string v1, "singleproc"

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "There is already a factory registered for the ID %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/recaptcha/z7;->g(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n4;->c:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/n4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/n4;->a:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/recaptcha/p2;)Lcom/google/android/gms/internal/recaptcha/n4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/n4;->b:Lcom/google/android/gms/internal/recaptcha/p2;

    return-object p0
.end method
