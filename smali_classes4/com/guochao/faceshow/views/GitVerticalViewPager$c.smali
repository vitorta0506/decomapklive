.class Lcom/guochao/faceshow/views/GitVerticalViewPager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/GitVerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/GitVerticalViewPager;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/GitVerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/GitVerticalViewPager$c;->a:Lcom/guochao/faceshow/views/GitVerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/GitVerticalViewPager$c;->a:Lcom/guochao/faceshow/views/GitVerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/GitVerticalViewPager;->a(Lcom/guochao/faceshow/views/GitVerticalViewPager;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/GitVerticalViewPager$c;->a:Lcom/guochao/faceshow/views/GitVerticalViewPager;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/GitVerticalViewPager;->E()V

    return-void
.end method
