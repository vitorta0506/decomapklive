.class Lsa/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/b;->n(ZLcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/guochao/faceshow/gift/data/AnimFlag;

.field final synthetic d:Lsa/b;


# direct methods
.method constructor <init>(Lsa/b;Landroid/view/View;ZLcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 0

    iput-object p1, p0, Lsa/b$a;->d:Lsa/b;

    iput-object p2, p0, Lsa/b$a;->a:Landroid/view/View;

    iput-boolean p3, p0, Lsa/b$a;->b:Z

    iput-object p4, p0, Lsa/b$a;->c:Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsa/b$a;->d:Lsa/b;

    invoke-static {v0}, Lsa/b;->a(Lsa/b;)Lsa/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsa/b$a;->d:Lsa/b;

    invoke-static {v0}, Lsa/b;->a(Lsa/b;)Lsa/d;

    move-result-object v0

    iget-object v1, p0, Lsa/b$a;->a:Landroid/view/View;

    iget-boolean v2, p0, Lsa/b$a;->b:Z

    invoke-virtual {v0, v1, v2}, Lsa/d;->a(Landroid/view/View;Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lsa/b$a;->d:Lsa/b;

    iget-object v0, v0, Lsa/b;->h:Landroid/os/Handler;

    iget-object v1, p0, Lsa/b$a;->c:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-object v1, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
