.class Lf8/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/h;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf8/h;


# direct methods
.method constructor <init>(Lf8/h;)V
    .locals 0

    iput-object p1, p0, Lf8/h$e;->a:Lf8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf8/h$e;->a:Lf8/h;

    invoke-static {v0}, Lf8/h;->j(Lf8/h;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lf8/h$e;->a:Lf8/h;

    invoke-static {v0}, Lf8/h;->k(Lf8/h;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf8/h$e;->a:Lf8/h;

    invoke-static {v0}, Lf8/h;->l(Lf8/h;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%s s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf8/h$e;->a:Lf8/h;

    invoke-static {v0}, Lf8/h;->j(Lf8/h;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lf8/h$e;->a:Lf8/h;

    invoke-static {v0}, Lf8/h;->k(Lf8/h;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
