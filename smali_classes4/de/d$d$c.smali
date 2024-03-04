.class final Lde/d$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/d$d;->a(Ljava/lang/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Error;

.field final synthetic b:Lde/d$d;


# direct methods
.method constructor <init>(Lde/d$d;Ljava/lang/Error;)V
    .locals 0

    iput-object p1, p0, Lde/d$d$c;->b:Lde/d$d;

    iput-object p2, p0, Lde/d$d$c;->a:Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lde/d$d$c;->b:Lde/d$d;

    iget-object v0, v0, Lde/d$d;->b:Lde/d;

    invoke-static {v0}, Lde/d;->l(Lde/d;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p0, Lde/d$d$c;->b:Lde/d$d;

    iget-object v1, v1, Lde/d$d;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lde/d$d$c;->b:Lde/d$d;

    iget-object v0, v0, Lde/d$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/f;

    .line 3
    invoke-virtual {v1}, Lde/f;->b()I

    move-result v2

    if-gtz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lde/f;->a()V

    .line 5
    iget-object v2, p0, Lde/d$d$c;->b:Lde/d$d;

    iget-object v2, v2, Lde/d$d;->b:Lde/d;

    invoke-static {v2}, Lde/d;->d(Lde/d;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lde/d$d$c;->b:Lde/d$d;

    iget-object v0, v0, Lde/d$d;->b:Lde/d;

    invoke-static {v0}, Lde/d;->j(Lde/d;)V

    return-void
.end method
