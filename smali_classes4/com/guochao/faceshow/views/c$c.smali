.class Lcom/guochao/faceshow/views/c$c;
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
.field final synthetic a:Lcom/guochao/faceshow/views/c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c$c;->a:Lcom/guochao/faceshow/views/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/wheelview/WheelView;II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$c;->a:Lcom/guochao/faceshow/views/c;

    invoke-static {p2}, Lcom/guochao/faceshow/views/c;->f(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/views/c$e;->e(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$c;->a:Lcom/guochao/faceshow/views/c;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/views/c;->l(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$c;->a:Lcom/guochao/faceshow/views/c;

    invoke-static {p2}, Lcom/guochao/faceshow/views/c;->f(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/guochao/faceshow/views/c;->t(Ljava/lang/String;Lcom/guochao/faceshow/views/c$e;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/views/c$c;->a:Lcom/guochao/faceshow/views/c;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/views/c;->s(Ljava/lang/String;)I

    return-void
.end method
