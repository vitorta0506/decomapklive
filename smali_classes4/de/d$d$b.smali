.class final Lde/d$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/d$d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/d$d;


# direct methods
.method constructor <init>(Lde/d$d;)V
    .locals 0

    iput-object p1, p0, Lde/d$d$b;->a:Lde/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lde/d$d$b;->a:Lde/d$d;

    iget-object v0, v0, Lde/d$d;->b:Lde/d;

    invoke-static {v0}, Lde/d;->l(Lde/d;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p0, Lde/d$d$b;->a:Lde/d$d;

    iget-object v1, v1, Lde/d$d;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lde/d$d$b;->a:Lde/d$d;

    iget-object v0, v0, Lde/d$d;->b:Lde/d;

    invoke-static {v0}, Lde/d;->d(Lde/d;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p0, Lde/d$d$b;->a:Lde/d$d;

    iget-object v1, v1, Lde/d$d;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
