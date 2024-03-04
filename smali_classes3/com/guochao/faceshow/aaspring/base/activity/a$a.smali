.class public Lcom/guochao/faceshow/aaspring/base/activity/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->h:Z

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b:Z

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->c:Z

    const v2, 0x7f06038c

    .line 6
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->d:I

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->e:Z

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f:Z

    .line 9
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->g:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->a(Lcom/guochao/faceshow/aaspring/base/activity/a;Z)Z

    .line 3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->c:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->b(Lcom/guochao/faceshow/aaspring/base/activity/a;Z)Z

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->d:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->c(Lcom/guochao/faceshow/aaspring/base/activity/a;I)I

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->e:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->d(Lcom/guochao/faceshow/aaspring/base/activity/a;Z)Z

    .line 6
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->e(Lcom/guochao/faceshow/aaspring/base/activity/a;Z)Z

    .line 7
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->g:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->f(Lcom/guochao/faceshow/aaspring/base/activity/a;Z)Z

    .line 8
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->h:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->g(Lcom/guochao/faceshow/aaspring/base/activity/a;Z)Z

    return-object v0
.end method

.method public b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->c:Z

    return-object p0
.end method

.method public c(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->g:Z

    return-object p0
.end method

.method public d(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f:Z

    return-object p0
.end method

.method public e(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->e:Z

    return-object p0
.end method

.method public f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->d:I

    return-object p0
.end method
