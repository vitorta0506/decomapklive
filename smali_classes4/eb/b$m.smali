.class Leb/b$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/b;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leb/b;


# direct methods
.method constructor <init>(Leb/b;)V
    .locals 0

    iput-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-virtual {p1}, Leb/b;->A()V

    .line 2
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {p1}, Leb/b;->u(Leb/b;)Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {p1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v0}, Leb/b;->v(Leb/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v1}, Leb/b;->d(Leb/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v2}, Leb/b;->e(Leb/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {p1}, Leb/b;->f(Leb/b;)Lcom/tencent/rtmp/TXLivePlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {p1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v0}, Leb/b;->v(Leb/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v1}, Leb/b;->d(Leb/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v2}, Leb/b;->e(Leb/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {p1}, Leb/b;->g(Leb/b;)Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    invoke-static {p1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v0}, Leb/b;->v(Leb/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v2}, Leb/b;->d(Leb/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leb/b$m;->a:Leb/b;

    invoke-static {v2}, Leb/b;->e(Leb/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Leb/b$m;->a:Leb/b;

    const-string/jumbo v0, "\u4f20\u5165\u7684player\u4e3anull,\u65e0\u6cd5\u622a\u5c4f,\u4e3e\u62a5\u9875\u9762\u5f39\u51fa\u906d\u5230\u62e6\u622a"

    invoke-static {p1, v0}, Leb/b;->h(Leb/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
