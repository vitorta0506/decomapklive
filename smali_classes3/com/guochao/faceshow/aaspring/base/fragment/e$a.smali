.class public Lcom/guochao/faceshow/aaspring/base/fragment/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->a(Lcom/guochao/faceshow/aaspring/base/fragment/e;Z)Z

    .line 3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->b(Lcom/guochao/faceshow/aaspring/base/fragment/e;Z)Z

    .line 4
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->c(Lcom/guochao/faceshow/aaspring/base/fragment/e;Z)Z

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->c:Z

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->d(Lcom/guochao/faceshow/aaspring/base/fragment/e;Z)Z

    return-object v0
.end method

.method public b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a:Z

    return-object p0
.end method

.method public c(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->c:Z

    return-object p0
.end method

.method public d(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d:Z

    return-object p0
.end method

.method public e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b:Z

    return-object p0
.end method
