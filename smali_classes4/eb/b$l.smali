.class Leb/b$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/b;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leb/b;


# direct methods
.method constructor <init>(Leb/b;)V
    .locals 0

    iput-object p1, p0, Leb/b$l;->a:Leb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Leb/b$l;->a:Leb/b;

    invoke-virtual {p1}, Leb/b;->A()V

    .line 2
    iget-object p1, p0, Leb/b$l;->a:Leb/b;

    const-string v0, ""

    invoke-static {p1, v0}, Leb/b;->s(Leb/b;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Leb/b$l;->a:Leb/b;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1207b7

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Leb/b;->t(Leb/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
