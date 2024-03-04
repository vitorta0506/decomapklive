.class Lcom/guochao/faceshow/views/GitVerticalViewPager$h;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/GitVerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/GitVerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/views/GitVerticalViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/GitVerticalViewPager$h;->a:Lcom/guochao/faceshow/views/GitVerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/views/GitVerticalViewPager;Lcom/guochao/faceshow/views/GitVerticalViewPager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/GitVerticalViewPager$h;-><init>(Lcom/guochao/faceshow/views/GitVerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/GitVerticalViewPager$h;->a:Lcom/guochao/faceshow/views/GitVerticalViewPager;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/GitVerticalViewPager;->l()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/GitVerticalViewPager$h;->a:Lcom/guochao/faceshow/views/GitVerticalViewPager;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/GitVerticalViewPager;->l()V

    return-void
.end method
