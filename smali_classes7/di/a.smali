.class public final Ldi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldi/a$b;,
        Ldi/a$h;,
        Ldi/a$f;,
        Ldi/a$c;,
        Ldi/a$e;,
        Ldi/a$d;,
        Ldi/a$a;,
        Ldi/a$g;
    }
.end annotation


# static fields
.field static final a:Lio/reactivex/s;

.field static final b:Lio/reactivex/s;

.field static final c:Lio/reactivex/s;

.field static final d:Lio/reactivex/s;

.field static final e:Lio/reactivex/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldi/a$h;

    invoke-direct {v0}, Ldi/a$h;-><init>()V

    invoke-static {v0}, Lci/a;->h(Ljava/util/concurrent/Callable;)Lio/reactivex/s;

    move-result-object v0

    sput-object v0, Ldi/a;->a:Lio/reactivex/s;

    .line 2
    new-instance v0, Ldi/a$b;

    invoke-direct {v0}, Ldi/a$b;-><init>()V

    invoke-static {v0}, Lci/a;->e(Ljava/util/concurrent/Callable;)Lio/reactivex/s;

    move-result-object v0

    sput-object v0, Ldi/a;->b:Lio/reactivex/s;

    .line 3
    new-instance v0, Ldi/a$c;

    invoke-direct {v0}, Ldi/a$c;-><init>()V

    invoke-static {v0}, Lci/a;->f(Ljava/util/concurrent/Callable;)Lio/reactivex/s;

    move-result-object v0

    sput-object v0, Ldi/a;->c:Lio/reactivex/s;

    .line 4
    invoke-static {}, Lio/reactivex/internal/schedulers/j;->g()Lio/reactivex/internal/schedulers/j;

    move-result-object v0

    sput-object v0, Ldi/a;->d:Lio/reactivex/s;

    .line 5
    new-instance v0, Ldi/a$f;

    invoke-direct {v0}, Ldi/a$f;-><init>()V

    invoke-static {v0}, Lci/a;->g(Ljava/util/concurrent/Callable;)Lio/reactivex/s;

    move-result-object v0

    sput-object v0, Ldi/a;->e:Lio/reactivex/s;

    return-void
.end method

.method public static a()Lio/reactivex/s;
    .locals 1

    sget-object v0, Ldi/a;->b:Lio/reactivex/s;

    invoke-static {v0}, Lci/a;->r(Lio/reactivex/s;)Lio/reactivex/s;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lio/reactivex/s;
    .locals 1

    sget-object v0, Ldi/a;->c:Lio/reactivex/s;

    invoke-static {v0}, Lci/a;->t(Lio/reactivex/s;)Lio/reactivex/s;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lio/reactivex/s;
    .locals 1

    sget-object v0, Ldi/a;->d:Lio/reactivex/s;

    return-object v0
.end method
