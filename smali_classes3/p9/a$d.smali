.class Lp9/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/a;->y(Landroid/app/Activity;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lp9/a;


# direct methods
.method constructor <init>(Lp9/a;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp9/a$d;->d:Lp9/a;

    iput-object p2, p0, Lp9/a$d;->a:Landroid/app/Activity;

    iput p3, p0, Lp9/a$d;->b:I

    iput-object p4, p0, Lp9/a$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lp9/a$d;->a:Landroid/app/Activity;

    iget p2, p0, Lp9/a$d;->b:I

    iget-object v0, p0, Lp9/a$d;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lp9/a$d;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
