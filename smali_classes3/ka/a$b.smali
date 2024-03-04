.class Lka/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lka/a;->j()V
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

    iput-object p1, p0, Lka/a$b;->a:Lka/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lka/a$b;->a:Lka/a;

    invoke-virtual {p1}, Lka/a;->k()Lka/a;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lka/a$b;->a:Lka/a;

    iget-object p2, p1, Lka/a;->c:Lka/a$e;

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p1, Lka/a;->i:Lte/a;

    invoke-interface {p2, p1}, Lka/a$e;->d(Lte/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
