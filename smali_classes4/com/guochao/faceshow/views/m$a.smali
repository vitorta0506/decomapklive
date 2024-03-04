.class Lcom/guochao/faceshow/views/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/m;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/m;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/m;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/m$a;->a:Lcom/guochao/faceshow/views/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m$a;->a:Lcom/guochao/faceshow/views/m;

    invoke-static {v0}, Lcom/guochao/faceshow/views/m;->a(Lcom/guochao/faceshow/views/m;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/m$a;->a:Lcom/guochao/faceshow/views/m;

    invoke-static {v0}, Lcom/guochao/faceshow/views/m;->a(Lcom/guochao/faceshow/views/m;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
