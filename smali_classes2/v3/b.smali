.class public final Lv3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/api/a;

.field private final c:Lcom/google/android/gms/common/api/a$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/b;->b:Lcom/google/android/gms/common/api/a;

    iput-object p2, p0, Lv3/b;->c:Lcom/google/android/gms/common/api/a$d;

    iput-object p3, p0, Lv3/b;->d:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->c([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lv3/b;->a:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lv3/b;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d;",
            ">(",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Ljava/lang/String;",
            ")",
            "Lv3/b<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lv3/b;

    invoke-direct {v0, p0, p1, p2}, Lv3/b;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv3/b;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lv3/b;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lv3/b;

    iget-object v2, p0, Lv3/b;->b:Lcom/google/android/gms/common/api/a;

    iget-object v3, p1, Lv3/b;->b:Lcom/google/android/gms/common/api/a;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lv3/b;->c:Lcom/google/android/gms/common/api/a$d;

    iget-object v3, p1, Lv3/b;->c:Lcom/google/android/gms/common/api/a$d;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lv3/b;->d:Ljava/lang/String;

    iget-object p1, p1, Lv3/b;->d:Ljava/lang/String;

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lv3/b;->a:I

    return v0
.end method
