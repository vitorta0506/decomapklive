.class public final Lcom/google/android/gms/internal/recaptcha/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/gh;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/dc<",
        "Lcom/google/android/gms/internal/recaptcha/a4<",
        "TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/b4<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/b4<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/g4;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/g4;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static b(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/g4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            ">(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/b4<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/g4<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/g4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/g4;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/a4;

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/g4;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/g4;->a:Ljava/util/List;

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/zzkj;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzq(I)Lcom/google/android/gms/internal/recaptcha/k9;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/b4;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/recaptcha/b4;->D()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/recaptcha/f4;

    .line 6
    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/recaptcha/f4;-><init>(Lcom/google/android/gms/internal/recaptcha/g4;Ljava/util/List;I)V

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 9
    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/a4;->a(Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/e4;

    .line 10
    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/recaptcha/e4;-><init>(Lcom/google/android/gms/internal/recaptcha/g4;ILjava/util/List;)V

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 13
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lcom/google/android/gms/internal/recaptcha/gh;ILjava/util/List;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 2
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/g4;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/b4;

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/d4;

    .line 4
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/recaptcha/d4;-><init>(Lcom/google/android/gms/internal/recaptcha/b4;)V

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final synthetic d(Ljava/util/List;ILcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/bd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/c4;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/google/android/gms/internal/recaptcha/c4;-><init>(Lcom/google/android/gms/internal/recaptcha/g4;Lcom/google/android/gms/internal/recaptcha/gh;ILjava/util/List;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->b(Lcom/google/android/gms/internal/recaptcha/cc;)Lcom/google/android/gms/internal/recaptcha/cc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/g4;->b:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/bd;->b(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(ILjava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p3, Ljava/util/ArrayList;

    .line 1
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/g4;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/b4;

    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/b4;->zza()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/internal/recaptcha/dd;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/bd;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/fc;->a(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/bd;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
