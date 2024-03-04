.class public Lcom/google/android/gms/common/api/internal/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lv3/i;

.field private b:Z

.field private c:[Lcom/google/android/gms/common/Feature;

.field private d:I


# direct methods
.method synthetic constructor <init>(Lv3/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:I

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/common/api/internal/d$a;)Lv3/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Lv3/i;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/internal/d;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/d<",
            "TA;TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Lv3/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/p;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/u;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->c:[Lcom/google/android/gms/common/Feature;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Z

    iget v3, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/d$a;[Lcom/google/android/gms/common/Feature;ZI)V

    return-object v0
.end method

.method public b(Lv3/i;)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 0
    .param p1    # Lv3/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TA;",
            "Lt4/h<",
            "TResultT;>;>;)",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Lv3/i;

    return-object p0
.end method

.method public c(Z)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Z

    return-object p0
.end method

.method public varargs d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 0
    .param p1    # [Lcom/google/android/gms/common/Feature;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/Feature;",
            ")",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->c:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public e(I)Lcom/google/android/gms/common/api/internal/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:I

    return-object p0
.end method
