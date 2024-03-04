.class Lcom/guochao/faceshow/views/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/guochao/faceshow/views/c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    iput-object p2, p0, Lcom/guochao/faceshow/views/c$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/wheelview/WheelView;II)V
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p2}, Lcom/guochao/faceshow/views/c;->a(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/views/c$e;->e(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/views/c;->b(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p2}, Lcom/guochao/faceshow/views/c;->a(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/guochao/faceshow/views/c;->t(Ljava/lang/String;Lcom/guochao/faceshow/views/c$e;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/guochao/faceshow/views/c;->d(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p1}, Lcom/guochao/faceshow/views/c;->c(Lcom/guochao/faceshow/views/c;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentYear=="

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p1}, Lcom/guochao/faceshow/views/c;->c(Lcom/guochao/faceshow/views/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/c;->u(Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p1}, Lcom/guochao/faceshow/views/c;->e(Lcom/guochao/faceshow/views/c;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/c;->p(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    new-instance p2, Lcom/guochao/faceshow/views/c$e;

    iget-object v2, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    iget-object v3, p0, Lcom/guochao/faceshow/views/c$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/guochao/faceshow/views/c;->h(Lcom/guochao/faceshow/views/c;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object p3, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p3}, Lcom/guochao/faceshow/views/c;->i(Lcom/guochao/faceshow/views/c;)I

    move-result v6

    iget-object p3, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p3}, Lcom/guochao/faceshow/views/c;->j(Lcom/guochao/faceshow/views/c;)I

    move-result v7

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/views/c$e;-><init>(Lcom/guochao/faceshow/views/c;Landroid/content/Context;Ljava/util/ArrayList;III)V

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/c;->g(Lcom/guochao/faceshow/views/c;Lcom/guochao/faceshow/views/c$e;)Lcom/guochao/faceshow/views/c$e;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p1}, Lcom/guochao/faceshow/views/c;->k(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/wheelview/WheelView;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setVisibleItems(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p1}, Lcom/guochao/faceshow/views/c;->k(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/wheelview/WheelView;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p2}, Lcom/guochao/faceshow/views/c;->f(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setViewAdapter(Lmb/c;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-static {p1}, Lcom/guochao/faceshow/views/c;->k(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    const-string p2, "1"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/c;->l(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/views/c$a;->b:Lcom/guochao/faceshow/views/c;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/c;->s(Ljava/lang/String;)I

    return-void
.end method
