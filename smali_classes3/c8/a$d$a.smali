.class Lc8/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/a$d;->a(Lcom/guochao/faceshow/aaspring/beans/AdsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/a$d;


# direct methods
.method constructor <init>(Lc8/a$d;)V
    .locals 0

    iput-object p1, p0, Lc8/a$d$a;->a:Lc8/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc8/a$d$a;->a:Lc8/a$d;

    iget-object p1, p1, Lc8/a$d;->c:Lc8/a;

    invoke-static {p1}, Lc8/a;->b(Lc8/a;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lc8/a$d$a;->a:Lc8/a$d;

    iget-object p1, p1, Lc8/a$d;->c:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lc8/a$d$a;->a:Lc8/a$d;

    iget-object p1, p1, Lc8/a$d;->c:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    invoke-interface {p1}, Lc8/a$h;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lc8/a$d$a;->a:Lc8/a$d;

    iget-object p1, p1, Lc8/a$d;->c:Lc8/a;

    invoke-static {p1}, Lc8/a;->i(Lc8/a;)V

    :cond_1
    return-void
.end method
