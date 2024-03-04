.class public final Lcom/google/android/gms/internal/recaptcha/f8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/n7;

.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/recaptcha/c8;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/recaptcha/c8;ZLcom/google/android/gms/internal/recaptcha/n7;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f8;->c:Lcom/google/android/gms/internal/recaptcha/c8;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/recaptcha/f8;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/f8;->a:Lcom/google/android/gms/internal/recaptcha/n7;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/recaptcha/f8;)Lcom/google/android/gms/internal/recaptcha/n7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/f8;->a:Lcom/google/android/gms/internal/recaptcha/n7;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/f8;
    .locals 7

    const-string p0, "+"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/j7;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/j7;-><init>(C)V

    new-instance p0, Lcom/google/android/gms/internal/recaptcha/f8;

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/c8;

    .line 3
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/recaptcha/c8;-><init>(Lcom/google/android/gms/internal/recaptcha/n7;)V

    sget-object v4, Lcom/google/android/gms/internal/recaptcha/l7;->b:Lcom/google/android/gms/internal/recaptcha/l7;

    const/4 v3, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v1, p0

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/recaptcha/f8;-><init>(Lcom/google/android/gms/internal/recaptcha/c8;ZLcom/google/android/gms/internal/recaptcha/n7;I[B)V

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/recaptcha/f8;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f8;->c:Lcom/google/android/gms/internal/recaptcha/c8;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/b8;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/b8;-><init>(Lcom/google/android/gms/internal/recaptcha/c8;Lcom/google/android/gms/internal/recaptcha/f8;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static synthetic f(Lcom/google/android/gms/internal/recaptcha/f8;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/recaptcha/f8;->b:Z

    return p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/recaptcha/f8;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/recaptcha/f8;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/f8;->c:Lcom/google/android/gms/internal/recaptcha/c8;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/f8;->a:Lcom/google/android/gms/internal/recaptcha/n7;

    const/4 v2, 0x1

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/f8;-><init>(Lcom/google/android/gms/internal/recaptcha/c8;ZLcom/google/android/gms/internal/recaptcha/n7;I[B)V

    return-object v6
.end method

.method public final d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/d8;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/d8;-><init>(Lcom/google/android/gms/internal/recaptcha/f8;Ljava/lang/CharSequence;)V

    return-object v0
.end method
