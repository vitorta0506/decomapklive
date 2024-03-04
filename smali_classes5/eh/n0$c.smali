.class Leh/n0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/n0;->h(Leh/j0$d;Ljava/lang/String;Ljava/lang/String;)Leh/s1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/j0$d;

.field final synthetic b:Leh/n0;


# direct methods
.method constructor <init>(Leh/n0;Leh/j0$d;)V
    .locals 0

    iput-object p1, p0, Leh/n0$c;->b:Leh/n0;

    iput-object p2, p0, Leh/n0$c;->a:Leh/j0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n0$c;->b:Leh/n0;

    invoke-static {v0}, Leh/n0;->z(Leh/n0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/n0$c;->b:Leh/n0;

    invoke-static {v0}, Leh/n0;->B(Leh/n0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/n0$c;->a:Leh/j0$d;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/r1;

    invoke-virtual {v0}, Leh/r1;->o()V

    .line 3
    iget-object v0, p0, Leh/n0$c;->b:Leh/n0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leh/n0;->A(Leh/n0;Z)Z

    :cond_0
    return-void
.end method
