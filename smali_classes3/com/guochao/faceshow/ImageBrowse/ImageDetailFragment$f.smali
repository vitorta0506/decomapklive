.class Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->e2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    .line 2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
