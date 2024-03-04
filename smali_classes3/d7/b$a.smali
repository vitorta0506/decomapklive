.class Ld7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/b;->init(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld7/b;


# direct methods
.method constructor <init>(Ld7/b;)V
    .locals 0

    iput-object p1, p0, Ld7/b$a;->a:Ld7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ld7/b$a;->a:Ld7/b;

    invoke-static {p1}, Ld7/b;->c(Ld7/b;)Ld7/a;

    move-result-object p1

    invoke-interface {p1}, Ld7/a;->reload()V

    :cond_0
    return-void
.end method
