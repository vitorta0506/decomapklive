.class public abstract Lio/reactivex/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lil/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lil/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/reactivex/e;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lio/reactivex/e;->a:I

    return v0
.end method


# virtual methods
.method public final a(Lil/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/reactivex/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/reactivex/f;

    invoke-virtual {p0, p1}, Lio/reactivex/e;->g(Lio/reactivex/f;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/subscribers/StrictSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/subscribers/StrictSubscriber;-><init>(Lil/b;)V

    invoke-virtual {p0, v0}, Lio/reactivex/e;->g(Lio/reactivex/f;)V

    :goto_0
    return-void
.end method

.method public final c()Lio/reactivex/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/e<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/e;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/e;->d(IZZ)Lio/reactivex/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(IZZ)Lio/reactivex/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lio/reactivex/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "capacity"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/e;

    sget-object v6, Lxh/a;->c:Lvh/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/e;-><init>(Lio/reactivex/e;IZZLvh/a;)V

    invoke-static {v0}, Lci/a;->m(Lio/reactivex/e;)Lio/reactivex/e;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lio/reactivex/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/f;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/f;-><init>(Lio/reactivex/e;)V

    invoke-static {v0}, Lci/a;->m(Lio/reactivex/e;)Lio/reactivex/e;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lio/reactivex/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/h;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/h;-><init>(Lio/reactivex/e;)V

    invoke-static {v0}, Lci/a;->m(Lio/reactivex/e;)Lio/reactivex/e;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lio/reactivex/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/f<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lci/a;->v(Lio/reactivex/e;Lil/b;)Lil/b;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/e;->h(Lil/b;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v0

    :catch_0
    move-exception p1

    .line 10
    throw p1
.end method

.method protected abstract h(Lil/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;)V"
        }
    .end annotation
.end method
