.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g0()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b0(Z)V

    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->a(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)Lmc/a;

    move-result-object v0

    invoke-virtual {v0}, Lmc/a;->y()V

    :cond_0
    return-void
.end method
