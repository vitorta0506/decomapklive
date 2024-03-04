.class Leb/b$b;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Leb/b;


# direct methods
.method constructor <init>(Leb/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leb/b$b;->b:Leb/b;

    iput-object p2, p0, Leb/b$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leb/b$b;->b:Leb/b;

    invoke-virtual {p1}, Leb/b;->A()V

    .line 2
    iget-object p1, p0, Leb/b$b;->b:Leb/b;

    invoke-static {p1}, Leb/b;->i(Leb/b;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Leb/b$b;->a:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Leb/b$b;->b:Leb/b;

    invoke-static {v0}, Leb/b;->i(Leb/b;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/Tools;->addBlackList(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
