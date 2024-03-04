.class final Leh/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Leh/a;


# direct methods
.method constructor <init>(Leh/a;)V
    .locals 0

    iput-object p1, p0, Leh/a$g;->a:Leh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/a$g;->a:Leh/a;

    invoke-static {v0}, Leh/a;->a(Leh/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/a$g;->a:Leh/a;

    invoke-static {v0}, Leh/a;->r(Leh/a;)V

    .line 3
    invoke-static {}, Leh/a$f;->values()[Leh/a$f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 4
    sget-object v4, Leh/a$f;->a:Leh/a$f;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v4, p0, Leh/a$g;->a:Leh/a;

    invoke-static {v4}, Leh/a;->d(Leh/a;)Leh/p2$k;

    move-result-object v4

    iget-object v5, p0, Leh/a$g;->a:Leh/a;

    invoke-static {v5}, Leh/a;->s(Leh/a;)Leh/j0$d;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Leh/p2$k;->e(Leh/j0$d;Leh/a$f;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v5, p0, Leh/a$g;->a:Leh/a;

    invoke-static {v5}, Leh/a;->m(Leh/a;)Leh/a$c;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Leh/a$c;->i(Leh/a$f;Ljava/util/Collection;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Leh/a$g;->a:Leh/a;

    invoke-static {v0}, Leh/a;->e(Leh/a;)Leh/p2$n;

    move-result-object v0

    iget-object v1, p0, Leh/a$g;->a:Leh/a;

    invoke-static {v1}, Leh/a;->s(Leh/a;)Leh/j0$d;

    move-result-object v1

    invoke-interface {v0, v1}, Leh/p2$n;->g(Leh/j0$d;)V

    return-void
.end method
