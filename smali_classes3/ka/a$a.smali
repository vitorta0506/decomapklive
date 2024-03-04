.class Lka/a$a;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lka/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lka/a;


# direct methods
.method constructor <init>(Lka/a;)V
    .locals 0

    iput-object p1, p0, Lka/a$a;->a:Lka/a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Lte/a;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onDenied(Lte/a;)V

    .line 2
    iget-object v0, p0, Lka/a$a;->a:Lka/a;

    iput-object p1, v0, Lka/a;->i:Lte/a;

    .line 3
    invoke-static {v0}, Lka/a;->c(Lka/a;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object p1, p0, Lka/a$a;->a:Lka/a;

    invoke-static {p1}, Lka/a;->d(Lka/a;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lka/a$a;->a:Lka/a;

    iget-object v0, v0, Lka/a;->c:Lka/a$e;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lka/a$e;->d(Lte/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGranted(Lte/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lka/a$a;->a:Lka/a;

    iput-object p1, v0, Lka/a;->i:Lte/a;

    .line 2
    iget-object v0, v0, Lka/a;->c:Lka/a$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lka/a$e;->e(Lte/a;)V

    :cond_0
    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    .line 2
    iget-object v0, p0, Lka/a$a;->a:Lka/a;

    iput-object p1, v0, Lka/a;->i:Lte/a;

    .line 3
    invoke-static {v0}, Lka/a;->a(Lka/a;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object p1, p0, Lka/a$a;->a:Lka/a;

    invoke-static {p1}, Lka/a;->b(Lka/a;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lka/a$a;->a:Lka/a;

    iget-object v0, v0, Lka/a;->c:Lka/a$e;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lka/a$e;->a(Lte/a;)V

    :cond_1
    :goto_0
    return-void
.end method
