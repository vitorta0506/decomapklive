.class Lsa/c$a$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/c$a;


# direct methods
.method constructor <init>(Lsa/c$a;)V
    .locals 0

    iput-object p1, p0, Lsa/c$a$a;->a:Lsa/c$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsa/c$a$a;->a:Lsa/c$a;

    iget-object v0, v0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsa/c$a$a;->a:Lsa/c$a;

    iget-object v1, v1, Lsa/c$a;->a:Lsa/c;

    invoke-static {v1}, Lsa/c;->j(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lsa/c$a$a;->a:Lsa/c$a;

    iget-object v0, v0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->l(Lsa/c;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lsa/c;->m(Lsa/c;Landroid/view/ViewGroup;Z)V

    return-void
.end method
