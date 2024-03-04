.class Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->f(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;->b:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    iput p2, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;->b:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;->b:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    iget v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;->a:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;->b:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->d(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
