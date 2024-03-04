.class Lcom/guochao/faceshow/views/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c$d;->a:Lcom/guochao/faceshow/views/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/wheelview/WheelView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/c$d;->a:Lcom/guochao/faceshow/views/c;

    invoke-static {v0}, Lcom/guochao/faceshow/views/c;->f(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/c$e;->e(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/c$d;->a:Lcom/guochao/faceshow/views/c;

    invoke-static {v0}, Lcom/guochao/faceshow/views/c;->f(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/views/c;->t(Ljava/lang/String;Lcom/guochao/faceshow/views/c$e;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/c$d;->a:Lcom/guochao/faceshow/views/c;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/views/c;->l(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/c$d;->a:Lcom/guochao/faceshow/views/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/c;->s(Ljava/lang/String;)I

    return-void
.end method

.method public b(Lcom/guochao/faceshow/views/wheelview/WheelView;)V
    .locals 0

    return-void
.end method
