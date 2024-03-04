.class Le8/a$a;
.super Lcom/guochao/faceshow/views/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le8/a;


# direct methods
.method constructor <init>(Le8/a;JJ)V
    .locals 0

    iput-object p1, p0, Le8/a$a;->a:Le8/a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/guochao/faceshow/views/g;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Le8/a$a;->a:Le8/a;

    invoke-static {v0}, Le8/a;->a(Le8/a;)Le8/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le8/a$a;->a:Le8/a;

    invoke-static {v0}, Le8/a;->a(Le8/a;)Le8/b$b;

    move-result-object v0

    invoke-interface {v0}, Le8/b$b;->onFinish()V

    .line 3
    :cond_0
    iget-object v0, p0, Le8/a$a;->a:Le8/a;

    invoke-static {v0}, Le8/a;->b(Le8/a;)Lcom/guochao/faceshow/views/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le8/a$a;->a:Le8/a;

    invoke-static {v0}, Le8/a;->b(Le8/a;)Lcom/guochao/faceshow/views/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le8/a$a;->a:Le8/a;

    invoke-static {v0}, Le8/a;->a(Le8/a;)Le8/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le8/a$a;->a:Le8/a;

    invoke-static {v0}, Le8/a;->a(Le8/a;)Le8/b$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le8/b$b;->a(J)V

    :cond_0
    return-void
.end method
