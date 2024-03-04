.class Lmc/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmc/e;


# direct methods
.method constructor <init>(Lmc/e;)V
    .locals 0

    iput-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmc/e$a;->a:Lmc/e;

    iget-object v0, v0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v0

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1, v2}, Lmc/e;->h(Lmc/e;I)I

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    const/4 v3, -0x1

    invoke-static {p1, v3}, Lmc/e;->h(Lmc/e;I)I

    .line 5
    :cond_2
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1}, Lmc/e;->i(Lmc/e;)I

    .line 6
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    iget-object p1, p1, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object p1

    .line 7
    iget-object v3, p0, Lmc/e$a;->a:Lmc/e;

    iget-object v3, v3, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    iget-object v3, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {v3}, Lmc/e;->j(Lmc/e;)F

    move-result v3

    const v4, 0x453b8000    # 3000.0f

    const/4 v5, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 9
    invoke-static {p1, v0}, Lnc/b;->h(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    iget-object p1, p1, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p1

    iget-object v0, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {v0}, Lmc/e;->j(Lmc/e;)F

    move-result v0

    iget-object v3, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {v3}, Lmc/e;->g(Lmc/e;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lmc/a;->F(FI)V

    .line 11
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1, v5}, Lmc/e;->k(Lmc/e;F)F

    .line 12
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1, v2}, Lmc/e;->h(Lmc/e;I)I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v3, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {v3}, Lmc/e;->j(Lmc/e;)F

    move-result v3

    const v4, -0x3ac48000    # -3000.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 14
    invoke-static {p1, v0}, Lnc/b;->g(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    iget-object p1, p1, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p1

    iget-object v0, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {v0}, Lmc/e;->j(Lmc/e;)F

    move-result v0

    iget-object v3, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {v3}, Lmc/e;->g(Lmc/e;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lmc/a;->E(FI)V

    .line 16
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1, v5}, Lmc/e;->k(Lmc/e;F)F

    .line 17
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1, v2}, Lmc/e;->h(Lmc/e;I)I

    .line 18
    :cond_4
    :goto_0
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1}, Lmc/e;->g(Lmc/e;)I

    move-result p1

    if-ge p1, v2, :cond_5

    .line 19
    iget-object p1, p0, Lmc/e$a;->a:Lmc/e;

    invoke-static {p1}, Lmc/e;->l(Lmc/e;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    return-void
.end method
