.class public abstract Lm5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/k$a;
    }
.end annotation


# static fields
.field static final a:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lm5/k;->a:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lm5/k$a;
    .locals 3

    .line 1
    new-instance v0, Lm5/a$b;

    invoke-direct {v0}, Lm5/a$b;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lm5/a$b;->c(I)Lm5/k$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lm5/k$a;->f(I)Lm5/k$a;

    move-result-object v0

    const/16 v1, 0xc8

    .line 4
    invoke-virtual {v0, v1}, Lm5/k$a;->d(I)Lm5/k$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lm5/k$a;->g(I)Lm5/k$a;

    move-result-object v0

    const v2, 0x7fffffff

    .line 6
    invoke-virtual {v0, v2}, Lm5/k$a;->e(I)Lm5/k$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lm5/k$a;->h(Z)Lm5/k$a;

    move-result-object v0

    return-object v0
.end method

.method public static i(I)Lm5/k;
    .locals 2

    .line 1
    invoke-static {}, Lm5/k;->a()Lm5/k$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lm5/k$a;->c(I)Lm5/k$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lm5/k$a;->g(I)Lm5/k$a;

    move-result-object v0

    const v1, 0x7fffffff

    .line 4
    invoke-virtual {v0, v1}, Lm5/k$a;->e(I)Lm5/k$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lm5/k$a;->f(I)Lm5/k$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lm5/k$a;->d(I)Lm5/k$a;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lm5/k$a;->b()Lm5/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
.end method

.method h()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm5/k;->e()I

    move-result v0

    invoke-virtual {p0}, Lm5/k;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lm5/k;->f()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lm5/k;->d()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
