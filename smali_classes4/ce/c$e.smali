.class final Lce/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/c;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lce/c;


# direct methods
.method constructor <init>(Lce/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lce/c$e;->b:Lce/c;

    iput-object p2, p0, Lce/c$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lce/c$e;->b:Lce/c;

    invoke-virtual {v0}, Lce/c;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/a$a;

    .line 2
    iget-object v2, p0, Lce/c$e;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lce/a$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
